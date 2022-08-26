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
    return 'vacio' if array.empty?
  end
end
