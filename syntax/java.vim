if exists("javaBraces")
  syntax clear javaBraces
endif
if exists("javaDocComment")
  syntax clear javaDocComment
endif

syn region javaBraces start="{" end="}" transparent fold
syn region javaDocComment start="/\*\*" end="\*/" keepend contains=javaCommentTitle,@javaHtml,javaDocTags,javaDocSeeTag,javaTodo,@Spell fold
