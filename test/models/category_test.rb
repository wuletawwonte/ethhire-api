# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "should not save category without name" do
    category = Category.new
    assert_not category.save
  end

  test "should save category with name" do
    category = Category.new(name: "Test")
    assert category.save
  end

  test "should not save category with name less than 3 characters" do
    category = Category.new(name: "Te")
    assert_not category.save
  end
end
