class FieldsController < ApplicationController
  def index
    @fields = Field.all
  end

  def show
    @fields = Field.find(params[:id])
  end

  def new
    @field = Field.new
  end

  def create
    @field = Field.new(field_params)
    if @field.save
      redirect_to fields_path
    else
      render :new
    end
  end

  def edit
    @field = Field.find(params[:id])
  end

  def update
    @field = Field.find(params[:id])
    if @field.update_attributes(field_params)
        redirect_to fields_path
    else
      render :edit
    end
  end

  def destroy
    @field = Field.find(params[:id])
    @field.destroy
      redirect_to fields_path
  end
end

private 
    def field_params
      params.require(:field).permit(:name, :team, :league, :address)
    end
