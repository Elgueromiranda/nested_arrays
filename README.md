#**Nested Arrays**

##**Summary**

Arrays are very useful when storing data especially in Ruby since there are limitless possibilties for arrays.

Nested arrays are arrays within arrays. They are used to store data in different ways.

```ruby
nested_array = [[1,2],[2,4],[6,8]]
```
###**Example:Grid**

A nested array can be used to form a grid pattern such as a tic-tac-toe board or a boggle board.

```ruby
tic_tac_toe = [ ["O","X","X"],
                ["X","O","O"],
                ["X","O","O"]]

```

To get a single element in a nested array is found using two indexes.

The first index is pointing to which array within the array you are looking at or the row.  While the second index looks at the index within that array or the column. So we index into the grid like this array[row][column].

```ruby
nested_array = [[1,2,3],
                [4,5,6],
                [2,4,6]]
nested_array[0] == [1,2,3]
nested_array[0][2] == 3
```


##**Release 0: Creating a Nested Array**

We are going to use our nested array like a spreadsheet. In this exersize we are going to create something to use for a school to track grades. The different columns are Id, First Name, Last Name, Gender, and Grades.

First we are going to create an array that has a header you can do this by pushing the header array into the array or creating an array that already contains the header.

Next, add some information please provide at least 3 more rows you can do as many as you like.

It should look something like this students table:

| Id  | First Name | Last Name | Gender | Grades           |
| --- | ---------- | --------- | ------ | ---------------- |
|  1  | Kelsey     | Ando      | Female | [87,98,88,76]    |
|  2  | John       | Smith     | Male   | [100,100,100,100]|
|  3  | Jain       | Doe       | Female | [87,96,94,86]    |
|  4  | Mike       | Potters   | Male   | [65,87,76,59]    |

Write some driver code to make sure that you have properly created the array.

Example driver code:
```ruby
  puts student_db[1][0] == "Kelsey" #outputs true
  puts student_db[2][3] == [100,100,100,100] #outputs true
  puts student_db[3][2] == "Female" # outputs true
```

##**Release 1: Looping**

Think about how you would create a method to get the adverage grades of the students, return them as a nested array with [name, adv_grade], and set it equil to the variable grade_averages.  Discuss it with your partner and take the time to pseudocode the implementation.

Now go ahead and try to write out the code. Use the [ruby docs for arrays](http://www.ruby-doc.org/core-2.2.0/Array.html) to help find methods to make looping through the array easier. 

Write some driver code to make sure that your method is working.

Example output code:
```ruby
  puts grade_averages = [[name, average], ["Kelsey", 87], ["John", 100], ["Jain", 90], ["Mike", 71]]
  puts grade_averages[2][1] == 100
```

##**Release 2: Hash**

We are now going to convert the nested array into a hash. Ruby has Hash methods that easily convert arrays into properly formatted [hashes](http://www.ruby-doc.org/core-2.2.0/Hash.html#method-c-5B-5D).

Read through the documentation with your partner and check out all the ways that the Hash::[] method accepts. Discuss the different formats and test them out in irb.

Create a method to convert the nested array into the right format to create a hash.

Now write some driver code to test your new hash.

```ruby
  puts hashed_roster[4]["Last Name"] == "Potters" #outputs true
```
