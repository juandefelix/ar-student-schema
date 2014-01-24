require_relative '../../db/config'

class Teacher < ActiveRecord::Base
# implement your Teacher model here
  validates :email, :uniqueness => true # :format => { :with => /\A\w+\@\w+.\w{2}/, :message => "don't be a jerk"}
  validates_format_of :email, :with => /\w+\@\w+.\w{2}/,
    :message => "Insert a valid email"
  validate :valid_phone?
  
  def name
    "#{first_name} #{last_name}"
  end

  def valid_phone?
    if phone.gsub(/[\D]/, '').size < 10
      errors.add(:phone, "phone must have at least 10 digits!")
    end
  end
end

