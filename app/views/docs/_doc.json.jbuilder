json.extract! doc, :id, :title, :content, :city, :address, :created_at, :updated_at
json.url doc_url(doc, format: :json)