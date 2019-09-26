class Contact < ApplicationRecord
  validates :content, length: {in: 1..140}
  with_options presence: true do
    validates :name
    validates :email
  end
end
