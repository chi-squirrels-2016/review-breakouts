class Vote < ActiveRecord::Base
  belongs_to :quote
  belongs_to :voter, class_name: "User"
end
