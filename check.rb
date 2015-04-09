


# The formula verifies a number against its included check digit, which is usually appended to a partial
# account number to generate the full account number. This full account number must pass the following test:

# from the rightmost digit, which is the check digit, moving left, double the value of every second digit

# if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14),
# then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).

# take the sum of all the digits if and only if the total modulo 10 is equal to 0 then the number is valid



card_number = "4929735477250543" # 70

# known valid numbers
#p card_number = "5541808923795240" # 70
#p card_number = '6011797668867828' # 80
#p card_number = '4024007136512380' # 50

# known invalid numbers
#p card_number = '5541801923795240' # 65
#p card_number = '4024007106512380' # 44
#p card_number = '6011797668868728' # 81

puts "  Starting number: #{card_number}"
puts

temp_card_number = ""

valid = false
sum = 0


# 0
if card_number[0].to_i.*(2) > 9

  temp = card_number[0].to_i.*(2)
  temp = temp.to_s
  temp = temp[0].to_i + temp[1].to_i

  sum += temp
  temp_card_number = temp.to_s
else
  sum += card_number[0].to_i.*(2)
  temp_card_number = card_number[0].to_i.*(2).to_s
end

# p 'after 0'
# p card_number
# p temp_card_number
# p sum

# 1
sum += card_number[1].to_i
temp_card_number << card_number[1]

# p 'after 1'
# p card_number
# p temp_card_number
# p sum

# 2
if card_number[2].to_i.*(2) > 9

  temp = card_number[2].to_i.*(2)
  temp = temp.to_s
  temp = temp[0].to_i + temp[1].to_i

  sum+= temp
  temp_card_number << temp.to_s

else
  sum += card_number[2].to_i.*(2)
  temp_card_number << card_number[2].to_i.*(2).to_s
end

# p 'after 2'
# p card_number
# p temp_card_number
# p sum

# 3
sum += card_number[3].to_i
temp_card_number << card_number[3]

# p 'after 3'
# p card_number
# p temp_card_number
# p sum

# 4
if card_number[4].to_i.*(2) > 9

  temp = card_number[4].to_i.*(2)
  temp = temp.to_s
  temp = temp[0].to_i + temp[1].to_i

  sum += temp

  temp_card_number << temp.to_s

else
  sum += card_number[4].to_i.*(2)
  temp_card_number << card_number[4].to_i.*(2).to_s
end

# p 'after 4'
# p card_number
# p temp_card_number
# p sum

# 5
sum += card_number[5].to_i
temp_card_number <<  card_number[5]

# p 'after 5'
# p card_number
# p temp_card_number
# p sum

# 6
if card_number[6].to_i.*(2) > 9

  temp = card_number[6].to_i.*(2)
  temp = temp.to_s
  temp = temp[0].to_i + temp[1].to_i

  sum += temp
  temp_card_number << temp.to_s

else
  sum += card_number[6].to_i.*(2)
  temp_card_number << card_number[6].to_i.*(2).to_s
end

# p 'after 6'
# p card_number
# p temp_card_number
# p sum

# 7
sum += card_number[7].to_i
temp_card_number << card_number[7]

# p 'after 7'
# p card_number
# p temp_card_number
# p sum

# 8
if card_number[8].to_i.*(2) > 9

  temp = card_number[8].to_i.*(2)
  temp = temp.to_s
  temp = temp[0].to_i + temp[1].to_i

  sum += temp
  temp_card_number << temp.to_s

else
  sum += card_number[8].to_i.*(2)
  temp_card_number << card_number[8].to_i.*(2).to_s
end

# p 'after 8'
# p card_number
# p temp_card_number
# p sum

# 9
sum += card_number[9].to_i
temp_card_number << card_number[9]

# p 'after 9'
# p card_number
# p temp_card_number
# p sum


# 10
if card_number[10].to_i.*(2) > 9

  temp = card_number[10].to_i.*(2)
  temp = temp.to_s
  temp = temp[0].to_i + temp[1].to_i

  sum += temp
  temp_card_number << temp.to_s

else
  sum += card_number[10].to_i.*(2)
  temp_card_number << card_number[10].to_i.*(2).to_s
end

# p 'after 10'
# p card_number
# p temp_card_number
# p sum

# 11
sum += card_number[11].to_i
temp_card_number << card_number[11]

# p 'after 11'
# p card_number
# p temp_card_number
# p sum

# 12
if card_number[12].to_i.*(2) > 9

  temp = card_number[12].to_i.*(2)
  temp = temp.to_s
  temp = temp[0].to_i + temp[1].to_i

  sum += temp
  temp_card_number << temp.to_s

else
  sum += card_number[12].to_i.*(2)
  temp_card_number << card_number[12].to_i.*(2).to_s
end

# p 'after 12'
# p card_number
# p temp_card_number
# p sum

# 13
sum += card_number[13].to_i
temp_card_number << card_number[13]

# p 'after 13'
# p card_number
# p temp_card_number
# p sum

# 14
if card_number[14].to_i.*(2) > 9

  temp = card_number[14].to_i.*(2)
  temp = temp.to_s
  temp = temp[0].to_i + temp[1].to_i

  sum += temp
  temp_card_number << temp.to_s

else
  sum += card_number[14].to_i.*(2)
  temp_card_number << card_number[14].to_i.*(2).to_s
end

# p 'after 14'
# p card_number
# p temp_card_number
# p sum

# 15
sum += card_number[15].to_i
temp_card_number <<  card_number[15]

# p 'after 15'
# p card_number
# p temp_card_number
# p sum


puts "Validation number: #{temp_card_number}"

puts "\nThe sum of the numbers is: #{sum}"

valid = sum % 10 == 0

if valid
  puts "\nThe number is valid!"
else
  puts "\nThe number is invalid!"
end
