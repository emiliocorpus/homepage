class Comment < ActiveRecord::Base
  belongs_to :article
  has_many :reactions, dependent: :destroy
  has_closure_tree
  # belongs_to :parent, class_name: "Comment"
  # has_many   :replies, class_name: "Comment", foreign_key: :parent_id, dependent: :destroy

end
