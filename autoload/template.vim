let s:save_cpo = &cpo
set cpo&vim

function! template#python()
  set filetype=python
  call setline(1,"def main():")
  call setline(2,"     ")
  call setline(3,"if __name__ == '__main__':")
  call setline(4,"    main()")
endfunction

function! template#shell()
  set filetype=shell
  call setline(1,"#!/bin/sh")
  call setline(2,"")
endfunction

function! template#html()
  set filetype=html
  call setline(1,"<!DOCTYPE html>")
  call setline(2,"<html>")
  call setline(3,"  <head>")
  call setline(4,"    <meta charset=\"utf-8\">")
  call setline(5,"    <title>TITLE</title>")
  call setline(6,"  </head>")
  call setline(7,"  <body>")
  call setline(8,"    <!-- BODY -->")
  call setline(9,"  </body>")
  call setline(10,"</html>")
endfunction

function! template#Dockerfile()
  call setline(1, "FROM <image>")
  call setline(2, "MAINTAINER <name>")
  call setline(3, "WORKDIR /path/to/workdir")
  call setline(4, "RUN <command>")
  call setline(5, "ADD <src>")
  call setline(6, "COPY <src>")
  call setline(7, "USER <name>")
  call setline(8, "ENV <key> <value>")
endfunction

function! template#markdown()
  set filetype=markdown
  call setline(1, "# Header1")
  call setline(2, "###### Header6")
  call setline(3, "Paragraphs and <space><space>")
  call setline(4, "Breaks")
  call setline(5, "* List1")
  call setline(6, "   * List1-1")
  call setline(7, "- [ ] list1")
  call setline(8, "- [x] list2")
  call setline(9, "Horizontal Rules")
  call setline(10, "----")
  call setline(11, "[Title](URL)  ")
  call setline(12, "*Emphasis1*")
  call setline(13, "**Emphasis2**")
  call setline(14, "***Emphasis3***")
  call setline(15, "~~Strikethrough~~")
  call setline(15, "```Code.md")
  call setline(16, "  This is code")
  call setline(17, "```")
  call setline(18, "| Left align | Right align | Center align |")
  call setline(19, "|:-----------|------------:|:------------:|")
  call setline(20, "|text        |text         |text          |")
endfunction

function! template#vimAutoload()
  set filetype=vim
  call setline(1,"\" プラグインの説明")
  call setline(2,"\" Version: 1.0")
  call setline(3,"\" Author: AUTHOR NAME <AUTHOR@MAIL>")
  call setline(4,"\" License: VIM LICENSE")
  call setline(5,"")
  call setline(6,"\" 副作用の回避")
  call setline(7,"let s:save_cpo = &cpo")
  call setline(8,"set cpo&vim")
  call setline(9,"")
  call setline(10,"\" 実際の処理")
  call setline(11,"function! {plugin-name}#sample()")
  call setline(12,"\"  処理内容")
  call setline(13,"endfunction")
  call setline(14,"")
  call setline(15,"let &cpo = s:save_cpo")
  call setline(16,"unlet s:save_cpo")
endfunction

function! template#vimPlugin()
  set filetype=vim
  call setline(1,"\" 行末スペースを削除")
  call setline(2,"\" Version: 1.0")
  call setline(3,"\" Author: AUTHOR NAME <AUTHOR@MAIL>")
  call setline(4,"\" License: VIM LICENSE")
  call setline(5,"")
  call setline(6,"\" 多重ロード防止")
  call setline(7,"\" 慣習的にg:loaded_{plugin-name} とするのが一般的")
  call setline(8,"if exists('g:loaded_{plugin-name}')")
  call setline(9,"  finish")
  call setline(10,"endif")
  call setline(11,"let g:loaded_{plugin-name} = 1")
  call setline(12,"")
  call setline(13,"\" 副作用の回避")
  call setline(14,"let s:save_cpo = &cpo")
  call setline(15,"set cpo&vim")
  call setline(16,"")
  call setline(17,"\" 処理の呼び出し")
  call setline(18,"command! -bar Sample call {plugin-name}#sample()")
  call setline(19,"")
  call setline(20,"let &cpo = s:save_cpo")
  call setline(21,"unlet s:save_cpo")
endfunction

function! template#lambdaPython()
  set filetype=python
  call setline(1,"import json")
  call setline(2,"def lambda_handler(event, context):")
  call setline(3,"    # TODO implement")
  call setline(4,"    return {")
  call setline(5,"        \"statusCode\": 200,")
  call setline(6,"        \"body: json.dumps('Hello from Lambda!')")
  call setline(7,"    }")
endfunction

function! template#lambdaNode()
  set filetype=javascript
  call setline(1,"exports.handler = async (event) => {")
  call setline(2,"    // TODO implement")
  call setline(3,"    const response = {")
  call setline(4,"        statusCode: 200,")
  call setline(5,"        body: JSON.stringify('Hello from Lambda!')")
  call setline(6,"    };")
  call setline(7,"    return response;")
  call setline(8,"};")
endfunction
