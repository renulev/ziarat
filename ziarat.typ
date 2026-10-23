#set document(title: "﵇زيارات الامام الحسين", author: "Mustafa Al-Ameri")
#set text(size: 11pt, lang: "ar", dir: rtl, fill: rgb("#404040"))
#set par(justify: true)
#let page-border = place(top + left, dx: 5mm, dy: 5mm, rect(width: 100% - 10mm, height: 100% - 10mm, fill: none, stroke: 0.7pt + rgb("#C7C3B6")))
#set page(paper: "a6", margin: 0pt, numbering: "١", number-align: center)

#image("front.png", width: 100%, height: 100%, fit: "cover")
#pagebreak()

#pagebreak()

#set page(paper: "a6", margin: (x: 16mm, y: 18mm), foreground: page-border)
#include "contents.typ"

#set page(paper: "a6", margin: 0pt, foreground: rect(fill: none, stroke: none))
#pagebreak(to: "odd")
#pagebreak()

#pagebreak()
#set page(paper: "a6", margin: 0pt)
#image("back.png", width: 100%, height: 100%, fit: "cover")
