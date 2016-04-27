require "prawn"

class ChowsController < ApplicationController
  
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
      puts "\n \n FILE: \n"
      puts params[:file]
      puts "\n \n"
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
  
  # def download
  #   @items = params[:items]
  #   send_data gen_pdf(@items),
  #     filename: "groceries.pdf",
  #     type: "application/pdf"
  # end
  
  def sort_diabetic type
    @chows = Chow.where(food_type: type).order(calories: :asc, protein: :desc, fiber: :desc).limit(3)
  end
  
  def sort_cholesterol type
    @chows = Chow.where(food_type: type).order(sat_fat: :asc).limit(3)
  end
  
  def sort_bmi type
    @chows = Chow.where(food_type: type).order(calories: :asc, carbs: :asc).limit(3)
  end
  
  def sort_bp type
    @chows = Chow.where(food_type: type).order(sodium: :asc).limit(3)
  end
    
  #Sorting functions
  

  
  
 
  
  private
  
  check = "\xE2\  x98\x90" # "☐"
  
  # def gen_pdf(items)
  #   Prawn::Document.new do
  #     items.each do |item|
  #       text "#{check} #{item.name}"
  #     end.render
  #   end
  # end
        
end
