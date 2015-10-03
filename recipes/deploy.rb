#
# Cookbook Name:: mm15ro
# Recipe:: deploy
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

execute 'download' do
    command 'wget -q https://s3-eu-west-1.amazonaws.com/mmweb1-backup/file.html -O /var/www/file.html'
end

service 'apache2' do
    action :reload
end
