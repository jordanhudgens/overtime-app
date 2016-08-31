class User < ActiveRecord::Base
	has_many :posts
	has_many :audit_logs

  has_many :hands_associations, class_name: 'Hand'
  has_many :hands, through: :hands_associations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :phone, :ssn, :company

  PHONE_REGEX = /\A[0-9]*\Z/

  validates_format_of :phone, with: PHONE_REGEX

  validates :phone, length: { is: 10 }
  validates :ssn, length: { is: 4 }
  validates_numericality_of :ssn

  def full_name
  	last_name.upcase + ", " + first_name.upcase
  end
end
