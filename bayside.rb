=begin
# Domain Model for a School

Write a model that stores students along with the grade that they are in.

```ruby
school = School.new("Bayside High School")
```

If no students have been added, the roster should be empty:

```ruby
school.roster
# => {}
```

When you add a student, they get added to the correct grade.

```ruby
school.add_student("Zach Morris", 9)
school.roster
# => {9 => ["Zach Morris"]}
```

You can, of course, add several students to the same grade, and students to different grades.

```ruby
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster
# => {9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}
```

Also, you can ask for all the students in a single grade:

```ruby
school.grade(9)
# => ["Zach Morris", "AC Slater"]
```

Lastly, you should be able to get a sorted list of all the students. Grades are sorted in descending order numerically, and the students within them are sorted in ascending order alphabetically.

```ruby
school.sort
# => {9 => ["AC Slater", "Zach Morris"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}
```
Here's a test suite to help you validate.
=end
class School
  attr_accessor :school

  def initialize(name)
    @student = {}
  end

  def roster 
    @student
  end

  def grade(grade)
    @student[grade]
  end

  def sort
    @student.values.each do |names|
      names.sort!
    end
    Hash[@student.sort]
  end

  def add_student(name, grade)
    if @student.include?(grade)
      @student[grade] << name
    else
      @student[grade] = []
      @student[grade] << name
    end
  end

end



