class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        sorted = students.sort_by do |student|
            student[:grade]
        end
        render json: sorted.reverse
    end

end
