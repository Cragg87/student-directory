def input_students
  puts "Please enter the names of the students".center(50)
  puts "To finish, just hit return twice".center(50)
  # create an empty array
  students = []
  # get the first name
  name = gets.delete ('\n')
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "Please enter the cohort month".center(50)
    month = gets.chomp
      if month.empty?
        month = "[cohort unknown]"
      end
    puts "Please enter country of birth".center(50)
    country = gets.chomp
      if country.empty?
        country = "[country unknown]"
      end
    # add the student hash to the array
    students << {name: name, cohort: month, country: country}
    if students.count > 1
      puts "Now we have #{students.count} students".center(50)
    else puts "Now we have #{students.count} student".center(50)
    end
    puts "Please enter another name".center(50)
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]})\
 #{student[:country]}".center(50)
  end
end

def print_cohort(students)
  puts "Which cohort would you like to view?"
  month = gets.chomp
  puts "#{month} cohort:".center(50)
  students.each do |student|
    if student[:cohort] == month
      puts "#{student[:name]} #{student[:country]}".center(50)
    end
  end 
end 

def print_footer(students)
  if students.count > 1
  puts "Overall, we have #{students.count}\
 great students".center(50)
  else puts "We have just #{students.count} great student".center(50)
  end
end

students = input_students
print_header
print_cohort(students)
print_footer(students)


