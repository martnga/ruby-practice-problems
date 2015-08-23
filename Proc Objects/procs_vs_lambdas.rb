# proc_math shall return 2 while lambda_math shall return 4
# this illustrates the diminutive property of lambdas.

def proc_math
  Proc.new { return 1 + 1 }.call
  return 2 + 2
end

def lambda_math
  lambda { return 1 + 1 }.call
  return 2 + 2
end


# lambdas have strict argument matching. you get this [ArgumentError: wrong number of arguments (1 for 0)] error
#  if it arguments are not the same number as parameters
