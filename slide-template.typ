#import "@preview/polylux:0.3.1": *
#import "@preview/fontawesome:0.1.0": *
#import "style/utils.typ": *

#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: [Optional Footnote]
)

#set text(font: "Fira Sans", weight: "light", size: 20pt)
#show math.equation: set text(font: "Fira Math")
#set strong(delta: 100)
#set par(justify: true)

// #show math.equation: set text(font: "Fira Math")
// #set strong(delta: 300)
// #set par(justify: true)

// #set page(paper: "presentation-16-9")
// #show raw: set text(size: 16pt)
// #show figure.caption: set text(size: 16pt)

#title-slide(
  title: "Slide Title",
  subtitle: "Subtitle",
  author: "Author Name",
  date: datetime.today().display("[day] [month repr:long] [year]"),
)


#new-section-slide("Slide section 1")

#slide(title: "Slide")[
  *Bold* and _italic_ text.
  
  This is a citiation @nicolas_farabegoli_2024_10535841.

  #alert[
    This is an alert.
  ]
]

#slide(title: "Code slide")[
  #code(bgcolor: m-extra-light-gray, strokecolor: 1pt + m-dark-teal)[```python
  print("Hello, world!")

  for i in range(10):
      print(i)

  print("Goodbye, world!")
  ```]

  #code(bgcolor: m-extra-light-gray, strokecolor: 1pt + m-dark-teal)[```kotlin
  fun main() {
      println("Hello, world!")

      for (i in 0..9) {
          println(i)
      }
      println("Goodbye, world!")
  }
  ```]
]

#slide[
  #bibliography("bibliography.bib")
]
