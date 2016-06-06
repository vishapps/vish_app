== README ==
This is the sample application exercise project for vish_app, created following <br>
Rails Tutorial by Michael Hartl. You can checkout his tutorials in this link-<br>, 

This is the sample application for the
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](http://www.railstutorial.org/)
by [Michael Hartl](http://www.michaelhartl.com/).<br>

Ruby version is- <br>
ruby 2.2.1p85 (2015-02-26 revision 49769) <br>

Covered topics are- Static pages, Filling in the layout, Modeling users, <br>
Sign up, Log in, log out, Updating, showing, and deleting users, <br>
Account activation and password reset, User microposts, Following users.<br>

Used gems are-

gem 'rails',        '4.2.2'<br>
gem 'sass-rails',   '5.0.2'<br>
gem 'uglifier',     '2.5.3'<br>
gem 'coffee-rails', '4.1.0'<br>
gem 'jquery-rails', '4.0.3'<br>
gem 'turbolinks',   '2.3.0'<br>
gem 'jbuilder',     '2.2.3'<br>
gem 'sdoc',         '0.4.0', group: :doc<br>

group :development, :test do<br>
  gem 'sqlite3',     '1.3.9'<br>
  gem 'byebug',      '3.4.0'<br>
  gem 'web-console', '2.0.0.beta3'<br>
  gem 'spring',      '1.1.3'<br>
end
<br>
group :test do<br>
  gem 'minitest-reporters', '1.0.5'<br>
  gem 'mini_backtrace',     '0.1.3'<br>
  gem 'guard-minitest',     '2.3.1'<br>
end<br>

group :production do<br>
  gem 'pg',             '0.17.1'<br>
  gem 'rails_12factor', '0.0.2'<br>
end