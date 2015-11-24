class ShopinfosController < ApplicationController
  def opentime
    @shop = Shopinfo.all
  end
end
