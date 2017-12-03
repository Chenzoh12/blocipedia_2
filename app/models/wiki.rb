class Wiki < ApplicationRecord
    scope :visible_to, -> (user) { user ? all : where('wiki.private' => false) }

    validates :title, length: { minimum: 5 }, presence: true
    validates :body, length: { minimum: 20 }, presence: true
    validates :private, presence: true
    validates :user, presence: true
end
