class AddDoctorResultToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :doctor_result, :boolean, default: nil
  end
end
