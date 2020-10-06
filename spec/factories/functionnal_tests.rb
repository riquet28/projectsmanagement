FactoryBot.define do

  factory :functionnal_test do
      title { "Premier test" }
      reference { "Ticket xx" }
      tracker_number { 5789 }
      url_link { "https://google.com" }
  end

end
