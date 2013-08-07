# == Summary
#
# The controller for the +composition+ class, which manages CRUD for 
# +compositions+.
#
class CompositionsController < ApplicationController

  # Lists all of the current compositions.
  def index
    @compositions = Composition.all
  end

  # Generates a form for a new composition.
  def new
    @composition = Composition.new
  end
  
  # Creates a new +composition+ from the given params.
  def create
    @composition = Composition.new(params[:composition])

    begin
      Composition.transaction do
        @composition.save!
      end
      redirect_to compositions_path and return
    rescue ActiveRecord::RecordInvalid, ActiveRecord::RecordNotSaved
      render :template => 'compositions/new'
    end
  end

end
