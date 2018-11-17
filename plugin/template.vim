if exists('g:loaded_template')
  finish
endif
let g:loaded_template = 1

let s:save_cpo = &cpo
set cpo&vim

command! -bar TemplatePython call template#python()
command! -bar TemplateShell call template#shell()
command! -bar TemplateHtml call template#html()
command! -bar TemplateDockerfile call template#Dockerfile()
command! -bar TemplateMarkdown call template#markdown()
command! -bar TemplateVimAutoload call template#vimAutoload()
command! -bar TemplateVimPlugin call template#vimPlugin()
command! -bar TemplateLambdaPython call template#lambdaPython()
command! -bar TemplateLambdaNode call template#lambdaNode()

let &cpo = s:save_cpo
unlet s:save_cpo
