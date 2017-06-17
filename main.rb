require_relative 'phone'
require_relative 'store'

phone1 = Phone.new('LG G6', 899, 1, memory: '16gb', ram: '3gb', camera: '12mp', bluetooth: true, os: 'android')
phone2 = Phone.new('iPhone 7', 999, 1, memory: '32gb', ram: '4gb', camera: '12mp', bluetooth: true, os: 'iOS')
phone3 = Phone.new('Nokia N95', 65, 0, memory: '8gb', ram: '512mb', camera: '3mp', bluetooth: true, os: 'symbian')
phone4 = Phone.new('Siemens M55', 32, 0, memory: '120mb', ram: '64mb', camera: 'vga', bluetooth: false, os: 'other')
phone5 = Phone.new('Samsung Galaxy S4', 399, 1, memory: '16gb', ram: '1gb', camera: '8mp', bluetooth: true, os: 'android')
niz = [phone1, phone2, phone3, phone4, phone5]

count_in_stock = niz.select { |p| p.model if p.in_stock > 0 }
store1 = Store.new('Univerzalno.ba', 'Milana Preloga 12', 'www.univerzalno.ba', niz.length)
puts store1
print 'Total Phones in stock: ' 
puts count_in_stock.length
puts '************************************'

expensive_phones = niz.select { |p| p.model if p.price >= 899 } 
print 'Expensive Phones: ' 
puts expensive_phones.length
puts '===================================='
puts expensive_phones

cheap_phones = niz.select { |p| p.model if p.price < 400 }
print 'Cheap Phones: '
puts cheap_phones.length
puts '===================================='
puts cheap_phones

out_of_stock_phones = niz.select { |p| p.model if p.in_stock == 0 }
print 'Out of Stock: '
puts out_of_stock_phones.length
puts '===================================='
puts out_of_stock_phones

android_phones = niz.select { |p| p.model if p.specs.has_value?('android') }
print 'Phones with Android OS: '
puts android_phones.length
puts '===================================='
puts android_phones

bluetooth_phones = niz.select { |p| p.model if p.specs.has_value?(true) }
print 'Phones with Bluetooth: '
puts bluetooth_phones.length
puts '===================================='
puts bluetooth_phones



