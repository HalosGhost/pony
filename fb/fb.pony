use "collections"

actor Main
  new create (env: Env) =>

  for i in Range(1, 101) do
    env.out.write(fizzbuzz(i))
    env.out.write(" ")
  end; env.out.write("\n")

  fun fizzbuzz (n: U64): String =>
    if     (n % 15) == 0 then "FizzBuzz"
    elseif (n %  5) == 0 then     "Buzz"
    elseif (n %  3) == 0 then "Fizz"
    else                      n.string()
    end
