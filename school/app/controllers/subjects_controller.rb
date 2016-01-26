class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end
 
  def show
    @subject = Subject.find(params[:id])
  end
 
  def new
    @subject = Subject.new
  end
 
  def edit
    @subject = Subject.find(params[:id])
  end
 
  def create
    @subject = Subject.new(sub_params)
 
    if @subject.save
      redirect_to @subject
      
    else
      render 'new'
    end
  end
 
  def update
    @subject = Subject.find(params[:id])
 
    if @subject.update(sub_params)
      redirect_to @subject
    else
      render 'edit'
    end
  end
   
   def sub_params
   params.require(:subject).permit(:sub_name, :teacher_name)
  end
   
   
   
   


end
