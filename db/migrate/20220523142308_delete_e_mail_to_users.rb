class DeleteEMailToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :e_mail
  end
end
