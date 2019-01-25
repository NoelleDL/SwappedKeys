class TechTest

  expressions_array = [
    '123=3',
    '8423=252',
    '4+4=8',
    '4*7-10=417',
    '9/3=3',
    '42-9=-36'
  ]

  def array_to_hash(expressions_array)
    expressions_hash = Hash.new()
    expressions_array.each do |expression|
      ex = expression.split('=')
      expressions_hash[ex[0]] = ex[1].to_f
    end
    expressions_hash
  end
end
