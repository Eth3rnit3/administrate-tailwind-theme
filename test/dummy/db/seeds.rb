User.destroy_all

country_codes = %w[fr us gb de it]
5.times do |i|
  user = User.create!(
    email: "user#{i + 1}@example.com",
    password: "@Password#{i + 1}",
    admin: [true, false].sample,
    age: rand(18..100),
    country_code: country_codes.pop
  )

  10.times do |j|
    message = user.messages.create!(
      title: "Message #{j + 1} of user #{i + 1}",
      content: "Content of message Content of message Content of message Content of message Content of message Content of message Content of message Content of message Content of message Content of message #{j + 1}.",
      archived: [true, false].sample
    )

    10.times do |j|
      message.comments.create!(
        content: "Content of comment Content of comment Content of comment Content of comment Content of comment Content of comment Content of comment Content of comment Content of comment Content of comment #{j + 1}.",
        user: User.all.sample
      )
    end
  end
end
