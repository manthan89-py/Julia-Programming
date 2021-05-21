f() = println("Running the function") # single liner function , without argument

f()

f(x) = x + x  # single argument function

println( f(2) )
println( f(2.4) )

f(x,y) = x*3 - y*2

f(3,2) # x=3,y=2 => 3*3 - 2*2 => 9-4 => 5

# standard Function

function multiply(x,y)
    return (x*y) + (x+y)
end

multiply(2,3) # x=2,y=3 => (2*3) + (2+3) => 6 + 5 => 11

# simple function to check wheather a number is prime or not
# return true if number is prime otherwise false.

function is_prime(number)
    if number == 1
        return "Non-Prime (special case)"
    else
        for i in 2:number-1
            if number%i == 0
                return "Non-Prime"
            end
        end
    end
    return "Prime"
end

is_prime(7)

using Printf

name = "Manthan"

# if you don't want to print the name in the console and just want to store it in variable then use
# ; semicolon at the end of statement.

name = "Manthan" ;

# whatever write with @ is called macro in julia

# printf macro

@printf("Hello %s",name)

# string based output
# basically it output the string within quotes ("")

# sprintf macro
@sprintf("Hello %s",name)

# for character

ch = "i"

@printf("character : %c",ch)
@sprintf("character : %c",ch)

# more example

x = 100

@printf("Value of x is %d",x)

y = 100.5
@printf("Value of y is %f",y)

# float value use %d convert float to int.
@printf("Value of y is %d", y)

println() # just for new line

# reverse
@printf("Value of x is %f",x)

# if you used %c with string then it will return first character of the string
@printf("Hello %c",name)

println()

# but for char we can use %s. It is totally valid.
@printf("character : %s",ch)

z = 134.76366783882773

@printf("Number is %.2f \n",z) # showing only two points after decimal
@printf("Number is %e \n",z) # showing large number with %e
@printf("Number is %.3e",z) # 3 points after decimal

z = 1234378718325736782368712

@printf("Number = %d \n",z) # very large number represent it wil %e
@printf("Number = %e \n",z) # by default show 6 points after decimal
@printf("number = %.2e \n",z) # 2 points after decimal

# if you don't have CSV Installed then run below script first
# using Pkg
# Pkg.add("CSV") 

# another package is neccessary for read csv.
# it convert csv file to DataFrames

# using Pkg
# Pkg.add("DataFrames")

using CSV # import csv package

using DataFrames

iris = CSV.read("Iris.csv",DataFrame) 

typeof(iris)    

names(iris) # names of columns

size(iris) # shape of data

first(iris, 5) # first five rows of dataset

last(iris, 5) # last fivee rows of dataset

# some stats about data

describe(iris)

# accessing specific columns
iris.Species

# accessing particular rows and column (Indexing)
iris[:,2] # SepalLength

iris[:,[2,3,4,5]] # all columns except Id (first index)

iris[1:5,:] # first five rows and all columns

iris[1:5,2:4] # first five rows and 3 columns

# install plot package by using below commands
# using Pkg
# Pkd.add("Plots")

using Plots

plot() # blank plot

# make Data
# ignore print the data in notebook use ; at the end of command
x = 1:15;
y = rand(15);

plot(x,y)

z = rand(15);

plot!(x,z) # add informaiton in past graph

# alternative way to plot above graph

p = plot(x,y)
plot!(p,x,z)

# add title in the graph

plot(x,y,title="One Random Line Chart")

# adding label

plot(x, y , title="Random Line Chart" , label="Line 1" , lw = 2) # lw = linewidth

# x-axis label
# y-axis label

plot(x,y,title="Random Line Chart",label="Line 1",xlabel="X Axis",ylabel="Y Axis",lw = 2)

# scatter plot

scatter(1:50 , rand(50) ,markercolor="green",markersize = 6,title="Scatter plot",
    xlabel="X-Axis",ylabel="Y-Axis")

# bar plot

bar(x , y,title="Bar plot",xlabel="X-Axis",ylabel="Y-Axis",color="orange")

# histogram

histogram(y , title="Histogram Plot",xlabel="X-Axis",ylabel="Y-Axis")

# combining all together

p1 = plot(x,y,color="green",lw = 2)
p2 = scatter(x,y,color="red")
p3 = bar(x,y , color = "yellow")
p4 = histogram(y , color="orange")

plot(p1,p2,p3,p4,layout = (2,2))

y = rand(15,4)
plot(x,y,layout =(4,1))

first(iris,5) # we are using iris dataset

plot(iris.PetalLengthCm)

bar(iris.Species, iris.PetalLengthCm , color="orange")

scatter(iris.PetalLengthCm , iris.PetalWidthCm , markercolor = "yellow")

histogram(iris.PetalLengthCm)

### downlaod package

# using Pkg
# Pkg.add("SQLite")

using SQLite

# create the database
db = SQLite.DB("Movies")

SQLite.execute(db , "CREATE TABLE IF NOT EXISTS movies(movie_id REAL,movie_name TEXT,location TEXT)")

# 101 means table create successfully...

SQLite.tables(db) # it shows how many tables present in the database.

# insert the record in table

SQLite.execute(db,"INSERT INTO movies(movie_id,movie_name,location) VALUES (1,'Avengers','USA')")

# check wheather table has data or not 

using DataFrames
DataFrame(DBInterface.execute(db,"SELECT * FROM movies"))

# columns information of table

DataFrame(SQLite.columns(db,"movies")) 

chinook = SQLite.DB("chinook.db")

print(SQLite.tables(chinook))

DataFrame(DBInterface.execute(chinook,"SELECT * FROM employees"))

# download package PyCall

# using Pkg
# Pkg.add("PyCall")

using PyCall

np = pyimport("numpy")

a1 = np.array([2,3,4,5,6])

println(np.mean(a1))
println(np.std(a1))

### add ML packages
### add CSV,DataFrames package if you don't have installed this package run below command

# # scikit learn
# using Pkg
# Pkg.add("ScikitLearn")

# # CSV
# using Pkg
# Pkg.add("CSV")

### DataFrames
# using Pkg
# Pkg.add("DataFrames")

using ScikitLearn , CSV

using DataFrames

iris = CSV.read("Iris.csv",DataFrame)

features = iris[:,[2,3,4,5]];

target = iris.Species;

features = Matrix(features)

target = convert(Array,target)

@sk_import linear_model: LogisticRegression

log_reg_model = LogisticRegression()

fit!(log_reg_model,features,target)

predictions = predict(log_reg_model,features);

@sk_import metrics:accuracy_score

accuracy_score(predictions , target)

@sk_import tree:DecisionTreeClassifier

tree_model = DecisionTreeClassifier()

fit!(tree_model,features,target)

predictions = predict(tree_model,features);

accuracy_score(predictions , target) 

@sk_import ensemble: RandomForestClassifier

random_forest = RandomForestClassifier(n_estimators = 5)

fit!(random_forest , features , target)

predictions = predict(random_forest , features);

accuracy_score(predictions , target)

@sk_import model_selection : train_test_split

x_train , x_test , y_train , y_test = train_test_split(features , target , test_size = 0.2 , random_state = 0);

log_reg_2 = LogisticRegression(solver="lbfgs", max_iter=1000)

# add hyperparameters to ignore the warning.

fit!(log_reg_2,x_train,y_train)

preditions = predict(log_reg_2 , x_test);

accuracy_score(preditions , y_test)
