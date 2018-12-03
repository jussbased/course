class AddTrackableAndLockableToDevise < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :sign_in_count, :integer, default: 0, null: false
  	add_column :users, :current_sign_in_at, :datetime
  	add_column :users, :current_sign_in_ip, :string
  	add_column :users, :last_sign_in_ip, :string
  	add_column :users, :last_sign_in_at, :datetime, default: Time.now
  	add_column :users, :locked, :boolean, default: false
  end
end
