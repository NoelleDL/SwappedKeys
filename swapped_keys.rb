class SwappedKeys

  expressions_array = [
    '123 = 3',
    '8423 = 252',
    '4+4 = 8',
    '4*7-10 = 417',
    '9/3 = 3',
    '42-9 = -36'
  ]

  def array_to_hash(expressions_array)
    expressions_hash = {}
    expressions_array.each do |expression|
      ex = expression.split('=')
      expressions_hash[ex[0].strip] = ex[1].strip.to_i
    end
    expressions_hash
  end

  def evaluate_expressions(expressions_hash)
    incorrect_expressions = {}
    expressions_hash.each do |input, output|
      if eval(input) != output
        incorrect_expressions[input] = output
      end
    end
    incorrect_expressions
  end

  def test_keys(incorrect_expressions)
    keys = '1234567890+-/*'
    swapped_keys = {}
    incorrect_expressions.each do |input, output|
      keys.each_char do |key|
          (0...input.size).each do |index|
            if !(input.include?(key))
              to_eval = input.gsub(input[index], key)
            end

            begin
              swapped_keys[input[index]] = key if eval(to_eval.to_s) == output
            rescue SyntaxError, ZeroDivisionError
            end
          end
        end

    end
    swapped_keys
  end


swapped_keys = SwappedKeys.new
expressions_hash = swapped_keys.array_to_hash(expressions_array)
incorrect_expressions = swapped_keys.evaluate_expressions(expressions_hash)
mismatched_keys = swapped_keys.test_keys(incorrect_expressions)
puts 'Keys swapped: ' + "#{mismatched_keys.keys[0]}" + ", " + "#{mismatched_keys.values[0]}"

end
