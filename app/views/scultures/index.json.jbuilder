json.array!(@scultures) do |sculture|
  json.extract! sculture, :id, :title, :technic, :dimentions, :year
  json.url sculture_url(sculture, format: :json)
end
