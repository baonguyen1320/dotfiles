" -------------> Manual create this file <--------------
" ~/.vimrc

" === General Settings ===
set nocompatible        " Không dùng chế độ tương thích với vi
set number              " Hiển thị số dòng
set relativenumber      " Hiển thị số dòng tương đối
set showcmd             " Hiển thị lệnh đang gõ
set clipboard=unnamed   " Dùng clipboard hệ thống (copy/paste được với macOS)

" === Indentation ===
set tabstop=2           " Tab = 2 spaces
set shiftwidth=2        " Auto indent = 2 spaces
set expandtab           " Dùng spaces thay vì tab thật
set autoindent          " Tự indent theo dòng trước
set smartindent         " Thông minh khi indent
set smarttab            " Tab = space thông minh

" === Search ===
set ignorecase          " Không phân biệt hoa/thường khi search
set smartcase           " Nếu có chữ hoa thì search phân biệt luôn
set incsearch           " Search khi đang gõ
set hlsearch            " Highlight kết quả search

" === UI/UX ===
syntax on               " Bật syntax highlight
set background=dark     " Mặc định theme nền tối
set wrap                " Cho phép xuống dòng khi hết dòng
set scrolloff=5         " Cuộn giữ lại 5 dòng phía trên/dưới

" === Key mappings ===
nmap J 10j
nmap K 10k

imap jj <Esc> 
set timeoutlen=300 

" === Ruby/Rails specific ===
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead Gemfile,Rakefile,*.rake,*.gemspec,*.ru set filetype=ruby
