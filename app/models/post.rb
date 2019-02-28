class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :post_categories, reject_if: :all_blank
  accepts_nested_attributes_for :categories, reject_if: :all_blank
  accepts_nested_attributes_for :users, reject_if: :all_blank

  # custom association writer to instantiate associations
  # with custom logic, e.g. unique by name
  # using nested params associations


end
