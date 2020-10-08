class FunctionnalTestsController < ApplicationController
  before_action :set_functionnal_test, only: [:show, :edit, :update, :destroy]

  def index
    @tests = FunctionnalTest.all
    @test = FunctionnalTest.new
  end

  def show
  end

  def new
    @test = FunctionnalTest.new
  end

  def create
    @test = FunctionnalTest.create(test_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: "Successfully created a test" }
        #format.json { render :show, location: @test }
        format.js
      else
        format.html { render :new, notice: "Successfully created a test" }
        #format.json { render json: @test.errors }
        format.js
      end
    end
  end

  def edit
  end

  def update
    if @test.update(test_params)
      redirect_to functionnal_tests_path, notice: "Successfully updated a test"
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to functionnal_tests_path, notice: "Successfully destroyed a test"
  end

  private

    def set_functionnal_test
      @test = FunctionnalTest.find(params[:id])
    end

    def test_params
      params.require(:functionnal_test).permit(:tracker, :title, :tracker_number, :reference,
                                               :url_link, :position, :description)
    end

end
