def who_is_bigger(a, b, c)
  return "nil detected" if [a, b, c].include? nil
  
  if a > b && a > c
    return "a is bigger"
  elsif b > a && b > c
    return "b is bigger"
  else
    return "c is bigger"
  end
end

def reverse_upcase_noLTA(s)
  s.reverse.upcase.delete("LTA")
end

def array_42(arr)
  return arr.include? 42
end

def magic_array(arr)
  arr.flatten.sort.map { |x| x * 2 }.delete_if { |x| x % 3 == 0 }.uniq.sort
end
