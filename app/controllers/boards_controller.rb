class BoardsController < ApplicationController
 def new
  @board = Board.new
 end

 def create
  b = Board.new(params[:board].permit(:length, :width))
  b.customer = current_user
  b.save
 end
end
