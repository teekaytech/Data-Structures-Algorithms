require_relative 'stack.rb'

def balanced_brackets?(str)
  brackets_stack = Stack.new
  opening_brackets = ['(', '{', '[']

  str.each_char do |char|
    brackets_stack.push(char) if opening_brackets.include?(char)
    unless brackets_stack.top.nil?
      case char
      when ')'
          brackets_stack.pop if brackets_stack.top.value.eql?('(')
      when '}'
          brackets_stack.pop if brackets_stack.top.value.eql?('{')
      when ']'
          brackets_stack.pop if brackets_stack.top.value.eql?('[')
      else
        next
      end
    end
  end
  brackets_stack.top.nil?
end

p balanced_brackets?('(hello)[world]')
# => true

p balanced_brackets?('([)]')
# => false

p balanced_brackets?('[({}{}{})([])]')
# => true