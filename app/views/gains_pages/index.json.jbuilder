json.array!(@gains_pages) do |gains_page|
  json.extract! gains_page, :id, :title, :body
  json.url gains_page_url(gains_page, format: :json)
end
