class Restaurant < ApplicationRecord
  # line1, line2,city,country,postal_code
  #def full_address
  #result = ''
  #result += fields
  #end
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
