
Jankens = ["グー","チョキ","パー"]
Direction = ["上","下","左","右"]

def janken
  puts "じゃんけん。。。"
  puts "選択:0(グー),1(チョキ),2(パー),3(戦わない)"
	
  my_hands = gets.to_i
  partner_hands = rand(3)
  if my_hands == 3
    return true
  end
	
  puts "ほい！"
	
  puts "あなたの手:#{Jankens[my_hands]}"
  puts "相手の手:#{Jankens[partner_hands]}"
	
	
	#ジャンケンあいこの時の処理
  if my_hands == partner_hands
    puts "あいこ!"
    return true

	#ジャンケン勝ちの時のあっちむいてほいの処理
  elsif (my_hands == 0 && partner_hands == 1)||(my_hands == 1 && partner_hands == 2)||(my_hands == 2 && partner_hands == 0)
    puts "あっちむいて〜"
    puts "選択:0(上),1(下),2(左),3(右)"
		
    my_choice = gets.to_i
    partner_choice = rand(4)
    puts "ほい！"
		
		
    puts "あなた:#{Direction[my_choice]}" 
    puts "あいて:#{Direction[partner_choice]}"
		
    if my_choice == partner_choice
      puts "あなたの勝ちです"
    else 
      puts "もう一回"
      return true
    end
		
  else
    #ジャンケン負けの時のあっちむいてほいの処理
    puts "あっちむいて〜"
    puts "選択:0(上),1(下),2(左),3(右)"
		
    my_choice = gets.to_i
    partner_choice = rand(4)
    puts "ほい！"
		
    puts "あなた:#{Direction[my_choice]}"
    puts "あいて:#{Direction[partner_choice]}"
		
    if my_choice == partner_choice
      puts "あなたの負けです"
    else
      puts "もう一回"
      return true
    end
  end
end

next_game = true

while next_game
  next_game = janken
end
	
  