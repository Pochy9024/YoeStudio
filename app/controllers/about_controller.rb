class AboutController < ApplicationController
  def index
    @testimonials = Testimonial.paginate :page => params[:page]
  end
end
