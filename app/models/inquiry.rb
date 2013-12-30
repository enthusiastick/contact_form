class Inquiry < ActiveRecord::Base
  validates_presence_of :email, :subject, :description, :firstname, :lastname
end
