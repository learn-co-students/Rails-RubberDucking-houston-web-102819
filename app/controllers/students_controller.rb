class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
    Student.create({name: params[:name], mod: params[:mod]})
    @students = Student.all
  end

  def edit
    @student = Student.find_by(id: params[:id])
    @student.update({name: params[:name], mod: params[:mod]})
  end

end
