json.extract! report, :id, :company_id, :period_id, :standard_id, :currency_id, :created_at, :updated_at
json.url report_url(report, format: :json)
