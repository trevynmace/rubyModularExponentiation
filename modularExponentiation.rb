def base(n, b)
    q = n
    a = []
    while q != 0
      a.push(q % b)
      q = (q/b).floor
    end
  return a
end

def mod(b, n, m)
    a = base(n, 2)
    x = 1
    pow = b % m
    for i in (0..a.length)
      if (a[i] == 1)
        x = (x * pow) % m
      end
    pow = (pow * pow) % m
  end
  return x
end

puts "Please input the values for the base, the exponent and the mod:"
puts "base:"
b = gets.chomp.to_i
puts "exponent:"
n = gets.chomp.to_i
puts "mod:"
m = gets.chomp.to_i

puts "\nThe answer for (" + b.to_s + "^" + n.to_s + " mod " + m.to_s + ") is: " + mod(b, n, m).to_s
