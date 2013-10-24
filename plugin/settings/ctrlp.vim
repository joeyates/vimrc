let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v(^|[\/])(\.git|\.hg|cache|tmp|vendor|env)$',
	\ 'file': '\v\.(so|pyc)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }

let g:ctrlp_user_command = 'find %s -type f'

