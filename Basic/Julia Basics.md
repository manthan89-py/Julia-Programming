<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Julia_Programming_Language_Logo.svg/1280px-Julia_Programming_Language_Logo.svg.png"></img>

<h1 style="color:green" >Julia Programming Basics</h1>

<h3>
 <a href="https://docs.julialang.org/en/v1/" >Julia Documentation</a>
</h3>

<h3 style="color:red"> Version : 1.6.1 </h3> 

<h3 style="color:gray">Created By Manthan Bhikadiya</h3>

### Reference Video Tutorial by Abhishek Agrawal :
* https://www.youtube.com/watch?v=lwj-1mclq0U

<h3 style="color:#e84545">Topics :</h3>

* Hello World
* Variable Operations
* typeof function
* Opearator Precedence
* Comments
* Variable define rules
* Arrays
* Ranges
* Tuples
* Dictionary
* Set
* Working with Date and Time
* Conditional Statements
* Loops
* Comprehensions
* Find Prime Numbers between 1 to 100
* String Manipulation

<h2 style="color:#46b5d1"> Hello World </h2>


```julia
# In Julia we have two print function

println("Hello World")
print("Hello World")
```

    Hello World
    Hello World


```julia
# difference : Whatever statement after println() prints in new line
# where as in print() prints in same line. we have to specify newline tag ("\n")

println("Hello ")
println("World")
print("Hello ")
print("World \n")
print("Julia")
```

    Hello 
    World
    Hello World 
    Julia

<h2 style="color:#a32f80"> Variable Operations </h2>


```julia
loan_amount = 1000 ## int type
interest_area = 0.015 ## float type
tenture = 5
```




    5




```julia
loan_amount* tenture # arithmetics opeartation
```




    5000




```julia
str = "My First Program" ## string type variable
print(str)
```

    My First Program


```julia
review = " => The best movie in the world"
movie_name = "Avengers : Endgame "

## String concatenation : 2 Ways
println(movie_name*review)  # using * operator
println(string(movie_name,review)) # string() built in function

println(movie_name^2) # print two times movie name


```

    Avengers : Endgame  => The best movie in the world
    Avengers : Endgame  => The best movie in the world
    Avengers : Endgame Avengers : Endgame 
    

<h2 style="color:#a32f80"> typeof buit-in function </h2>


```julia
println(typeof(movie_name)) # type of variable
println(typeof(interest_area) ," ",typeof(loan_amount))
```

    String
    Float64 Int64
    

<h2 style="color:#a32f80"> Opearator Precedence </h2>


```julia
2 + 5 - 6/2 * 3

# Operation follows in this order:
# 1. 6 / 2 = 3
# 2. 3 * 3 = 9
# 3. 2 + 5 = 7
# 4. 7 - 9 = -2 
```




    -2.0



<h2 style="color:#a32f80"> Commenting in Julia </h2>

* <b style="color:blue">Single Line Comment</b>
 * * '#' is used for single line comment in Julia.

* <b style="color:blue">Multiple Line Comment</b>
 * * '#='...'=#' is used for multiline comment in Julia.
 

<br>
<br>
<h2 style="color:#ff0000"> Variable Rules </h2>

* Never start with Number or special character.
* Do not use special character except _ ('underscore') in your variable.
* You can not use buit in function/attribute name as your variable name

<h4 style='color:red'>If you not follow above rules compiler will give you syntax error.</h4>

<h2 style='color:#04009a;font-size:30px'>Arrays</h2>

* ordered collection of variables.


```julia
arr = [1,2,3,4,5] # data type = Int 64 bit
```




    5-element Vector{Int64}:
     1
     2
     3
     4
     5




```julia
arr = [1,2.6,3,4,3.5] # convert all int type to float64
```




    5-element Vector{Float64}:
     1.0
     2.6
     3.0
     4.0
     3.5




```julia
arr = ["Julia","Python","Java"] # string array
```




    3-element Vector{String}:
     "Julia"
     "Python"
     "Java"




```julia
func_arr = [print , println , printstyled] # function array
```




    3-element Vector{Function}:
     print (generic function with 31 methods)
     println (generic function with 3 methods)
     printstyled (generic function with 2 methods)




```julia
mix_array = [1, 2.5, 3 , "Julia" , "Python"] # any type array
```




    5-element Vector{Any}:
     1
     2.5
     3
      "Julia"
      "Python"




```julia
int64_type = Int64[1,2,3,4,5] # specific type array
```




    5-element Vector{Int64}:
     1
     2
     3
     4
     5




```julia
float64_type = Float64[1,2,3,9,10] # int values converted to the float64.
```




    5-element Vector{Float64}:
      1.0
      2.0
      3.0
      9.0
     10.0




```julia
string_type = String["This","is","Julia"] # string type array
```




    3-element Vector{String}:
     "This"
     "is"
     "Julia"



<h3 style='color:#04009a'> 2D Array </h3>


```julia
array_2d = [1 2 3 4;5 6 7 8] # shape : 4 x 4
```




    2×4 Matrix{Int64}:
     1  2  3  4
     5  6  7  8




```julia
vector = [1 2 3 4 5] # shape : 1 x 5
```




    1×5 Matrix{Int64}:
     1  2  3  4  5




```julia
a1 = rand(5) # array of 5 random values
```




    5-element Vector{Float64}:
     0.004494553043690619
     0.3950438790557944
     0.6075238226157957
     0.5124315551337923
     0.16642883102200923




```julia
a2 = rand(3,3) # array of 3 x 3 with random values
```




    3×3 Matrix{Float64}:
     0.0496462  0.72721    0.955089
     0.201577   0.307465   0.698218
     0.923533   0.0770616  0.637665



<h3 style='color:#04009a'>getindex() </h3>
* It is used to get values at specified index
* Argument : (array name , list or indexs || index || slice of index ) 


```julia
getindex(a2,6) 

# Indexing of a2 array
# 1 4 7
# 2 5 8
# 3 6 9
```




    0.07706160620157831




```julia
getindex(a1 , 2) # index of a1 => [ 1 2 3 4 5 ]
```




    0.3950438790557944




```julia
getindex(a2 , [1,3]) # getting 1 st and 3 rd index values together..
```




    2-element Vector{Float64}:
     0.049646237718633746
     0.9235328696408989




```julia
getindex(a2 , 2:8) # getting values from index 2 to index 8

# Note that both the index must be inclued.( In this case 2 and 8 )
```




    7-element Vector{Float64}:
     0.20157713804054045
     0.9235328696408989
     0.727209980796329
     0.30746547339089014
     0.07706160620157831
     0.9550888867948613
     0.6982178071790035




```julia
a1[4] # another indexing method for 1D array or vector
```




    0.5124315551337923




```julia
a2[[3,4]] ## another indexing method for 2D array
```




    2-element Vector{Float64}:
     0.9235328696408989
     0.727209980796329



<h3 style='color:#04009a'> setindex!() </h3>
* It is used to set values at specified index.
* Argument : (array_name , new_values , index)


```julia
setindex!(a2,[10,12],[1,3]) # using buit-in fucntion 
```




    3×3 Matrix{Float64}:
     10.0       0.72721    0.955089
      0.201577  0.307465   0.698218
     12.0       0.0770616  0.637665




```julia
a2[[1,3]] = [0.04 , 0.05] # another method to change values at index
```




    2-element Vector{Float64}:
     0.04
     0.05




```julia
a2 # final array...
```




    3×3 Matrix{Float64}:
     0.04      0.72721    0.955089
     0.201577  0.307465   0.698218
     0.05      0.0770616  0.637665



<b style="color:#f7a440">FOR MORE CHECKOUT OFFICIAL DOCUMENTATION :</b><br>
<a href="https://docs.julialang.org/en/v1/base/arrays/#Indexing-and-assignment"><b>Arrays</b></a>

<h3 style="color:#f14668;font-size:30px"> Ranges </h3>

* It is used to create a array for specified ranges.


```julia
collect(1:10) # range from 1 to 10
```




    10-element Vector{Int64}:
      1
      2
      3
      4
      5
      6
      7
      8
      9
     10




```julia
collect(1.3:5.3) # for floting values
```




    5-element Vector{Float64}:
     1.3
     2.3
     3.3
     4.3
     5.3




```julia
collect(1.3:0.3:5.3) # here 2nd argument specifies hou much to addition we have to do.
```




    14-element Vector{Float64}:
     1.3
     1.6
     1.9
     2.2
     2.5
     2.8
     3.1
     3.4
     3.7
     4.0
     4.3
     4.6
     4.9
     5.2




```julia
collect(1:2:11) # for integer values
# make sure range values are included...
```




    6-element Vector{Int64}:
      1
      3
      5
      7
      9
     11




```julia
collect(100:-20:0) # reverse range
```




    6-element Vector{Int64}:
     100
      80
      60
      40
      20
       0




```julia
typeof(collect(1:10)) # ranges are type of array
```




    Vector{Int64} (alias for Array{Int64, 1})




```julia
c1 = collect(100:-20:0) # store it in variable
# now we can apply all array operation on c1.
```




    6-element Vector{Int64}:
     100
      80
      60
      40
      20
       0




```julia
c1[end] # end is used to give last element in the array.
```




    0




```julia
c1[end-2] # third last element in the array
```




    40




```julia
c1[1:end-1] # starting from index 1 to second last element
```




    5-element Vector{Int64}:
     100
      80
      60
      40
      20



<b style="color:#f7a440">FOR MORE CHECKOUT OFFICIAL DOCUMENTATION :</b><br>
<a href="https://docs.julialang.org/en/v1/base/collections/#Base.collect-Tuple{Type,%20Any}">Ranges</a>

<h2 style='color:#1f441e;font-size:30px'>Tuples</h2>

* Tupples are immutable
* You cannot change the values of tuples once you declared.


```julia
t1 = (1,2,3,4,5)
println(typeof(t1)) # type of NTuple and elements types Int64
println(t1)
```

    NTuple{5, Int64}
    (1, 2, 3, 4, 5)
    


```julia
# accessing tuple elements same as arrays with getinde() and by using Square ([]) brackets.

println(t1[1]) # single element
println(t1[end]) # using end attribute
println(t1[[2,4]]) # accessing multiple elements
println(t1[1:4]) # accessing elements using slicing.
```

    1
    5
    (2, 4)
    (1, 2, 3, 4)
    

<h3 style='color:#1f441e'>2D Tuple</h3>


```julia
t2 = ((12,21),(23,34),(55,62))
```




    ((12, 21), (23, 34), (55, 62))




```julia
# 2D array index (1(1 , 2) ,2(1 , 2) ,3(1 , 2))
# array values : ((12, 21),(23, 34),(55,62))

println(t2[3]) # access specific tuple - 3 (55,62)
println(t2[3][1])  # access tuple - 3 1 st value (55)
println(t2[[1,3]]) # access 1 and 3 rd tuple only. 
println(t2[1:3]) # access all tuples from index 1 to index 3
```

    (55, 62)
    55
    ((12, 21), (55, 62))
    ((12, 21), (23, 34), (55, 62))
    


```julia
marks = (Science = (89,100) , Maths = (97,100) , Physics = (90,100))
```




    (Science = (89, 100), Maths = (97, 100), Physics = (90, 100))




```julia
marks.Science # access tuples by its name 
```




    (89, 100)




```julia
marks.Maths # access tuples by its name
```




    (97, 100)




```julia
marks.Science[1] # specific marks
```




    89




```julia
println("Total marks : ",marks.Science[1] + marks.Maths[1] +marks.Physics[1])
```

    Total marks : 276
    


```julia
marks2 = (History = (94,100), Computer = (99,100) )
```




    (History = (94, 100), Computer = (99, 100))




```julia
merge(marks,marks2)
```




    (Science = (89, 100), Maths = (97, 100), Physics = (90, 100), History = (94, 100), Computer = (99, 100))



<b style="color:#f7a440">FOR MORE CHECKOUT OFFICIAL DOCUMENTATION :</b><br>
<a href="https://docs.julialang.org/en/v1/manual/functions/#Tuples">Tuples</a>

<h2 style='color:#04009a;font-size:30px'>Dictionary</h2>

* Structure of Key value pair type.
* Value can be accessed by using corosponding keys.


```julia
cars = Dict("Car1"=>100000,"Car2"=>500000,"Car3"=>1000000)

# key value pair 
# key type : String , Value type : Int64
```




    Dict{String, Int64} with 3 entries:
      "Car3" => 1000000
      "Car2" => 500000
      "Car1" => 100000




```julia
# accessing dictionary value with help of keys
println(cars["Car1"])
println(cars["Car2"])
println(cars["Car3"])
```

    100000
    500000
    1000000
    


```julia
# another method to define dictonary
cars2 = Dict(:Car1=>100000 , :Car2=>500000 ,:Car3=>1000000)
```




    Dict{Symbol, Int64} with 3 entries:
      :Car3 => 1000000
      :Car1 => 100000
      :Car2 => 500000




```julia
# accessing this type od dictonary

println(cars2[:Car1])
println(cars2[:Car2])
println(cars2[:Car3])
```

    100000
    500000
    1000000
    

<h3 style='color:#04009a'> haskey() </h3>

* This function checks wheather a function has key or not


```julia
haskey(cars2 , :Car2) # argument ( dictionary_name , key that we have to check present or not )
```




    true




```julia
haskey(cars2 , :car2) 
```




    false



<h3 style='color:#04009a'> delete!() </h3>

* This function is used to delete particular key from dict.


```julia
delete!(cars2 , :Car2) 
```




    Dict{Symbol, Int64} with 2 entries:
      :Car3 => 1000000
      :Car1 => 100000




```julia
cars2
```




    Dict{Symbol, Int64} with 2 entries:
      :Car3 => 1000000
      :Car1 => 100000




```julia
# make sure key name is perfact
# if you enter a wrong key it will not throw any type of error

delete!(cars2 , :Cars1) 
```




    Dict{Symbol, Int64} with 2 entries:
      :Car3 => 1000000
      :Car1 => 100000



<h3 style='color:#04009a'> keys() </h3>

* Return all the keys present in the dict.


```julia
keys(cars)
```




    KeySet for a Dict{String, Int64} with 3 entries. Keys:
      "Car3"
      "Car2"
      "Car1"




```julia
keys(cars2)
```




    KeySet for a Dict{Symbol, Int64} with 2 entries. Keys:
      :Car3
      :Car1



<h3 style='color:#04009a'> values() </h3>

* Return all the values in the dict.


```julia
values(cars)
```




    ValueIterator for a Dict{String, Int64} with 3 entries. Values:
      1000000
      500000
      100000




```julia
values(cars2)
```




    ValueIterator for a Dict{Symbol, Int64} with 2 entries. Values:
      1000000
      100000



<h3 style='color:#04009a'> merge() </h3>

* Used to merge two dict.


```julia
total_cars = merge(cars , cars2)
```




    Dict{Any, Int64} with 5 entries:
      :Car3  => 1000000
      "Car3" => 1000000
      "Car2" => 500000
      :Car1  => 100000
      "Car1" => 100000



<b style="color:#f7a440">FOR MORE CHECKOUT OFFICIAL DOCUMENTATION :</b><br>
<a href="https://docs.julialang.org/en/v1/base/collections/#Base.Dict">Dictionary</a>

<h2 style="color:#aa2ee6;font-size:30px">Sets</h2>

* It have only unquie value in the set. 


```julia
sports_brands = Set(["Adidas","Nike","Puma","Rebook"])
```




    Set{String} with 4 elements:
      "Rebook"
      "Nike"
      "Puma"
      "Adidas"



<h3 style="color:#aa2ee6">in()</h3>

* This function is used to check wheather a mentioned value is in the set or not. 


```julia
in("Adidas",sports_brands)
```




    true




```julia
in("HRX",sports_brands)
```




    false




```julia
"Adidas" in sports_brands
```




    true




```julia
sports_brands_india = Set(["Adidas","Nike","HRX"])
```




    Set{String} with 3 elements:
      "Nike"
      "HRX"
      "Adidas"



<h3 style="color:#aa2ee6">union()</h3>

* This function is used for union of two sets. 


```julia
sports = union(sports_brands , sports_brands_india)
```




    Set{String} with 5 elements:
      "Rebook"
      "Nike"
      "Puma"
      "HRX"
      "Adidas"



<h3 style="color:#aa2ee6">intersect()</h3>

* This function is used to find common values in both sets. 


```julia
intersect(sports_brands,sports_brands_india)
```




    Set{String} with 2 elements:
      "Nike"
      "Adidas"



<h3 style="color:#aa2ee6">setdiff()</h3>

* It returns element of first set which are not present in second set 


```julia
setdiff(sports_brands , sports_brands_india)
```




    Set{String} with 2 elements:
      "Rebook"
      "Puma"




```julia
setdiff(sports_brands_india,sports_brands)
```




    Set{String} with 1 element:
      "HRX"



<h3 style="color:#aa2ee6">push!()</h3>

* This function is used add value in set 


```julia
push!(sports_brands ,"HRX","Fila")
```




    Set{String} with 6 elements:
      "Rebook"
      "Nike"
      "Puma"
      "HRX"
      "Fila"
      "Adidas"



<h3 style="color:#aa2ee6">pop!()</h3>

* This function is return the last value when a define the set.


```julia
println(sports_brands)
pop!(sports_brands)
```

    Set(["Rebook", "Nike", "Puma", "HRX", "Fila", "Adidas"])
    




    "Rebook"



<b style="color:#f7a440">FOR MORE CHECKOUT OFFICIAL DOCUMENTATION :</b><br>
<a href="https://docs.julialang.org/en/v1/base/collections/#Base.Set">Sets</a>

<h2 style="color:#29c7ac;font-size:30px">Working with Date and Time</h2>

* Dates.date - working with date only
* Dates.time - working with time only
* Dates.datetime - working with bot


```julia
# import in julia

using Dates
```


```julia
now() # after importing we can use funciton like this

# represent the current time and date (Dates.datetime)
```




    2021-05-20T23:01:55.432




```julia
today() # represent today date only (Dates.date)
```




    2021-05-20




```julia
birthdate = Date(2000,5,1) # YYYY,MM,DD
```




    2000-05-01




```julia
typeof(birthdate) # Date type object
```




    Date




```julia
DateTime(2000,5,1,10,15,27) # YYYY,MM,DD,hour,minute,second
```




    2000-05-01T10:15:27




```julia
now(UTC) # UTC timezone
```




    2021-05-20T17:31:56.720




```julia
birthdate = DateTime(2000,5,1,10,15,27)
```




    2000-05-01T10:15:27




```julia
println(year(birthdate))
println(month(birthdate))
println(day(birthdate))
```

    2000
    5
    1
    


```julia
year(now()) # nested function
```




    2021




```julia
hour(now()) # 2 PM => 14
```




    23




```julia
dayofweek(birthdate) # day of week
```




    1




```julia
dayname(birthdate)
```




    "Monday"




```julia
daysinmonth(birthdate)
```




    31




```julia
birthdate = Date(2000,5,1)

today()-birthdate # difference between today and birthdate in days
```




    7689 days




```julia
today() + Month(5) # currnet month is 5(May) add 5 months so it becomes 10 (october)
```




    2021-10-20




```julia
date_format = DateFormat("dd-mm-yyyy")
Dates.format(birthdate,date_format)
```




    "01-05-2000"



<b style="color:#f7a440">FOR MORE CHECKOUT OFFICIAL DOCUMENTATION :</b><br>
<a href="https://docs.julialang.org/en/v1/search/?q=dates">Date and Time</a>

<h2 style="color:#5454c5;font-size:30px">Conditional Statements</h2>

It includes following statements :
* If - else - end Statement
* If - elseif - else - end Statement

<h3 style="color:#5454c5;">Ternary Operator</h3>


```julia
a = 10

# use ternary operator
a > 10 ? "Yes" : "No"
```




    "No"




```julia
println(a < 10 ? "Yes" : "No")
println(a == 10 ? "Yes" : "No")
```

    No
    Yes
    


```julia
b = 20
```




    20




```julia
a >= 10 || b < 20 ## Or operator - one of them is true -> whole statement will true otherwise false.
```




    true




```julia
a > 10 || b < 20 ## both false => Final answer => False
```




    false




```julia
a >= 10 && b <= 20 ## Or operator - both of them is true -> whole statement will true otherwise false.
```




    true




```julia
a >= 10 && b < 20 # one of them is false => Final Answer => False
```




    false



<h3 style="color:#5454c5;">if elseif else end</h3>

* else and elseif block are not mandotory.


```julia
a = 9

if a > 10
    print("a is greater then 10")
elseif a < 10
    print("a is less then 10")
else
    print("a is equal to 10")
end
```

    a is less then 10

<h3 style="color:#5454c5;">if else end</h3>

* else block is not mandotory


```julia
country = "United States"
```




    "United States"




```julia
if country == "United States" 
    print("Country is United States")
else
    print("You are not from USA")
end
```

    Country is United States

<b style="color:#f7a440">FOR MORE CHECKOUT OFFICIAL DOCUMENTATION :</b><br>
<a href="https://docs.julialang.org/en/v1/manual/control-flow/#man-conditional-evaluation">Conditional Evalution</a>

<h2 style="color:#d72323;font-size:30px">Loops</h2>


```julia
sports
```




    Set{String} with 5 elements:
      "Rebook"
      "Nike"
      "Puma"
      "HRX"
      "Adidas"



<h3 style="color:#d72323">For Loop</h3>


```julia
for i in sports # set traversal
    println(i)
end
```

    Rebook
    Nike
    Puma
    HRX
    Adidas
    


```julia
for i in "Adidas" # string traversal
    print(i," ")
end
```

    A d i d a s 


```julia
for i in (1,2,45,6,7) # tuple traversal
    println(i)
end
```

    1
    2
    45
    6
    7
    


```julia
cars
```




    Dict{String, Int64} with 3 entries:
      "Car3" => 1000000
      "Car2" => 500000
      "Car1" => 100000




```julia
for d in cars # dictionary traversal
    println(d )
end
```

    "Car3" => 1000000
    "Car2" => 500000
    "Car1" => 100000
    


```julia
for s in 1:5    # using range traversal
    print(s," ")
end
```

    1 2 3 4 5 


```julia
for Range in 1:5
    @show Range  # inbuilt macro
end

# both Range name should be matched 
```

    Range = 1
    Range = 2
    Range = 3
    Range = 4
    Range = 5
    


```julia
for x in 1:10  # combining For loop and If else
    if x % 2 == 0
        @show x
    end
end
```

    x = 2
    x = 4
    x = 6
    x = 8
    x = 10
    


```julia
for i in 1:10 # evalute expression in the loop
    j = i*10
    println("$(j) is multiplication of $(i) and 10")
end
```

    10 is multiplication of 1 and 10
    20 is multiplication of 2 and 10
    30 is multiplication of 3 and 10
    40 is multiplication of 4 and 10
    50 is multiplication of 5 and 10
    60 is multiplication of 6 and 10
    70 is multiplication of 7 and 10
    80 is multiplication of 8 and 10
    90 is multiplication of 9 and 10
    100 is multiplication of 10 and 10
    


```julia
for i in 1:2:10 # traverse range with step size = 2
    print(i," ")
end
```

    1 3 5 7 9 

<h3 style="color:#d72323">While Loop</h3>


```julia
a = 1
while a < 10
    println(a)
    a = a + 1
end
```

    1
    2
    3
    4
    5
    6
    7
    8
    9
    


```julia
# odd number between 1 to 10 in reverse order
a = 10 
while a > 0
    if a%2 == 0
        println(a)
    end
    a = a-1 
end
```

    10
    8
    6
    4
    2
    

<b style="color:#f7a440">FOR MORE CHECKOUT OFFICIAL DOCUMENTATION :</b><br>
<a href="https://docs.julialang.org/en/v1/manual/variables-and-scoping/#Loops-and-Comprehensions">Loops</a>

<h2 style="color:#fd7014;font-size:25px">Print All Prime Numbers Between 1 to 100</h2>


```julia
answers = [2]
is_valid = false
for number in 3:100
    is_valid = false
    for n in 2:number-1
        if number%n == 0
            is_valid = true
            break
        end
    end
    if is_valid == false
        push!(answers,number)
    end
    
end     
```


```julia
length(answers)
```




    25




```julia
print("Prime Numbers :")
for i in answers
    print(i," ")
end
```

    Prime Numbers :2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 

<h2 style="color:#3a4750;font-size:30px">Comprehensions</h2>

Another form of loops


```julia
x = [x for x in 1:10] # simple form of comprehensions
```




    10-element Vector{Int64}:
      1
      2
      3
      4
      5
      6
      7
      8
      9
     10




```julia
x = [I*2 for I in 1:6] # array comprehensions
```




    6-element Vector{Int64}:
      2
      4
      6
      8
     10
     12




```julia
x = Set([i for i in 1:6]) # make set 
```




    Set{Int64} with 6 elements:
      5
      4
      6
      2
      3
      1




```julia
# generate dictionary with alphabet as key and corosponding number as value

alphabet = Dict(string(Char(x + 64)) => x for x in 1:26)
```




    Dict{String, Int64} with 26 entries:
      "Z" => 26
      "Q" => 17
      "W" => 23
      "T" => 20
      "C" => 3
      "P" => 16
      "V" => 22
      "L" => 12
      "O" => 15
      "B" => 2
      "M" => 13
      "N" => 14
      "H" => 8
      "A" => 1
      "X" => 24
      "D" => 4
      "G" => 7
      "E" => 5
      "Y" => 25
      "I" => 9
      "J" => 10
      "S" => 19
      "U" => 21
      "K" => 11
      "R" => 18
      "F" => 6




```julia
[(x,y) for x in 0:4,y in 0:4] # making 2d matrix of tuples
```




    5×5 Matrix{Tuple{Int64, Int64}}:
     (0, 0)  (0, 1)  (0, 2)  (0, 3)  (0, 4)
     (1, 0)  (1, 1)  (1, 2)  (1, 3)  (1, 4)
     (2, 0)  (2, 1)  (2, 2)  (2, 3)  (2, 4)
     (3, 0)  (3, 1)  (3, 2)  (3, 3)  (3, 4)
     (4, 0)  (4, 1)  (4, 2)  (4, 3)  (4, 4)




```julia
[x for x in 1:20 if x%2==0] # with condition
```




    10-element Vector{Int64}:
      2
      4
      6
      8
     10
     12
     14
     16
     18
     20



<b style="color:#f7a440">FOR MORE CHECKOUT OFFICIAL DOCUMENTATION :</b><br>
<a href="https://docs.julialang.org/en/v1/manual/variables-and-scoping/#Loops-and-Comprehensions">Comprehensions</a>

<h2 style="color:#29c7ac;font-size:30px">String Manipulation</h2>


```julia
string1 = "I Love Julia"
```




    "I Love Julia"




```julia
length(string1) # length of string

# note spaces are also calculated
```




    12




```julia
lastindex(string1) # last character location in string
```




    12



<b style="color:#29c7ac;font-size:18px">Note :</b>
* Both are same but lastindex function require less computation.
* So as a Note Always prefer lasindex() function over length() function.


```julia
# accessing particular part of string using slice of indexing
println(string1[1])
println(string1[3:6])
println(string1[8:12])
```

    I
    Love
    Julia
    


```julia
isascii(string1) # return true if stinrg have ascii character
```




    true




```julia
isascii("αβγ")
```




    false




```julia
"Love Julia"*" & Python"  # concatenation using *
```




    "Love Julia & Python"




```julia
"Julia "^2 # 2 times julia
```




    "Julia Julia "




```julia
split(string1) # split the string by default space seprated
```




    3-element Vector{SubString{String}}:
     "I"
     "Love"
     "Julia"




```julia
split("a,b,c,d",",") # comma seprated
```




    4-element Vector{SubString{String}}:
     "a"
     "b"
     "c"
     "d"




```julia
split(string1,"e") # split by some character

# make sure splitted character will not include in any splitted substring.
```




    2-element Vector{SubString{String}}:
     "I Lov"
     " Julia"




```julia
split(string1,"") # split by character
```




    12-element Vector{SubString{String}}:
     "I"
     " "
     "L"
     "o"
     "v"
     "e"
     " "
     "J"
     "u"
     "l"
     "i"
     "a"




```julia
# parse numerical or any other special character to string
# converting numerical to string type

println(typeof("100"))
println(typeof(parse(Int64,"100")))
```

    String
    Int64
    


```julia
println(typeof("100.5674"))
println(typeof(parse(Float64,"100.5674")))
```

    String
    Float64
    


```julia
in('I',string1) # "I" is present in string1 or not

# make sure use single quote here.
# alternative use occursin function
```




    true




```julia
println(occursin("Love",string1)) # same as in function.
println(occursin("love",string1))
```

    true
    false
    


```julia
findfirst("L",string1) # when "L" occur first in string1
```




    3:3




```julia
findfirst("Love",string1) # when "Love" occur first in string1
```




    3:6




```julia
# string replace
# replace(string , "What to replace" => "Replace with what")

replace(string1 ,"Love"=>"Adore")
```




    "I Adore Julia"




```julia
string1 
```




    "I Love Julia"



<h1 style="color:#3282b8;font-size:32px" align='center'>THANK YOU 🎉🎊</h1>

<b>For More Details Do Check Out Julia Official Documentation.</b><br>
https://docs.julialang.org/en/v1/
