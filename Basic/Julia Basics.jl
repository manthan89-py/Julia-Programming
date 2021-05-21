# In Julia we have two print function

println("Hello World")
print("Hello World")

# difference : Whatever statement after println() prints in new line
# where as in print() prints in same line. we have to specify newline tag ("\n")

println("Hello ")
println("World")
print("Hello ")
print("World \n")
print("Julia")

loan_amount = 1000 ## int type
interest_area = 0.015 ## float type
tenture = 5

loan_amount* tenture # arithmetics opeartation

str = "My First Program" ## string type variable
print(str)

review = " => The best movie in the world"
movie_name = "Avengers : Endgame "

## String concatenation : 2 Ways
println(movie_name*review)  # using * operator
println(string(movie_name,review)) # string() built in function

println(movie_name^2) # print two times movie name



println(typeof(movie_name)) # type of variable
println(typeof(interest_area) ," ",typeof(loan_amount))

2 + 5 - 6/2 * 3

# Operation follows in this order:
# 1. 6 / 2 = 3
# 2. 3 * 3 = 9
# 3. 2 + 5 = 7
# 4. 7 - 9 = -2 

arr = [1,2,3,4,5] # data type = Int 64 bit

arr = [1,2.6,3,4,3.5] # convert all int type to float64

arr = ["Julia","Python","Java"] # string array

func_arr = [print , println , printstyled] # function array

mix_array = [1, 2.5, 3 , "Julia" , "Python"] # any type array

int64_type = Int64[1,2,3,4,5] # specific type array

float64_type = Float64[1,2,3,9,10] # int values converted to the float64.

string_type = String["This","is","Julia"] # string type array

array_2d = [1 2 3 4;5 6 7 8] # shape : 4 x 4

vector = [1 2 3 4 5] # shape : 1 x 5

a1 = rand(5) # array of 5 random values

a2 = rand(3,3) # array of 3 x 3 with random values

getindex(a2,6) 

# Indexing of a2 array
# 1 4 7
# 2 5 8
# 3 6 9

getindex(a1 , 2) # index of a1 => [ 1 2 3 4 5 ]

getindex(a2 , [1,3]) # getting 1 st and 3 rd index values together..

getindex(a2 , 2:8) # getting values from index 2 to index 8

# Note that both the index must be inclued.( In this case 2 and 8 )

a1[4] # another indexing method for 1D array or vector

a2[[3,4]] ## another indexing method for 2D array

setindex!(a2,[10,12],[1,3]) # using buit-in fucntion 

a2[[1,3]] = [0.04 , 0.05] # another method to change values at index

a2 # final array...

collect(1:10) # range from 1 to 10

collect(1.3:5.3) # for floting values

collect(1.3:0.3:5.3) # here 2nd argument specifies hou much to addition we have to do.

collect(1:2:11) # for integer values
# make sure range values are included...

collect(100:-20:0) # reverse range

typeof(collect(1:10)) # ranges are type of array

c1 = collect(100:-20:0) # store it in variable
# now we can apply all array operation on c1.

c1[end] # end is used to give last element in the array.

c1[end-2] # third last element in the array

c1[1:end-1] # starting from index 1 to second last element

t1 = (1,2,3,4,5)
println(typeof(t1)) # type of NTuple and elements types Int64
println(t1)

# accessing tuple elements same as arrays with getinde() and by using Square ([]) brackets.

println(t1[1]) # single element
println(t1[end]) # using end attribute
println(t1[[2,4]]) # accessing multiple elements
println(t1[1:4]) # accessing elements using slicing.

t2 = ((12,21),(23,34),(55,62))

# 2D array index (1(1 , 2) ,2(1 , 2) ,3(1 , 2))
# array values : ((12, 21),(23, 34),(55,62))

println(t2[3]) # access specific tuple - 3 (55,62)
println(t2[3][1])  # access tuple - 3 1 st value (55)
println(t2[[1,3]]) # access 1 and 3 rd tuple only. 
println(t2[1:3]) # access all tuples from index 1 to index 3

marks = (Science = (89,100) , Maths = (97,100) , Physics = (90,100))

marks.Science # access tuples by its name 

marks.Maths # access tuples by its name

marks.Science[1] # specific marks

println("Total marks : ",marks.Science[1] + marks.Maths[1] +marks.Physics[1])

marks2 = (History = (94,100), Computer = (99,100) )

merge(marks,marks2)

cars = Dict("Car1"=>100000,"Car2"=>500000,"Car3"=>1000000)

# key value pair 
# key type : String , Value type : Int64

# accessing dictionary value with help of keys
println(cars["Car1"])
println(cars["Car2"])
println(cars["Car3"])

# another method to define dictonary
cars2 = Dict(:Car1=>100000 , :Car2=>500000 ,:Car3=>1000000)

# accessing this type od dictonary

println(cars2[:Car1])
println(cars2[:Car2])
println(cars2[:Car3])

haskey(cars2 , :Car2) # argument ( dictionary_name , key that we have to check present or not )

haskey(cars2 , :car2) 

delete!(cars2 , :Car2) 

cars2

# make sure key name is perfact
# if you enter a wrong key it will not throw any type of error

delete!(cars2 , :Cars1) 

keys(cars)

keys(cars2)

values(cars)

values(cars2)

total_cars = merge(cars , cars2)

sports_brands = Set(["Adidas","Nike","Puma","Rebook"])

in("Adidas",sports_brands)

in("HRX",sports_brands)

"Adidas" in sports_brands

sports_brands_india = Set(["Adidas","Nike","HRX"])

sports = union(sports_brands , sports_brands_india)

intersect(sports_brands,sports_brands_india)

setdiff(sports_brands , sports_brands_india)

setdiff(sports_brands_india,sports_brands)

push!(sports_brands ,"HRX","Fila")

println(sports_brands)
pop!(sports_brands)

# import in julia

using Dates

now() # after importing we can use funciton like this

# represent the current time and date (Dates.datetime)

today() # represent today date only (Dates.date)

birthdate = Date(2000,5,1) # YYYY,MM,DD

typeof(birthdate) # Date type object

DateTime(2000,5,1,10,15,27) # YYYY,MM,DD,hour,minute,second

now(UTC) # UTC timezone

birthdate = DateTime(2000,5,1,10,15,27)

println(year(birthdate))
println(month(birthdate))
println(day(birthdate))

year(now()) # nested function

hour(now()) # 2 PM => 14

dayofweek(birthdate) # day of week

dayname(birthdate)

daysinmonth(birthdate)

birthdate = Date(2000,5,1)

today()-birthdate # difference between today and birthdate in days

today() + Month(5) # currnet month is 5(May) add 5 months so it becomes 10 (october)

date_format = DateFormat("dd-mm-yyyy")
Dates.format(birthdate,date_format)

a = 10

# use ternary operator
a > 10 ? "Yes" : "No"

println(a < 10 ? "Yes" : "No")
println(a == 10 ? "Yes" : "No")

b = 20

a >= 10 || b < 20 ## Or operator - one of them is true -> whole statement will true otherwise false.

a > 10 || b < 20 ## both false => Final answer => False

a >= 10 && b <= 20 ## Or operator - both of them is true -> whole statement will true otherwise false.

a >= 10 && b < 20 # one of them is false => Final Answer => False

a = 9

if a > 10
    print("a is greater then 10")
elseif a < 10
    print("a is less then 10")
else
    print("a is equal to 10")
end

country = "United States"

if country == "United States" 
    print("Country is United States")
else
    print("You are not from USA")
end

sports

for i in sports # set traversal
    println(i)
end

for i in "Adidas" # string traversal
    print(i," ")
end

for i in (1,2,45,6,7) # tuple traversal
    println(i)
end

cars

for d in cars # dictionary traversal
    println(d )
end

for s in 1:5    # using range traversal
    print(s," ")
end

for Range in 1:5
    @show Range  # inbuilt macro
end

# both Range name should be matched 

for x in 1:10  # combining For loop and If else
    if x % 2 == 0
        @show x
    end
end

for i in 1:10 # evalute expression in the loop
    j = i*10
    println("$(j) is multiplication of $(i) and 10")
end

for i in 1:2:10 # traverse range with step size = 2
    print(i," ")
end

a = 1
while a < 10
    println(a)
    a = a + 1
end

# odd number between 1 to 10 in reverse order
a = 10 
while a > 0
    if a%2 == 0
        println(a)
    end
    a = a-1 
end

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

length(answers)

print("Prime Numbers :")
for i in answers
    print(i," ")
end

x = [x for x in 1:10] # simple form of comprehensions

x = [I*2 for I in 1:6] # array comprehensions

x = Set([i for i in 1:6]) # make set 

# generate dictionary with alphabet as key and corosponding number as value

alphabet = Dict(string(Char(x + 64)) => x for x in 1:26)

[(x,y) for x in 0:4,y in 0:4] # making 2d matrix of tuples

[x for x in 1:20 if x%2==0] # with condition

string1 = "I Love Julia"

length(string1) # length of string

# note spaces are also calculated

lastindex(string1) # last character location in string

# accessing particular part of string using slice of indexing
println(string1[1])
println(string1[3:6])
println(string1[8:12])

isascii(string1) # return true if stinrg have ascii character

isascii("αβγ")

"Love Julia"*" & Python"  # concatenation using *

"Julia "^2 # 2 times julia

split(string1) # split the string by default space seprated

split("a,b,c,d",",") # comma seprated

split(string1,"e") # split by some character

# make sure splitted character will not include in any splitted substring.

split(string1,"") # split by character

# parse numerical or any other special character to string
# converting numerical to string type

println(typeof("100"))
println(typeof(parse(Int64,"100")))

println(typeof("100.5674"))
println(typeof(parse(Float64,"100.5674")))

in('I',string1) # "I" is present in string1 or not

# make sure use single quote here.
# alternative use occursin function

println(occursin("Love",string1)) # same as in function.
println(occursin("love",string1))

findfirst("L",string1) # when "L" occur first in string1

findfirst("Love",string1) # when "Love" occur first in string1

# string replace
# replace(string , "What to replace" => "Replace with what")

replace(string1 ,"Love"=>"Adore")

string1 
