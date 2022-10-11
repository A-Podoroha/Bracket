
def bracket(str)

  stack = []
  corresponding_chars = { '(' => ')', '{' => '}', '[' => ']', '<' => '>' }

  str.each_char do |ch|
    if (corresponding_chars.key?(ch))
      stack.push(ch)
    elsif(!corresponding_chars.value?(ch) or corresponding_chars[stack.pop()] != ch)
      return false
    end
  end

  return stack.empty?
end

input_data = ''
loop do
  puts "Enter your brackets:\t('x' to exit)"
  input_data = gets.delete(' ').strip
  break if (input_data.upcase() == "X")
  puts "#{bracket(input_data)}\n"
end