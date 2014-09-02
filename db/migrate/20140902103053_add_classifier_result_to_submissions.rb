class AddClassifierResultToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :classifier_result, :boolean, default: nil
  end
end
