json.array!(@supercars) do |supercar|
  json.extract! supercar, :id, :name, :city
  json.url supercar_url(supercar, format: :json)
end
