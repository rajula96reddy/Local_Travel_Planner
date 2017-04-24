class DriversController < ApplicationController
  before_action :set_driver, only: [:show, :edit, :update, :destroy]

  # GET /drivers
  # GET /drivers.json
  def index
    @drivers = Driver.all
    if params[:search]
      @drivers = Driver.search(params[:search])
    end
  end

  # GET /drivers/1
  # GET /drivers/1.json
  def show
  end

  # GET /drivers/new
  def new
    @driver = Driver.new
  end
  def index_1
    @drivers = Driver.where("Status='Not_Approved'").all
    if params[:search]
      @drivers = Driver.search(params[:search]).where("Status='Not_Approved'").all
    end
  end

  def index_2
    @drivers = Driver.where("Status='Approved'").all
    if params[:search]
      @drivers = Driver.search(params[:search]).where("Status='Approved'").all
    end
  end
  # GET /drivers/1/edit
  def edit
  end

  # POST /drivers
  # POST /drivers.json
  def create
    @driver = Driver.new(driver_params)
    @driver.Status = 'Not_Approved'
    respond_to do |format|
      if @driver.save
        format.html { redirect_to @driver, notice: 'Driver was successfully created.' }
        format.json { render :show, status: :created, location: @driver }
      else
        format.html { render :new }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_approved
    @driver= Driver.all
    # orders = @orders.group_by(params[:name])
    @driver.each do |driver|
      if driver.name = params[:name] and driver.Status=='Not_Approved'
    # @order = Order.find(params[:order])
      driver.Status='Approved'
      driver.save
      end
    end
    redirect_to index_2_drivers_path
  end

  # PATCH/PUT /drivers/1
  # PATCH/PUT /drivers/1.json
  def update
    respond_to do |format|
      if @driver.update(driver_params)
        format.html { redirect_to @driver, notice: 'Driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver }
      else
        format.html { render :edit }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drivers/1
  # DELETE /drivers/1.json
  def destroy
    @driver.destroy
    respond_to do |format|
      format.html { redirect_to drivers_url, notice: 'Driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver
      @driver = Driver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_params
      params.require(:driver).permit(:E_mail, :Password, :License_Number, :Aadhaar_Number, :name)
    end
end
