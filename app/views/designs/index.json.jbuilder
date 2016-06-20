json.array!(@designs) do |design|
  json.extract! design, :id, :title, :technic, :dimentions, :year
  json.url design_url(design, format: :json)
end
