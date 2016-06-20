json.array!(@photographs) do |photograph|
  json.extract! photograph, :id, :title, :technic, :dimentions, :year
  json.url photograph_url(photograph, format: :json)
end
