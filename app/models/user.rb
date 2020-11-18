class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: %r{\Aimage/.*\Z}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum user_type: { Teacher: 0, Student: 1 }
end
