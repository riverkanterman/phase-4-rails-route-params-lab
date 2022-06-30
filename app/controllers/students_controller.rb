class StudentsController < ApplicationController

  def index
    if (!params[:name])
      students = Student.all
      render json: students
    else
      name = params[:name].camelcase
      students = Student.where("last_name=?", name)
      render json: students
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
