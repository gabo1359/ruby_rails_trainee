# Challenge Week 1

## Problem 1

You want to iterate over a series of alphabetically increasing strings as you would over
a series of numbers.

### Example

```ruby
aa, ab, ac, ad, ae, ... zz.
```

## Problem 2

You have an array that contains a lot of references to relatively few objects. You want
to create a histogram, or frequency map—something you can use to see how often a
given object shows up in the array.

### Example

```ruby
[1, 2, 2, 2, 3, 3].to_histogram
# => {1=>1, 2=>3, 3=>2}
```

## Problem 3

You want to find the average of an array of numbers: its mean, median, or mode.

### Example

```ruby
median([1,2,3,4,5]) # => 3
```

## Problem 4

### Use the strings.txt 

Given the paragraph, clear all the extra spaces between the words:

* Words can contain 1 or more spaces
* Spaces can be`\n` `\t` `\r` or any combination of them
* The result should be the paragraph with correct spacing(this is, just one space between the words)
* The line breaks should be the same as input (Only when they are next to a period (.))

With the same paragraph, match all

* Times when the word `dis` is at the start of a word
* Times when `ing` is at the end of a word

## Problem 5

### Use the events.csv

Convert all the dates from the given `events.csv` file to EST timezone.
If a date is invalid, your script should catch the exception and print out to the console the line number where the invalid date is found. 
The result of the script should be 2 CSV files, one that includes all the invalid dates, with the line number of the original file, and one with the date and times converted to EST timezone sorted from earliest date to latest.
Include a graphic in the CSV file that counts the correct and incorrect number of dates.

<hr/>

![logo](https://cdn-assets-cloud.frontify.com/s3/frontify-cloud-files-us/eyJwYXRoIjoiZnJvbnRpZnlcL2FjY291bnRzXC9kYlwvMTcwODAwXC9wcm9qZWN0c1wvMjA4ODIwXC9hc3NldHNcLzA3XC80NTQ2OTk2XC9mY2UwOTQ5ZjhkMzZhMWRhNmQ5YzYyMWE2Zjg3YjEwYS0xNTk0ODYwMDIzLnBuZyJ9:frontify:mJqQOmVZ9oqFYzejiZy5xX9TWc5XwEbLlGNN7-ooJ7s?width=200)
