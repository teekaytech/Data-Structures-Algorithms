require_relative 'stack.rb'

def balanced_brackets?(str)
  brackets_stack = Stack.new

  str.each_char do |char|
    brackets_stack.push(char) if char.eql?('(') || char.eql?('{') || char.eql?('[')
    case char
    when ')'
      unless brackets_stack.top.nil?
        brackets_stack.pop if brackets_stack.top.value.eql?('(')
      end
    when '}'
      unless brackets_stack.top.nil?
        brackets_stack.pop if brackets_stack.top.value.eql?('{')
      end
    when ']'
      unless brackets_stack.top.nil?
        brackets_stack.pop if brackets_stack.top.value.eql?('[')
      end
    else
      next
    end
  end
  return true if brackets_stack.top.nil?
  return false
end

p balanced_brackets?('(hello)[world]')
# => true

p balanced_brackets?('([)]')
# => false

p balanced_brackets?('[({}{}{})([])]')
# => true