if exists('g:loaded_template')
  finish
endif
let g:loaded_template = 1

let s:save_cpo = &cpo
set cpo&vim

command! -bar TempPython call template#python()
command! -bar TempShell call template#shell()
command! -bar TempHtml call template#html()
command! -bar TempDockerfile call template#Dockerfile()
command! -bar TempMarkdown call template#markdown()
command! -bar TempVimAutoload call template#vimAutoload()
command! -bar TempVimPlugin call template#vimPlugin()
command! -bar TempLambdaPython call template#lambdaPython()
command! -bar TempLambdaNode call template#lambdaNode()

let &cpo = s:save_cpo
unlet s:save_cpo
