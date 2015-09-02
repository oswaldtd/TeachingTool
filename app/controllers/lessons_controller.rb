class LessonsController < ApplicationController
  before_action :find_lesson, only: [:show, :edit, :update, :destroy]

  def index
    @lessons = Lesson.order('lessons.lesson_name ASC').all
  end

  def show
  end

  def destroy
    @lesson.destroy
    redirect_to root_path
  end

  def new
    @lesson = Lesson.new
  end

  def create
    # render text: params.inspect
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to @lesson
    else
      render 'new'
    end
  end
  private

  def lesson_params
    params.require(:lesson).permit(:lesson_name, :lesson_number,
    vocabularies_attributes: [:id, :word, :meaning, :_destroy],
    sentences_attributes: [:id, :sentence, :meaning, :_destroy],
    books_attributes: [:id, :page_start, :page_end, :book_name, :_destroy])
  end

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end
end


def project_params
    params.require(:project).permit(:name, :description, tasks_attributes: [:id, :description, :done, :_destroy])
  end
