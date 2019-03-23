class RemoveFailyNameKanaFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :faily_name_kana, :string
  end
end
