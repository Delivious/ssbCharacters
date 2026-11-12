class Upvote < ApplicationRecord
  belongs_to :character
  belongs_to :account
end
