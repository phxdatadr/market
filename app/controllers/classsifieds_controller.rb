class ClasssifiedsController < ApplicationController
  before_action :set_classsified, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @classsifieds = Classsified.all
    respond_with(@classsifieds)
  end

  def show
    respond_with(@classsified)
  end

  def new
    @classsified = Classsified.new
    respond_with(@classsified)
  end

  def edit
  end

  def create
    @classsified = Classsified.new(classsified_params)
    @classsified.save
    respond_with(@classsified)
  end

  def update
    @classsified.update(classsified_params)
    respond_with(@classsified)
  end

  def destroy
    @classsified.destroy
    respond_with(@classsified)
  end

  private
    def set_classsified
      @classsified = Classsified.find(params[:id])
    end

    def classsified_params
      params.require(:classsified).permit(:title, :postedDate, :details, :expireDate, :categoryid, :contactId, :status)
    end
end
