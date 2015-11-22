class ShopsController < ApplicationController
  def show
    @shops = Shop.all
  end

  def belongs
    @opentimes = OpenTime.all
  end

end
