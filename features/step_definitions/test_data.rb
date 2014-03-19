Given(/^the following organizations exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:organization, name: hash[:name])
  end
end

Given(/^the following food exist:$/) do |table|
  table.hashes.each do |hash|
    producer = Organization.find_by name: hash[:producer]
    FactoryGirl.create :food, name: hash[:name], producer: producer
  end
end
