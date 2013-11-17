json.array!(@category_dbs) do |category_db|
  json.extract! category_db, :cid, :catname, :description
  json.url category_db_url(category_db, format: :json)
end
