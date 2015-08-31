class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    # render text: params.inspect
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lessons_url
    else
      render 'new'
    end
  end
  private

  def lesson_params
    params.require(:lesson).permit(:lesson_name, :lesson_number )
  end
end
