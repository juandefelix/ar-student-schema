require_relative '../app/models/teacher'
require 'debugger'


module TeachersImporter
  def self.import
    # i18n.enforce_available_locales = false

    Teacher.create!(first_name: "teacher1",
          last_name: "last1",
          email: "teacher1@asdf.com",
          address: "teach1address",
          phone: "1234567890")




    Teacher.create({ "first_name" => "teacher2",
          "last_name" => "last2",
          "email" => "teacher2@asdf.com",
          "address" => "teach2address",
          "phone" => "2234567890"
        })

    Teacher.create({ "first_name" => "teacher 3",
          "last_name" => "last3",
          "email" => "teacher3@asdf.com",
          "address" => "teach3address",
          "phone" => "3234567890"
        })

    Teacher.create({ "first_name" => "teacher4",
          "last_name" => "last4",
          "email" => "teacher4@asdf.com",
          "address" => "teach4address",
          "phone" => "4234567890"
        })

    Teacher.create({ "first_name" => "teacher5",
          "last_name" => "last5",
          "email" => "teacher5@asdf.com",
          "address" => "teach5address",
          "phone" => "5234567809"
        })

    Teacher.create({ "first_name" => "teacher6",
          "last_name" => "last6",
          "email" => "teacher6@asdf.com",
          "address" => "teach6address",
          "phone" => "6234567809"
        })

    Teacher.create({ "first_name" => "teacher7",
          "last_name" => "last7",
          "email" => "teacher7@asdf.com",
          "address" => "teach7address",
          "phone" => "7234567890"
        })

    Teacher.create({ "first_name" => "teacher8",
          "last_name" => "last8",
          "email" => "teacher8@asdf.com",
          "address" => "teach8address",
          "phone" => "8234567809"
        })

    Teacher.create({ "first_name" => "teacher9",
          "last_name" => "last9",
          "email" => "teacher9@asdf.com",
          "address" => "teach9address",
          "phone" => "9234567809"
        })
  end
end
