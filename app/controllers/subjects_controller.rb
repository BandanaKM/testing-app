class SubjectsController < ApplicationController

  def index
  	@subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def create
  	@subject = Subject.new(subject_params)
    if @subject.save
      redirect_to(:action => 'index')
    else
      render('index')
    end
  end

  def destroy
  	subject = Subject.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  private
  def subject_params
    params.require(:subject).permit(:name)
  end

end
