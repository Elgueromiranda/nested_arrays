#Release 0: Create your Nested Array
#Write out a nested array with at least 3 students.
=begin
student_array =	["|  1  | Elias 	   | Miranda 	 | Male   | [98 , 99 , 100]|"],
				["|  2  | Kelsy 	   | Austwick	 | Female | [98 , 99 , 100]|"],
				["|  3  | Jenny 	   | Miranda	 | Female | [98 , 99 , 100]|"]

header_array = ["| ID  | First Name | Last name 	 | Gender | Grades 	   |"],
				["| --- | ---------  | ----------- | ------ | -------------- |"]
puts header_array

puts student_array


new_array = [['Elias'] , ['Miranda'] , [100, 90 ,70],
			['Jenny'] , ['Miranda'] , [90 , 80 ,100],
			['Kelsy'] , ['Austwick'] , [50 , 80 , 100]]
#Release 1: Create a method to get the average grade for the students 
#Pseudocode:
#get the name of the student
#get the percent
# all of the numbers will be added up
# all of the numbers will be divided
#write the method:

def myAverage(array)
	input = array
		averages = []

		array.each do |x|

		if(x[0].instance_of?(String)== true)

		else
	averages << (x.sum / 3.0).round(2)
		end
	end
	p averages
	return  averages
end
  puts  myAverage(new_array)
=end
#Release 2: Convert the Array into a Hash.

new_array = [['Elias'] , ['Miranda'] , [100, 90 ,70],
			['Jenny'] , ['Miranda'] , [90 , 80 ,100],
			['Kelsy'] , ['Austwick'] , [50 , 80 , 100]]

def hashAverage(array)
	
	student = " "
	average = 0.0
	studentHash = Hash.new

	array.each do |x|
		

		if(x.length == 1)

			 student << x[0]
			 student = student + " "
		else
			 average = (x.sum / 3.0).round(2)
			 studentHash.store(student, average)
			 student.clear
			 	
		end


	end
	 
return studentHash
end 
	


 p hashAverage(new_array)[" Elias Miranda "]

