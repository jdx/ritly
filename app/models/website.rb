class Website < ActiveRecord::Base
  validates :url, uniqueness: true
end
