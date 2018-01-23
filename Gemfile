source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Зависим от рельсов 5.1.*
gem 'rails', '~> 5.1.4'

# Используй гем puma в качестве сервера приложений
gem 'puma', '~> 3.7'

# Используйте гем Uglifier для сжатия ресурсов JavaScript
gem 'uglifier', '>= 1.3.0'

group :production do
  # Гем базы данных на продакшн сервере heroku
  gem 'pg'
end

group :development, :test do
  # Вызовите гем 'byebug' в любом месте кода, чтобы остановить выполнение и получить консоль отладчика
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Гем для работы с sqlite3
  gem 'sqlite3'
end

group :development do
  # Доступ к консоли IRB на страницах исключений или с помощью <% = console%> в любом месте кода
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

# Windows не включает в себя файлы zoneinfo, поэтому свяжите гем tzinfo-data
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
