class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new((params[:student]))

    house_num = Random.rand(House.count)
    @student.house = House.offset(house_num).first

    if (@student.save)
      flash[:notice] = "Student successfully created"
      redirect_to students_path
    else
      render :new
    end
  end

end
