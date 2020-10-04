class FunctionnalTestsController < ApplicationController

  def index
    @tests = FunctionnalTest.all
  end

end
