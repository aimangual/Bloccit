class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @questions = Question.find(params[:id])
  end

  def new
    @questions = Question.new
  end

  def create
    @questions = Question.new(params.require(:post).permit(:title, :body))
    if @question.save
      flash[:notice] = "Question was saved."
      redirect_to @question
    else
      flash[:error] = "There was an error saving the question. Please try again."
      render :new
    end
  end

  def edit
    @post = Question.find(params[:id])
  end

  def update
    @Question = Question.find(params[:id])
    if @question.update_attributes(params.require(:question).permit(:title, :body))
      flash[:notice] = "Question was updated."
      redirect_to @question
    else
      flash[:error] = "There was an error saving the question. Please try again."
      render :edit
    end
  end
end