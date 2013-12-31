class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params.require(:inquiry).permit(:email, :subject, :description, :firstname, :lastname))
    if @inquiry.save
      redirect_to @inquiry, notice: 'Inquiry was successfully created.'
    else
      render action: 'new'
    end
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

  def index
    @inquiries = Inquiry.all
  end

  def destroy
    Inquiry.find(params[:id]).destroy
    redirect_to inquiries_path
  end

end
