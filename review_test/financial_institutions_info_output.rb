# frozen_string_literal: true

FINANCIAL_INSTITUTIONS_API_URL = "https://sample-accounts-api.herokuapp.com"

require "json"
require 'httpclient'
require './financial_institutions_user_repository'
require './financial_institutions_repository'
require './financial_institutions_user_service'
require './financial_institutions_service'
require './financial_institutions_info_presenter'


puts "ユーザーIDを入力してください"
user_id = gets.chomp.to_s
presenter = FinancialInstitutionsInfoPresenter.new(user_id: user_id)
line = "-----------------------------"

puts line
puts "ご登録中のユーザー名"
puts "#{presenter.user_name}"
puts line

puts "各登録金融機関名及び、各登録金融機関の残高"
puts line

presenter.financial_institutions.map do |el|
  puts "金融機関名: #{el[:name]}"
  puts "残高: #{el[:balance]}"
  puts line
end