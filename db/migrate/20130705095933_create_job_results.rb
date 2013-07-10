class CreateJobResults < ActiveRecord::Migration
  def change
    create_table :job_results do |t|

      t.timestamps
    end
  end
end
