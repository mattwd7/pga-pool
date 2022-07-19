if Rails.env.development?
  AdminUser.create!(
    email: "mattwd7@gmail.com",
    password: "password",
    password_confirmation: "password"
  )
end
