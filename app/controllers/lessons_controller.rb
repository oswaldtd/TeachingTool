class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    # render text: params.inspect
    @lesson = Lesson.new(params.require(:lesson).permit(:lesson_name, :lesson_number))
    if @lesson.save
      redirect_to lessons_url
    else
      render 'new'
    end
  end
end
