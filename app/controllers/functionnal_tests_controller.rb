class FunctionnalTestsController < ApplicationController

  before_action :set_functionnal_test, only: [:show, :edit, :update, :destroy, :move]

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
        format.js
      else
        format.html { render :new, notice: "Successfully created a test" }
        format.js
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to @test, notice: "Successfully updated test" }
        format.json { render :show, status: :ok, location: @test}
      else
        format.html { render :new, notice: "Successfully created a test" }
        format.json { render json: @test.errors}
      end
    end
  end

  def destroy
    @test.destroy
    redirect_to functionnal_tests_path, notice: "Successfully destroyed a test"
  end

  def move
    @test.insert_at(params[:position].to_i)
    head :ok
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
