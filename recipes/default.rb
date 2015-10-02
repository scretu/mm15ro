#
# Cookbook Name:: mm15ro
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


%W(htop sl).each do |pack|
   package pack do
    action :install
   end
end
