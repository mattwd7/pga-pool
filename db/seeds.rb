if Rails.env.development?
  AdminUser.create(
    email: "mattwd7@gmail.com",
    password: "password",
    password_confirmation: "password"
  )
  User.create(
    email: "mattwd7@gmail.com",
    password: "password",
    password_confirmation: "password"
  )
end

JSON.parse(File.read("public/static_data/all_pga_golfers.json")).each do |golfer_info|
  Golfer.create(
    first_name: golfer_info["first_name"].humanize,
    last_name: golfer_info["last_name"].humanize,
    country: golfer_info["country"].split(" ").map(&:humanize).join(" "),
    display_name: "#{golfer_info["first_name"].first}. #{golfer_info["last_name"].humanize}"
  )
end
