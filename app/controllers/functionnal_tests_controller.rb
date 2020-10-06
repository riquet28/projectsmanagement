class FunctionnalTestsController < ApplicationController

  def index
    @tests = FunctionnalTest.all
  end

  def show
    @test = FunctionnalTest.find(params[:id])
  end

  def new
    @test = FunctionnalTest.new
  end

  def create
    @test = FunctionnalTest.create(test_params)
    if @test.save
      redirect_to @test, notice: "Successfully created a test"
    else
      render :new
    end
  end

  def edit
    @test = FunctionnalTest.find(params[:id])
  end

  def update
    @test = FunctionnalTest.find(params[:id])
    if @test.update(test_params)
      redirect_to functionnal_tests_path, notice: "Successfully updated a test"
    else
      render :edit
    end
  end

  def destroy
    @test = FunctionnalTest.find(params[:id])
    @test.destroy
    redirect_to functionnal_tests_path
  end

  private

  def test_params
    params.require(:functionnal_test)
      .permit(
        :tracker,
        :title,
        :tracker_number,
        :reference,
        :url_link,
        :position
      )
  end

end
