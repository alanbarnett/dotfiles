" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    preview_window_size.vim                            :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: alan <alanbarnett328@gmail.com>            +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2019/05/26 04:53:23 by alan              #+#    #+#              "
"    Updated: 2019/05/26 04:58:58 by alan             ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

let s:preview_max = 18
let s:preview_min = 12

let s:preview_size = (&scrolloff * 2) + 1
if s:preview_size > s:preview_max
	let s:preview_size = s:preview_max
elseif s:preview_size < s:preview_min
	let s:preview_size = s:preview_min
endif

let &previewheight = s:preview_size
