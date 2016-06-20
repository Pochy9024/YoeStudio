json.array!(@paintings) do |painting|
  json.extract! painting, :id, :title, :technic, :dimentions, :year
  json.url painting_url(painting, format: :json)
end
