require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
<<<<<<< HEAD
  pp(nds)
=======
>>>>>>> 4a0218a2f33eb1060cd665b12fe37d00f4544a27
  directorCounter = 0
  directorTotal = 0
while directorCounter < directors_database.length do
    movieCounter = 0
while movieCounter < directors_database[directorCounter][:movies].length do
    directorTotal += directors_database[directorCounter][:movies][movieCounter][:worldwide_gross]
    movieCounter += 1 
  end
  result[directors_database[directorCounter][:name]] = directorTotal
  directorTotal = 0
  directorCounter += 1 
end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)  
  directorTotal = 0
    movieCounter = 0
<<<<<<< HEAD
while movieCounter < director_data[:movies].length do
    directorTotal += director_data[:movies][movieCounter][:worldwide_gross]
=======
while movieCounter < directors_database[director_data][:movies].length do
    directorTotal += directors_database[director_data][:movies][movieCounter][:worldwide_gross]
>>>>>>> 4a0218a2f33eb1060cd665b12fe37d00f4544a27
    movieCounter += 1 
  end
directorTotal
end