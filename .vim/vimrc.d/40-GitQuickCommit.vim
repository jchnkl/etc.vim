" requires python-vim and GitPython
" (Arch: python2-vim && python2-gitpython
" https://chris-lamb.co.uk/posts/committing-every-time-you-save-vim

" the currently active git branch for this plugin to execute
let g:git_quick_commit_branch = 'wip'
" how many commit messages should be displayed if there is no input yet?
let g:git_quick_commit_max_completions = 25

" Press C-x to quickly prepend a commit message with 'fixup! '
cnoremap <C-x> <C-b>fixup! <C-e>

augroup GitQuickCommit
    autocmd!
    " autocmd BufWritePost * call GitQuickCommit()
augroup END

" help :command-completion-custom
function! GitQuickCommitComplete(A, L, P)
python << PYEOF
try:
    prepare_completions(arglead=vim.eval('a:A'))
except:
    pass
PYEOF

    let regex = '"^' . a:A . '"'
    return filter(copy(g:git_quick_commit_completions), 'v:val =~ ' . regex)
endfunction

function! GitQuickCommit()

    if ! (exists("g:git_quick_commit_branch") 
                \ || exists("g:git_quick_commit_max_completions"))
        return
    endif

python << PYEOF

import os, vim, git

git_quick_branch = vim.eval('g:git_quick_commit_branch')
max_completions = int(vim.eval('g:git_quick_commit_max_completions'))

# oh lawd, a global variable
current_repo = None

def python_input(message='', default='', completions=''):
    vim.command('call inputsave()')
    vim.command("let user_input = input('" + message \
                + "', '" + default \
                + "', '" + completions + "')")
    vim.command('call inputrestore()')
    return vim.eval('user_input')
### def python_input(message='', default='', completions=''):

def is_in_tree(base_dir, file, root):
    for blob in root.blobs:
        if os.path.join(base_dir, file) == os.path.join(base_dir, blob.name):
            return True
    for tree in root.trees:
        if is_in_tree(os.path.join(base_dir, tree.name), file, tree):
            return True
    return False
### def is_in_tree(base_dir, file, root):

def prepare_completions(arglead=""):
    completions = []

    count = 0
    for commit in current_repo.iter_commits(git_quick_branch):
        if count > max_completions:
            break
        msg = commit.message.split('\n')[0]
        if (msg.startswith(arglead) and
            not (msg.startswith('fixup!') or msg.startswith('squash!'))):
            completions.append('"' + msg + '"')
            count += 1

    # make unique & build vim list
    completions = "[" + (',').join(list(set(completions))) + "]"

    # set g:git_quick_commit_completions for completion function
    vim.command("let g:git_quick_commit_completions = " + completions)
### def make_completions():

def commit():
    global current_repo

    curfile = vim.current.buffer.name

    if not curfile:
        return

    current_repo = git.Repo(curfile, search_parent_directories=True)
    # TODO: return if no changes

    if not is_in_tree(current_repo.working_dir,
                      os.path.basename(curfile),
                      current_repo.active_branch.commit.tree):
        return

    if str(current_repo.active_branch) != git_quick_branch:
        return

    last_msg = current_repo.head.commit.message.split('\n')[0].replace('fixup! ', '')
    msg = python_input('Commit message? ',
                       'fixup! ' + last_msg,
                       'customlist,GitQuickCommitComplete')

    current_repo.git.add(curfile)
    current_repo.git.commit(m=msg)
### def commit():

try:
    commit()
except:
    pass
    # Useful for debugging
    # print "Unexpected error:", sys.exc_info()[0]
    # raise

PYEOF
endfunction

" command! -complete=customlist,GitQuickCommitTest -nargs=1 GitQuickCommitTest echo <args>
" function! GitQuickCommitTest(A, L, P)
"     let g:git_quick_commit_completions = ["foo", "bar", "baz", "fro", "f00"]
"     call GitQuickCommitComplete(a:A, a:L, a:P)
" endfunction
