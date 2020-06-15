require 'csv'

CSV.generate do |csv|
  column_names = %w(isbn title price publish published cd)
  csv << column_names
  @hon.each do |user|
    csv << column_names.map { |column_name| user[column_name] }
  end
end
