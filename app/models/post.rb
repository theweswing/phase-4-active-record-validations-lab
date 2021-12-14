class Post < ApplicationRecord
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
  validates :title, presence: true

  #   validate :is_clickbait

  #   def is_clickbait
  #     unless ["Won't Believe", 'Secret', 'Top', 'Guess'].include?(title)
  #       errors.add(:title, 'Not clickbaity enough')
  #     end
  #   end

  #   def is_clickbait
  #     unless title.include?("Won't Believe") || title.include?('Secret') ||
  #              title.include?('Top') || title.include?('Guess')
  #       errors.add(:title, 'Not clickbaity enough')
  #     end
  #   end
end
