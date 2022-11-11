class Foo # foo.rb
  def yay
    eval_result = eval "1+1"
    if eval_result == 2
      puts "yay"
   end
  end
end
