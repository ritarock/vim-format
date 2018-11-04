if exists('g:loaded_format')
  finish
endif
let g:loaded_format = 1

let s:save_cpo = &cpo
set cpo&vim

command! -bar FormatPython call format#python()
command! -bar FormatShell call format#shell()
command! -bar FormatHtml call format#html()
command! -bar FormatDockerfile call format#Dockerfile()
command! -bar FormatMarkdown call format#markdown()
command! -bar FormatVimAutoload call format#vimAutoload()
command! -bar FormatVimPlugin call format#vimPlugin()
command! -bar FormatLambdaPython call format#lambdaPython()
command! -bar FormatLambdaNode call format#lambdaNode()

let &cpo = s:save_cpo
unlet s:save_cpo
