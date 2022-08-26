class Chopper
  def chop(position, array)
    if array.size.positive?
      if array.empty?
        0
      else
        array.each_with_index do |num, index|
          return index if num == position
        end
      end
    else
      -1
    end
  end

  def word(num)
    nums = {0 => 'cero',
            1 => 'uno',
            4 => 'cuatro',
            5 => 'cinco',
            8 => 'ocho',
            9 => 'nueve'}
    nums[num]
  end

  def calculate(digits)
    i = 0
    res = ''
    digits.each_with_index do |num, index|
      res.insert(i, word(num))
      i += word(num).length
      if index < digits.size - 1
        res.insert(i, ',')
        i += 1
      end
    end
    res
  end

  def sum(array)
    if array.empty?
      'vacio'
    else
      sum = 0
      array.each do |num|
        sum += num
      end

      if sum >= 100
        'demasiado grande'
      else
        digits = sum.digits.reverse
        calculate(digits)
      end
    end
  end
end
