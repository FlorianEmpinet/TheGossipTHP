class PrivateMessage < ApplicationRecord
    validates :content, presence: true
    belongs_to :sender, class_name: "User"
    has_many :recipient, class_name: "User", through: :pm_users
end
