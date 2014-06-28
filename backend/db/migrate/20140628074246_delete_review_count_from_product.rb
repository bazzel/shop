class DeleteReviewCountFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :review_count
  end
end
