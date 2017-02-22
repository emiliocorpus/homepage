class Reaction < ActiveRecord::Base
  belongs_to :comment
  belongs_to :comment_reply
end
