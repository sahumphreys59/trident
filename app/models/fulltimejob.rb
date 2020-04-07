class Fulltimejob < ApplicationRecord
	validates :title, presence: true
  validates :location, presence: true
  validates :details, presence: true
end
