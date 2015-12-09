" let g:ctrlp_user_command = "find %s -type f | egrep -v '/\.(git|hg|svn)|build|dist|env|node_modules|solr|tmp|vendor/' | egrep -v '\.(pyc|png|exe|jpg|gif|jar|class|swp|swo|log|gitkeep|so|o)$'"

"" When using ctrlp.vim, open files in a new tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|build|_build|deps|dist|env|node_modules|tmp|vendor)$',
  \ 'file': '\v\.(pyc)$',
  \ }
