require_relative 'phone'
require_relative 'store'

phone1 = Phone.new('LG G6', 899, 1, memory: '16gb', ram: '3gb', camera: '12mp', bluetooth: true, os: 'android')
phone2 = Phone.new('iPhone 7', 999, 1, memory: '32gb', ram: '4gb', camera: '12mp', bluetooth: true, os: 'iOS')
phone3 = Phone.new('Nokia N95', 65, 0, memory: '8gb', ram: '512mb', camera: '3mp', bluetooth: true, os: 'symbian')
phone4 = Phone.new('Siemens M55', 32, 0, memory: '120mb', ram: '64mb', camera: 'vga', bluetooth: false, os: 'other')
phone5 = Phone.new('Samsung Galaxy S4', 399, 1, memory: '16gb', ram: '1gb', camera: '8mp', bluetooth: true, os: 'android')
phones = [phone1, phone2, phone3, phone4, phone5]

def display_store_info(phones)
  count_in_stock = phones.select { |p| p.model if p.in_stock > 0 }
  store1 = Store.new('Univerzalno.ba', 'Milana Preloga 12', 'www.univerzalno.ba', phones.length)
  puts store1
  print 'Total Phones in stock: ' 
  puts count_in_stock.length
  puts '************************************'
end

def display_expensive_phones(phones)
	expensive_phones = phones.select { |p| p.model if p.price >= 899 } 
  print 'Expensive Phones: ' 
  puts expensive_phones.length
  puts '===================================='
  puts expensive_phones
end

def display_cheap_phones(phones)
	cheap_phones = phones.select { |p| p.model if p.price < 400 }
  print 'Cheap Phones: '
  puts cheap_phones.length
  puts '===================================='
  puts cheap_phones
end

def display_out_of_stock_phones(phones)
	out_of_stock_phones = phones.select { |p| p.model if p.in_stock == 0 }
  print 'Out of Stock: '
  puts out_of_stock_phones.length
  puts '===================================='
  puts out_of_stock_phones
end

def display_android_phones(phones)
	android_phones = phones.select { |p| p.model if p.specs.has_value?('android') }
  print 'Phones with Android OS: '
  puts android_phones.length
  puts '===================================='
  puts android_phones
end

def display_phones_with_bluetooth(phones)
	bluetooth_phones = phones.select { |p| p.model if p.specs.has_value?(true) }
  print 'Phones with Bluetooth: '
  puts bluetooth_phones.length
  puts '===================================='
  puts bluetooth_phones
end

display_store_info(phones)
display_expensive_phones(phones)
display_cheap_phones(phones)
display_out_of_stock_phones(phones)
display_android_phones(phones)
display_phones_with_bluetooth(phones)