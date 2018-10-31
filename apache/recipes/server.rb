package 'apache2'

file '/var/www/html/index.html' do
  content '<h1>Hello World</h1>'
end


service 'apache2' do 
  action [ :enable, :start]
end
