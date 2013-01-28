class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    render :index
  end

  def report_classroom
    @classroom = Classroom.all
    render :report_classroom
  end

  def show_report_classroom
    @classroom = Classroom.find(params[:classroom_id])
    render :show_report_classroom
  end

  def report_teacher
    @teacher = Teacher.all
    render :report_teacher
  end

  def show_report_teacher
    @teacher = Teacher.find(params[:teacher_id])
    render :show_report_teacher
  end
end
