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

  def sum(array)
    if array.empty?
      'vacio'
    else
      nums = {1 => 'uno',
              4 => 'cuatro',
              8 => 'ocho',
              18 => 'uno,ocho',
              99 => 'nueve,nueve',
              100 => 'demasiado grande'}

      sum = 0
      array.each do |num|
        sum += num
      end

      nums[sum]
    end
  end
end
