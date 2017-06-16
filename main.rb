require_relative 'phone'
require_relative 'store'
require_relative 'product'

phone1 = Phone.new('LG G6', 899, 1, memory: '16gb', camera: '12mp', bluetooth: true, os: 'android')
phone2 = Phone.new('iPhone 7', 999, 1, memory: '32gb', camera: '12mp', bluetooth: true, os: 'iOS')
phone3 = Phone.new('Nokia N95', 65, 0, memory: '8gb', camera: '3mp', bluetooth: true, os: 'symbian')
noviniz = [phone1, phone2, phone3]
store1 = Store.new('Univerzalno.ba', 'Milana Preloga 12', 'www.univerzalno.ba', noviniz.length)

puts phone1, phone2, phone3

puts store1






