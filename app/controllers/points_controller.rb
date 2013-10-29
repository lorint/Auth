class PointsController < ApplicationController
	def index
		@points = Point.all
	end

	def create
		g = Group.find(params[:group_id])
		p = g.points.new(params[:point].permit(:name, :descrip, :lat, :lon))
		# Mark the current user as the one who added this point
		p.user = current_user
		p.save
		redirect_to g	# Go back to the group this point was added for
	end
end
