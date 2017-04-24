class Driver < ApplicationRecord
  def self.search(keyword)
        key = "%#{keyword}%"
		columns = %w{name}
where(
  columns
    .map {|c| "#{c} like :search" }
    .join(' OR '),
  search: key
)
 
 end
end
