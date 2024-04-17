#let mla(
  title: none, 
  author: none,
  header: none,
  instructor: none,
  class: none,
  date: none,
  doc
) = {
  let SPACING = 1.5em
  set text(
    font: "Times New Roman",
    size: 12pt
  )

  set par(
    hanging-indent: -0.5in,
    justify: false,
    leading: SPACING,
  )
  show par: set block(below: SPACING)
  
  set page(
    paper: "us-letter",
    margin: (
      left: 1.5in,
      rest: 1in,
    ),
    header: align(right, context {
      header; [ ]; counter(page).display()
    })
  )

  set heading(numbering: "1.")
  show heading: it => [
    // #set align(center)
    #set text(
      weight: "regular",
      font: "Times New Roman", 
      size: 12pt,
    )
    #if it.depth == 1 {
      h(-0.5in) 
      strong(counter(heading).display()) 
      [ ]
      strong(it.body)
    } else {
      h(-0.5in) 
      emph(counter(heading).display()) 
      [ ]
      emph(it.body)
    }
    
  ]

  h(-0.5in); author; linebreak()
  instructor; linebreak()
  class; linebreak()
  date; linebreak()
  
  {
    set align(center)
    set text(
      weight: "regular",
      font: "Times New Roman", 
      size: 12pt,
    )
    title
  }
  doc
}

