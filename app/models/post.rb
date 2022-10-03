class Post < ApplicationRecord
    validates :title,   presence:  true
    validates :content, length:  {minimum: 250 }
    validates   :summary,  length:  {maximum:  250}
    validates  :category,  inclusion: { in:  %w(Fiction  Non-Fiction)}
    validates  :is_clickbait?

custom_validations = ["Won't Beleve", "Secret", "Top[number]",  "Guess"]

def is_clickbait? 
if custom_validations.none? { |pat| pat.match title}
eerors.add(:title, "must be clickbait")
end 
end

