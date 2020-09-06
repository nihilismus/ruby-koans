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

- `koans/about_constants.rb`

   - Q: Which has precedence: The constant in the lexical scope, or the constant from
        the inheritance hierarchy?
   - A: The constants from the lexical scope.
        [https://valve.github.io/blog/2013/10/26/constant-resolution-in-ruby/]
   - Q: Now which has precedence: The constant in the lexical scope, or the constant
        from the inheritance hierarchy?  Why is it different than the previous answer?
   - A: The constants from the inheritance hierarchy. Because the class was defined
        outside of it's outer class.
        [https://valve.github.io/blog/2013/10/26/constant-resolution-in-ruby/]

- `koans/about_iteration.rb`

   - EC: Describe in your own words what `inject` does.
   - A: Iterates over the array with an *accumulation* and a *function*, applying
        the given function with the *accumulation* and one of the elements of the
	array, the result of the funtion is used as a new *accumulation* for the next
	iteration.
   - Q: In the previous koan, we saw the construct:

         File.open(filename) do |file|
           # code to read 'file'
         end

     Why did we do it that way instead of the following?

         file = File.open(filename)
         # code to read 'file'

   - A: Compactness. `File.open` can take a function wich is going to receive the
        content of the file.

- `koans/about_classes.rb`

   - Q: In `test_args_to_new_must_match_initialize`. Think about it: Why is this so?.
   - A: `new` implies the construction of an instance and `initialize` is the method
        responsible of this behaviour so the number of arguments must match.

