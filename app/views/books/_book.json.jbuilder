json.extract! book, :id, :title, :press, :comment, :created_at, :updated_at
json.url book_url(book, format: :json)
