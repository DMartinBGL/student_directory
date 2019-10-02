def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"

    students = []

    name = gets.chomp
    name.capitalize!

    while !name.empty? do
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"

        name = gets.chomp
        name.capitalize!
    end
    students
end

#finally we put total number of students
def print_header
    puts "The Students of Villians Academy"
    puts "------------------------"
end

def print(students)
    students.each_with_index do |student, index| 
        if student[:name].length < 12
            puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
        end
    end
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end



students = input_students
print_header
print(students)
print_footer(students)