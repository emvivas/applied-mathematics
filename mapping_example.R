
################################################
## --------  raulvalerio@gmail.com-------##
###############################################

Mi video en espanol explicando el codigo:  https://youtu.be/b1DPrg1wtKs


################################################
## --------  How to create DICTIONARIES-------##
###############################################


---> structured as a key-value

## Using vectors

## first example----

ages<- c(23, 25, 25, 34, 40, 44, 15, 26)

ages

names(ages)<- c("Loui", "Karl", "Joes", "Mark", "Pete", "Mary", "Tyle","Joao")

ages

ages["Loui"]

ages["Pete"]

typeof(ages)  ## all are double

names(ages)<- c("Loui", "Karl", "Joes", "Mark", "Pete", "Mary", "Tyle","J")

ages

names(ages)<- c("Loui", "Karl", "Joes", "Mark", "Pete", "Mary", "Tyle", 5 )

names(ages)

names(ages)<- c("Loui", "Karl", "Joes", "Mark", "Pete", "Mary", "Tyle","Jo")

ages

ages<- c(23, 25, 25, 34, 40, 44, 15,  "Hey")

ages

typeof(ages)  ## all are character now


##########################################################
## --------  How to create Map using dictionaries-------##
##########################################################



ages[ c("Mark", "Pete")]

### coming from different multiple observations ----

mylist = c("Karl","Mary","Mary","Mary", "Joes","Karl")

mylist

match(mylist, names(ages) )

ages[ match(mylist, names(ages) ) ]   ### THE SOLUTION


### Using hash we can use multiple values for same key !!!! -----

library(hash)

h <- hash( keys=letters, values=1:26 )
h <- hash( letters, 1:26 )

h

values(h)

keys(h)

typeof(h)

h$a

typeof(h$a)

h$z

h$mine<- "me"

h

typeof(h$a)   ### what is the difference with example 1 using vectors ??


h["mine"]

h[["mine"]]

h$mine

h[["Wow"]] <- list(a=1, b=2)  #  2-key values!!

h$Wow

### mapping different keys to obtain values-----

h[ c("a","b")]

h[ c("a","b", "y")]

mylist= c("a","a","a","Wow","mine")

values(h, keys= mylist  )


### Rewriting example 1 ----

example1 = hash(
  keys= c("Loui", "Karl", "Joes", "Mark", "Pete", "Mary", "Tyle","Jo"), 
  values= c(23, 25, 25, 34, 40, 44, 15, "Hey" ) )

example1

example1[ c("Karl","Mary")]


#####  Example 2:  Finding values for names ----

## mapping for multiple values----

mylist = c("Karl","Mary","Mary","Mary", "Joes","Karl")

values(example1)

keys(example1)

values(example1, keys= mylist  )