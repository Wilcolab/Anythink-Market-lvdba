class SetDefaultValueForImageInItem < ActiveRecord::Migration[6.1]
  def up
    change_column(:items, :image, :string,  :default => "placeholder.png")
  end
  def down
    change_column(:items, :image, :string)
  end
end
