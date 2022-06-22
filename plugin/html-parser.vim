if exists('g:loaded_html_parser')
  finish
endif

let g:loaded_html_parser = 1

" Test function
function! EchoHello()
  echo "Hello World"
endfunction

call EchoHello()

" Get the URL from user input
let url = input('Enter a URL: ')

" Get the HTML from the URL using the curl command
let html = system('curl -s ' . url)

" Create new file with the HTML
call append('html.html', html)

