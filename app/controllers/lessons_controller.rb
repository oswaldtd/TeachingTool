class LessonsController < ApplicationController
  def index
  end

  def new
    @lesson = Lesson.new
  end
end
