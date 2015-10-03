#
# Cookbook Name:: mm15ro
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'htop' do
    action :install
end

execute 'mysqldump' do
    command 'mysqldump -hmm15ro.cioi47aioaea.eu-west-1.rds.amazonaws.com -uroot -ppasswordXY mm15ro > /home/silviancretu/mm15ro.sql'
    action :nothing
    not_if { File.exists?('/home/silviancretu/mm15ro.sql') }
end

%W(mysql-client-core-5.6 mysql-client-5.6).each do |pack|
    package pack do
        action :install
        notifies :run, 'execute[mysqldump]', :delayed
    end
end
