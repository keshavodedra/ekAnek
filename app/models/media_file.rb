class MediaFile < ApplicationRecord
  belongs_to :user
  
  has_one_attached :file, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :file, presence: true, blob: {
    content_type: ['image/png', 'image/jpg', 'image/jpeg', 'application/pdf', 'text/plain'],
    size_range: 5.kilobytes...1024.megabytes 
  }

  scope :latest, -> { order(:created_at => :desc)}

end