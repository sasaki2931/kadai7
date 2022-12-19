class SharesController < ApplicationController
  def index
  end

  def new
    @share = Share.new
  end

end
