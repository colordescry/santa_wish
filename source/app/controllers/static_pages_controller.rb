class StaticPagesController < ApplicationController
  def home
  end

  def signup
    @parent = Parent.new
  end

end
