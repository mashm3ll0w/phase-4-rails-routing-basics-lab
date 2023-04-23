class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all
    sorted_by_grades = students.sort { |a, b| b.grade <=> a.grade }
    render json: sorted_by_grades
  end
end
