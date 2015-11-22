class OpenTimeController < ApplicationController
  def belongs
    @opentimes = OpenTime.all
  end

end
