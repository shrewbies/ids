json.array!(@alerts) do |alert|
  json.extract! alert, :id, :title, :description, :sid
  json.url alert_url(alert, format: :json)
end
