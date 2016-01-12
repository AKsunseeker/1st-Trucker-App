namespace :populate do
  desc "Creating Dispatchers, 1000"
  task dispatchers: :environment do
    Dispatcher.populate(1000) do |dispatcher|
      dispatcher.name = Faker::Name.name
      dispatcher.phone = Faker::PhoneNumber.phone_number
      dispatcher.email = Faker::Internet.email
    end

    puts "A thousand rand dispatchers brah, dispatcher count is now #{Dispatcher.count}"
  end



  desc "Creating Drivers, 1000"
  task drivers: :environment do
    Driver.populate(1000) do |driver|
      driver.name = Faker::Name.name
      driver.phone = Faker::PhoneNumber.phone_number
      driver.email = Faker::Internet.email
      driver.next_available_time = Faker::Time.between(DateTime.now + 1, DateTime.now)
      driver.next_available_location = Faker::Address.city
    end

    puts "A thousand Drivers brah, Drivers count is now #{Driver.count}"
  end


end

