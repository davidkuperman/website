class Request < ActiveRecord::Base

  default_scope :order => 'created_at desc'

 
  validates :name, :lastname, :email, :phone, :company, :role, :comments, :presence => { :message => "no puede ser vacio"}

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :format => { :with => email_regex, :message => "es invalido"}

  validates :comments, :length => {:maximum => 200, :message => "muy largo. Maximo 200 caracteres."}

end
