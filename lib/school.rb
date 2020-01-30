class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student, grade)
    if @roster.key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.sort.to_h
  end
end