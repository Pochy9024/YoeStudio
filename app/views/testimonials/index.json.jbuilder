json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :title, :text, :author
  json.url testimonial_url(testimonial, format: :json)
end
