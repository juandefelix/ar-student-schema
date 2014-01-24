require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  validates :email, :uniqueness => true # :format => { :with => /\A\w+\@\w+.\w{2}/, :message => "don't be a jerk"}
  validates_format_of :email, :with => /\w+\@\w+.\w{2}/,
    :message => "Insert a valid email"
  validate :valid_age?
  validate :valid_phone?
  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end

  def valid_age?
    if age < 5
      errors.add(:birthday, "student can't be toddler")
    end
  end

  def valid_phone?
    if phone.gsub(/[\D]/, '').size < 10
      errors.add(:phone, "phone must have at least 10 digits!")
    end
  end
end

# s =  Student.new({first_name: "Happy", last_name: "Gilmore", gender:'male'})
# p s.name
