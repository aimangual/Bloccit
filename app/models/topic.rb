class Topic < ActiveRecord::Base
    has_many :posts
    
    validates :title, length: { minimum: 5 }, presence: true
    validates :topic, presence: true
    validates :user, presence: true
end
