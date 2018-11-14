package 'apache2'

file '/var/www/html/index.html' do
  content "<h1>Hello World</h1>
  <h3>#{node['hostname']}</h3>
  <h3>#{node['ipaddress']}</h3>
  <h3>#{node['hostnamectl']['operating_system']}</h3>
"
end


service 'apache2' do 
  action [ :enable, :start]
end
