class AboutController < ApplicationController
  def index
    @testimonials = Testimonial.all
  end
end
