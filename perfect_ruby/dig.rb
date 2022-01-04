hash = {
  alice: {books: { wonder: "1999p" }},
  janle: {}
}

pp hash.dig(:alice, :books, :wonder)