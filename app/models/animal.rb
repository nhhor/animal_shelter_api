class Animal < ApplicationRecord

    validates :name, presence: true

    validates :birthday, format: { with: /\d{4}-\d{2}-\d{2}/,
      message: "only allows numbers in yyyy-mm-dd format" }

end
