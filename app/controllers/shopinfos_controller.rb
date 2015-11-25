class ShopinfosController < ApplicationController
  def opentime
    @shop = Shopinfo.all
  end

  def openshop
    @open_shop_time =Shopinfo.all
  end
end
