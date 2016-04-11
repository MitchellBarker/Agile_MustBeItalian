class ChowsController < ApplicationController
  
  def new
  end
  
  def index
    @chows = Chow.all
    
    @types = Chow.pluck :food_type
    @types = @types.uniq
  end
  
  def import
    Chow.import(params[:file])
    redirect_to chows_index_path, notice: "File imported."
  end#I am the tophat man
end
