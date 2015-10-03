class Article  < ActiveRecord::Base
  validates :title, allow_blank: true, uniqueness: true

  default_scope -> { where(name: 'a')}
end
