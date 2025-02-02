```julia
function myfunction(x)
  tolerance = 1e-9 #Define a tolerance level
  if x > tolerance
    return x^2
  elseif x < -tolerance
    return -x
  else
    return 0  # Handle values close to zero
  end
end

println(myfunction(2)) # Output: 4
println(myfunction(-2)) # Output: 2
println(myfunction(0)) # Output: 0
println(myfunction(1e-10)) # Output: 0
println(myfunction(-1e-10)) # Output: 0
```