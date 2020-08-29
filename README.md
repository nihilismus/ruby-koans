# ruby-koans

[Antonio Hernández Blas](https://nihilipster.dev)'s solutions to
[EdgeCase's ruby_koans](https://github.com/edgecase/ruby_koans)

## Answers & Notes

- `koans/about_hashes.rb`

   - Q: Why might you want to use `#fetch` instead of `#[]` when accessing hash keys?
   - A: To have better control over the non-existance of a key in the hash.
        [https://stackoverflow.com/a/16569515]

   - Q: Why was `"expected"` broken out into a variable rather than used as a literal?
   - A: It would end in `"syntax error"` since it would be seen as a *block of code*.

- `koans/about_strings.rb`

   - Q: Ruby programmers tend to favor the shovel operator (`<<`) over the plus equals
        operator (`+=`) when building up strings.  Why?
   - A: Performance. It reduces the use of memory to build the string.

- `koans/about_symbols.rb`

   - Q: Why do we convert the list of symbols to strings and then compare against the
        string value rather than against symbols?
   - A: Because passing a symbol as argument to `include?` would create this new symbol
        in `Symbol`. [https://stackoverflow.com/a/4686157]

   - Q: Why is it not a good idea to dynamically create a lot of symbols?
   - A: Performance. The conversion-creation of a single symbol implies strings and
        so the use of memory increases.

- `koans/about_regular_expressions.rb`

   - Q: When would `*` fail to match?
   - A: When the pattern is at the end of the string:

         > "xxx"[/x*/]
         "xxx"
         > "xxx12345"[/x*/]
         "xxx"
         > "12345"[/x*/]
         ""
         > "12345xxx"[/x*/]
         ""

   - Q: We say that the repetition operators above are "greedy". Why?
   - A: Because they operate over the hole string in one pass, without tracking
        repetition of matching patterns.
