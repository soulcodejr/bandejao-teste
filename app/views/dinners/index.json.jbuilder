json.array!(@dinners) do |dinner|
  json.extract! dinner, :id, :date, :soup, :accompaniment1, :accompaniment2, :accompaniment3, :garnish, :protein1, :protein2, :dessert, :juice
  json.url dinner_url(dinner, format: :json)
end
