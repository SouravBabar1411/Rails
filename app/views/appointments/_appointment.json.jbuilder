json.extract! appointment, :id, :appointment_date, :p_name, :h_name, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
