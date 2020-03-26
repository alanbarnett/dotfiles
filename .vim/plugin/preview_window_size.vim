" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    preview_window_size.vim                            :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: alan <alanbarnett328@gmail.com>            +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2019/05/26 04:53:23 by alan              #+#    #+#              "
"    Updated: 2020/01/10 21:27:41 by alan             ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

" This plugin sets the preview window height to be exactly one line longer than
" twice your scroll offset. This means that your cursor will always be centered
" when scrolling in a preview window. I could just set a standard preview
" window size and then make the scroll offset 99 in that window, but I didn't
" think about that when I made this.
" I originally made this because if your preview window comes in at exactly
" double your scroll offset, then scrolling down is no problem but scrolling up
" is super stuttery.

let s:preview_max = 18
let s:preview_min = 12

let s:preview_size = (&scrolloff * 2) + 1
if s:preview_size > s:preview_max
	let s:preview_size = s:preview_max
elseif s:preview_size < s:preview_min
	let s:preview_size = s:preview_min
endif

let &previewheight = s:preview_size
