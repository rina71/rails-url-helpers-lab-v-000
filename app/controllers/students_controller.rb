class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    student = Student.create(:first_name=>"yurina", :last_name=>"shin")
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
