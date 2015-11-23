class OpentimesController < ApplicationController
  def timetest
    @opentimes = Opentime.all
  end
end
