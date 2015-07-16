class AddEmailToPages < ActiveRecord::Migration
  def change
    add_column :pages, :email, :string
  end
end
