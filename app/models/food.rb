class Food < ActiveRecord::Base
  belongs_to :producer, class_name: "Organization"

  def name_with_brand
    "#{producer.name} - #{name}"
  end
end
