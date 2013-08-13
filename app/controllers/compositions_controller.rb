# == Summary
#
# The controller for the +composition+ class, which manages CRUD for 
# +compositions+.
#
class CompositionsController < ApplicationController

  # Lists all of the +composition+ records in the database.
  def index
    @compositions = Composition.all
  end

  # Generates a form for a new +composition+.
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
      flash[:notice] = "#{@composition.title} successfully created."
      redirect_to compositions_path and return
    rescue ActiveRecord::RecordInvalid, ActiveRecord::RecordNotSaved
      flash[:error] = "There was an error creating the composition."
      render :template => "compositions/new"
    end
  end

  # Allows editing of a +composition+.
  def edit
    @composition = Composition.find(params[:id])
  end
  
  # Updates a +composition+'s attributes and saves.
  def update
    @composition = Composition.find(params[:id])
    begin
      Composition.transaction do
        @composition.attributes = params[:composition]
        @composition.save!
      end
      flash[:notice] = "#{@composition.title} successfully updated."
      redirect_to compositions_path and return
    rescue ActiveRecord::RecordInvalid, ActiveRecord::RecordNotSaved
      flash[:error] = "There was an error updating #{@composition.title}."
      render :template => "compositions/edit"
    end
  end
  
  # Deletes a specified +composition+.
  def destroy
    @composition = Composition.find(params[:id])
    begin
      Composition.transaction do
        @composition.destroy
      end
      flash[:notice] = "#{@composition.title} was successfully destroyed."
      redirect_to compositions_path and return
    rescue ActiveRecord::RecordInvalid
      flash[:error] = "There was an error destroying #{@composition.title}."
      redirect_to compositions_path(@composition) and return
    end
  end
  
end
