#import "@preview/touying:0.6.1": *
#import "themes/theme.typ": *
#import "@preview/fontawesome:0.6.0": *
#import "@preview/ctheorems:1.1.3": *
#import "@preview/numbly:0.1.0": numbly
#import "utils.typ": *

// Pdfpc configuration
// typst query --root . ./example.typ --field value --one "<pdfpc-file>" > ./example.pdfpc
#let pdfpc-config = pdfpc.config(
    duration-minutes: 30,
    start-time: datetime(hour: 14, minute: 10, second: 0),
    end-time: datetime(hour: 14, minute: 40, second: 0),
    last-minutes: 5,
    note-font-size: 12,
    disable-markdown: false,
    default-transition: (
      type: "push",
      duration-seconds: 2,
      angle: ltr,
      alignment: "vertical",
      direction: "inward",
    ),
  )

// Theorems configuration by ctheorems
#show: thmrules.with(qed-symbol: $square$)
#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong
)
#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))
#let example = thmplain("example", "Example").with(numbering: none)
#let proof = thmproof("proof", "Proof")

#show: theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.institution,
  config-common(
    // handout: true,
    preamble: pdfpc-config,
    show-bibliography-as-footnote: bibliography(title: none, "bibliography.bib"),
  ),
  config-info(
    title: [Presentation Title],
    subtitle: [Subtitle],
    author: author_list(
      (
        (first_author("Nicolas Farabegoli"), "nicolas.farabegoli@unibo.it"),
        ("Foo Bar", "foo@bar.com"),
      )
    ),
    date: datetime.today().display("[day] [month repr:long] [year]"),
    institution: [University of Bologna],
    logo: align(right)[#image("images/disi.svg", width: 55%)],
  ),
)

#set text(font: "Fira Sans", weight: "light", size: 20pt)
#show math.equation: set text(font: "Fira Math")

#set raw(tab-size: 4)
#show raw: set text(size: 1em)
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: (x: 1em, y: 1em),
  radius: 0.7em,
  width: 100%,
)

#show bibliography: set text(size: 0.75em)
#show footnote.entry: set text(size: 0.75em)

// #set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

// == Outline <touying:hidden>

// #components.adaptive-columns(outline(title: none, indent: 1em))

= Animation

== Simple Animation

#pdfpc.speaker-note("This is a note that only the speaker will see.")

// #set text(font: "Fira Sans", weight: 350, size: 20pt)
// #show math.equation: set text(font: "Fira Math")
// #set strong(delta: 200)
// #set par(justify: true)

// #set quote(block: true)
// #show quote: set align(left)
// #show quote: set pad(x: 2em, y: -0.8em)

// #set raw(tab-size: 4)
// #show raw.where(block: true): block.with(
//   fill: luma(240),
//   inset: 1em,
//   radius: 0.7em,
//   width: 100%,
// )

// #show bibliography: set text(size: 0.8em)
// #show footnote.entry: it => {
//   block(inset: (x: 2em, y: 0.1em))[#text(size: 0.75em)[#it.note.body]]
// }

// #let fcite(clabel) = {
//   footnote(cite(form: "full", label(clabel)))
// }

// #let author = block(inset: 0.1em)[
//   #table(inset: 0.5em, stroke: none, columns: (auto, 4fr),  align: (left, left),
//     [#alert[*Author 1*]], [`author1@mail.com`],
//     [Author 2], [`author2@mail.com`],
//     [Author 3], [`author3@mail.com`],
//   )
//   #place(right, dy:-1.5em)[
//     #figure(image("images/disi.svg", width:40%))
//   ]
// ]

// #title-slide(
//   title: "Slide Title",
//   subtitle: "Subtitle",
//   author: author,
//   // date: datetime.today().display("[day] [month repr:long] [year]"),
// )

// #new-section-slide("Slide section 1")

== Slide
*Bold* and _italic_ text.

This is a citation #cite(label("DBLP:journals/fgcs/FarabegoliPCV24")).
This another citation #cite(label("DBLP:journals/iot/FarabegoliPCV24"))

#alert[This is an alert.]

== Code slide

```kotlin
fun main() {
    println("Hello, world!")
    for (i in 0..9) {
        println(i)
    }
    println("Goodbye, world!")
}
```

== Title and subtitle slide

=== This is a subtitle

#lorem(24)

=== This is a subtitle

#lorem(34)

== FontAwesome icons

=== Icon in a title #fa-java()

#fa-icon("github") -- Github icon \
#fa-icon("github", fill: blue) -- Github icon blue fill

// #slide[
//   #bibliography("bibliography.bib")
// ]
