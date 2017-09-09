module RandomData
  def self.random_sentence
    strings = []
    rand(3..8).times do
      word = Faker::Pokemon.location
      strings << word
    end

    sentence = strings.join(" ")
    sentence.capitalize << "."
  end
end
