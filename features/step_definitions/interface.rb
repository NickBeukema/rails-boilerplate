def admin_login(user)
  visit "/login"

  fill_in("identification", with: user.email)
  fill_in("password", with: 'abc123')

  em { click_css('.app-login') }
end

def logout
  em { click_css('.app-logout') }
end
