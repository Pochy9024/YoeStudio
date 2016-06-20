json.array!(@draws) do |draw|
  json.extract! draw, :id, :title, :technic, :dimentions, :year
  json.url draw_url(draw, format: :json)
end
