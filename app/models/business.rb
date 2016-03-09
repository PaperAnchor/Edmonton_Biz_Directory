class Business < ActiveRecord::Base
  belongs_to :category
  accepts_nested_attributes_for :category

  extend FriendlyId
  friendly_id :name, use: :slugged

  searchkick

  has_attached_file :logo, styles: { large: "500x500", medium: "250x250>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end
