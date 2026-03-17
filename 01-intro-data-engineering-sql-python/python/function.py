"""
Q1. String Cleaning & Transformation
Write a Python function that takes a sentence and performs the following:
●	Removes all vowels (a, e, i, o, u)

●	Replaces spaces with underscores _

●	Converts it to title case (first letter of each word capitalized)

Example:
Input:  "data engineering rocks"
Output: "Dt_Engnrng_Rcks"
"""
def clean_string(sentence):
    vowels = "aeiouAEIOU"
    new_string =""

    # remove vowels
    for ch in sentence:
        if ch not in vowels:
            new_string = new_string + ch

    new_string = new_string.strip() # remove trailing space
    # replace space with underscore
    new_string = new_string.replace(" ","_")
    new_string = new_string.title()

    return new_string
user_input = input("Enter a sentence")
result = clean_string(user_input)
print("The required output is : ",result)

"""
Q2. Dictionary Aggregation
Given a list of dictionaries representing sales transactions:
sales = [
  {"product": "Pen", "amount": 10},
  {"product": "Book", "amount": 20},
  {"product": "Pen", "amount": 15},
  {"product": "Pencil", "amount": 5}
]

Write a Python program to calculate total sales per product and print the result as:
Pen: 25
Book: 20
Pencil: 5
"""
sales = [
  {"product": "Pen", "amount": 10},
  {"product": "Book", "amount": 20},
  {"product": "Pen", "amount": 15},
  {"product": "Pencil", "amount": 5}
]
total ={}

for sale in sales:
    product = sale["product"]
    amount = sale["amount"]

    if product not in total:
        total[product] = amount

    else:
        total[product]= total[product] + amount
print("Total sales per product :" ,total)



"""
Q.3 Write a Python function that takes a list of integers and returns a new list containing elements that appear exactly once.
Example:
Input: [4, 5, 4, 6, 7, 5, 8]
Output: [6, 7, 8]

"""
def unique_elements(numbers):
    counts = {}

    #  Count how many times each number appears
    for num in numbers:
        if num in counts:
            counts[num] += 1
        else:
            counts[num] = 1

    #  Collect numbers that appear exactly once
    result = []
    for num in numbers:
        if counts[num] == 1:
            result.append(num)

    return result


def unique_elements(numbers):
    counts = {}

    # Count frequency
    for num in numbers:
        if num in counts:
            counts[num] += 1
        else:
            counts[num] = 1

    # Collect elements that appear exactly once
    result = []
    for num in numbers:
        if counts[num] == 1:
            result.append(num)

    return result


# Take input from user
user_input = input("Enter numbers separated by space: ")

# Convert input string to list of integers
numbers = []
for item in user_input.split():
    numbers.append(int(item))

# Call function
output = unique_elements(numbers)

print("Output:", output)

