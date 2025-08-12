# making vectors

#character vector
dogs <- c("teddy", "khora", "waffle", "banjo")
class(dogs)
typeof(dogs)

# numeric vector
weights <- c(50, 55, 25, 35) 
class(weights) # overal type such as numeric, the class type 
typeof(weights) # shows as stored as double how the data is being stored

# integer vector
dog_age <- c(5L, 6L, 1L, 7L) #L to store as integer 
class(dog_age)
typeof(dog_age)

is.numeric(dog_age)

# What happens when we combine classes? Character
dog_info <- c("teddy", 50, 5L)
class(dog_info)
dog_info

# Name elements
dog_food <- c(teddy = "purina", 
              khora = "alpo", 
              waffle = "fancy feast", 
              banjo = "blue diamond") #object names do not need qoutes 
class(dog_food)
dog_food

# Accessing bits of vectors
# use the position or names to access elements of a vector
dog_food[2] # say just give me the second element 
dog_food["khora"] # look up Khoras fav food by looking up her name
dog_food[1:3] 

# warm up to for loops
i <- 1 # define variables can chenge the value of i e.g. 4 or 1
dog_food[i]
# key points:
# index by position 
# define position with variables

# can overwrite data by directly using indexing
dog_food[1] <- "BURRITOS!"
dog_food

# Matrices
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE) # ncol =... the dimentions we want
fish_size
typeof(fish_size)
class(fish_size)
fish_size[1,2]
fish_size[,2] # returns column 2
fish_size[1,] # returns row 1

# List of vectors
urchins <- list("blue", # 1 vector
                c(1, 2, 3), # 2nd vector
                c("a cat", "a dog"), # 3rd vector
                5L) # 4th vector
urchins

# Access data in a list
# indexing into vector
urchins[2] # going to 2nd vector and prinitng that 
# indexing into the elements of vectors
urchins[[2]] # using double brakets

# Naming list
tacos <- list(toppings = c("onion", "cilantro", "guacamole"),
             filling = c("beans", "meat", "veggies"),
             price = c(6.75, 8.25, 9.50))
tacos[[2]]
tacos$filling # calling themout by names

# dataframe special vertions of list
# Making Data frames
fruit <- data.frame(type = c("apple", "banana", "peach"), # a vector for names for vectors
                    mass = c(130, 195, 150))

# Look at it
fruit
class(fruit)

fruit[1,2]
fruit[,2]
fruit[1,]
fruit[2,1] <- "pineapple" # changed banana to pineapple
