class Food < ActiveRecord::Base
  belongs_to :producer, class_name: "Organization"
end
