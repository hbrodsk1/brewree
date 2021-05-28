class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :brewery
      t.boolean :would_recommend
      t.text :comment

      t.timestamps
    end
  end
end
