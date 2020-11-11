class Item < ApplicationRecord
  validates :item_name,
    length: {maximum: 40},
    presence: true
  validates :item_text,
    length: {maximum: 1000},
    presence: true
  validates :category_id,      presence: true
  validates :item_status,      presence: true
  validates :delivery_charge,  presence: true
  validates :delivery_area,    presence: true
  validates :delivery_day,     presence: true
  validates :price, 
    numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999},
    presence: true


  belongs_to :user
  belongs_to :category
  # has_many :item_images,dependent: :destroy
  # has_one :purchase_management
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :status
  belongs_to_active_hash :deliverycharge
  belongs_to_active_hash :deliveryarea
  belongs_to_active_hash :deliveryday
end