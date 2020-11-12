class User < ApplicationRecord
  validates :name, presence: true,
                   length: { maximum: 15 }
  validates :email, presence: true,
                    format: /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/
                    # /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  has_secure_password
#   user = User.find_by(params[:email])
# if user && user.authenticate(params[:password])
#   # 与えられたemail, passwordのユーザーが存在する場合の処理をここに記述する。
validates :password, presence: true,
                     #length: { minimum: 8, maximum: 32 }
                     format: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i
# /\A(?=\d{0,99}+[a-z])(?=[a-z]{0,99}+\d)[a-z\d]{8,100}+\z/i
end

