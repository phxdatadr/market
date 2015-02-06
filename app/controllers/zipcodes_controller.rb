class ZipcodesController < ApplicationController
  before_action :set_zipcode, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @zipcodes = Zipcode.all
    respond_with(@zipcodes)
  end

  def show
    respond_with(@zipcode)
  end

  def new
    @zipcode = Zipcode.new
    respond_with(@zipcode)
  end

  def edit
  end

  def create
    @zipcode = Zipcode.new(zipcode_params)
    @zipcode.save
    respond_with(@zipcode)
  end

  def update
    @zipcode.update(zipcode_params)
    respond_with(@zipcode)
  end

  def destroy
    @zipcode.destroy
    respond_with(@zipcode)
  end

  private
    def set_zipcode
      @zipcode = Zipcode.find(params[:id])
    end

    def zipcode_params
      params.require(:zipcode).permit(:details, :zip, :countOfCity, :cityStName, :lastLineCity, :state, :county, :lat_degree, :lon_degree, :lat, :long, :areacode, :timeZoneLabel)
    end
end
