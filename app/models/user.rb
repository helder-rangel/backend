# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :trackable,:recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :enderecos, dependent: :destroy
  has_many :pedidos, dependent: :destroy
  has_many :entrega, dependent: :destroy
  has_many :carrinho_compra, dependent: :destroy
  
  before_validation :set_uid
  

  private 
  def set_uid
    self[:uid] = self[:email] if self[:uid].blank? && self[:email].present?
  end

 

 
  
end
