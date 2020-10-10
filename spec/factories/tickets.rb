FactoryBot.define do

  factory :ticket do
      title { "Premier test" }
      reference { "Ticket xx" }
      tracker_number { 5789 }
      url_link { "https://google.com" }
  end

end
