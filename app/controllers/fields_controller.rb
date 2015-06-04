class FieldsController < ApplicationController
  def index
    @fields = Field.all
  end

  def show
    @field = Field.find(params[:id])
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
  end

  def update
  end

  def destroy
  end

  private 
    def field_params
      params.require(:field).permit(:name, :team, :league, :address)
    end
end
