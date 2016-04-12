json.array!(@lunches) do |lunch|
  json.extract! dinner, :id, :date, :salada1, :salada2, :accompaniment1, :accompaniment2, :accompaniment3, :garnish, :protein1, :protein2, :protein3, :dessert, :juice
  json.url lunch_url(lunch, format: :json)
end
