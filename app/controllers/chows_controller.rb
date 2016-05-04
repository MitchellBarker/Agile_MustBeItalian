require "prawn"

class ChowsController < ApplicationController
  before_action :logged_in_user, only: [:new, :index, :import, :list, :destroy]
  before_action :is_admin, only: [:new, :import, :destroy]
  
  def new
    # @user = Chow.new
  end
  
  def index
    @types = Chow.pluck :food_type
    @types = @types.uniq
    
  end
  
  def import
    begin
      Chow.import(params[:file])
    rescue 
      flash[:danger] = "Error Uploading File."
      redirect_to chows_new_path
    else
      flash[:success] = "File Imported"
      redirect_to chows_index_path
    end
  end
  
  def list
    @items = params[:items]
  end
  
  def destroy
    Chow.find(params[:id]).destroy
    flash[:success] = "Item deleted"
    redirect_to chows_index_path
  end
  
 
  
  private
  def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
  end
    
  def is_admin
        redirect_to(root_url) unless current_user.admin?
  end
  
  check = "\xE2\  x98\x90" # "☐"
  
  # def gen_pdf(items)
  #   Prawn::Document.new do
  #     items.each do |item|
  #       text "#{check} #{item.name}"
  #     end.render
  #   end
  # end
        
end
