class CreateJoinTableSubjectRegistration < ActiveRecord::Migration
  def change
    create_join_table :subjects, :registrations do |t|
      # t.index [:subject_id, :registration_id]
      # t.index [:registration_id, :subject_id]
    end
  end
end
