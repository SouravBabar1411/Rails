json.extract! product, :id, :productname, :quantity, :brand, :prize, :mandate, :expdate, :created_at, :updated_at
json.url product_url(product, format: :json)
