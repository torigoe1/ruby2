class Battle
    def rock_paper_scissors
        random = rand(3)
        if @result == "draw"
            puts "あいこで・・・"
        else
            puts "じゃんけん・・・"
        end
        
        puts "0(グー)1(チョキ)2(パー)3(戦わない)"
        number = gets.chomp
        hand = number.to_i
        string = hand.to_s
        if number != string
            puts "-------------------------"
            puts "半角で数字を入力してね！"
            puts "-------------------------"
            rock_paper_scissors
        end
        
        if hand == 0 || hand == 1 || hand == 2 
            if @result == "draw"
                puts "ショ！"
            else
                puts "ホイ！"
            end
        elsif hand == 3
            puts "また今度遊ぼう！"
            exit
        else
            puts "-------------------------"
            puts "0~3を選ぼう！"
            puts "-------------------------"
            rock_paper_scissors
        end

        if hand == 0
            my_hand = "グー"
            if random == 0
                enemy_hand = "グー"
                @result = "draw"
            elsif random == 1
                enemy_hand = "チョキ"
                @result = "win"
            elsif random == 2 
                enemy_hand = "パー"
                @result = "lose"
            end
        
        elsif hand == 1
            my_hand = "チョキ"
            if random == 0
                enemy_hand = "グー"
                @result = "lose"
            elsif random == 1
                enemy_hand = "チョキ"
                @result = "draw"
            elsif random == 2 
                enemy_hand = "パー"
                @result = "win"
            end
            
        elsif hand == 2
            my_hand = "パー"
            if random == 0
                enemy_hand = "グー"
                @result = "win"
            elsif random == 1
                enemy_hand = "チョキ"
                @result = "lose"
            elsif random == 2 
                enemy_hand = "パー"
                @result = "draw"
            end
        else 
            rock_paper_scissors
        end
        
        puts "-------------------------"
        puts "あなた：#{my_hand}を出しました"
        puts "相手：#{enemy_hand}を出しました"
        puts "-------------------------"
    
        case @result
        when "win"
            look_that_way
        when "lose"
            look_that_way
        when "draw"
            rock_paper_scissors
        end
    end

    def look_that_way
        random = rand (4)
        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"
        number = gets.chomp
        face = number.to_i
        string = face.to_s
        if number != string
            puts "-------------------------"
            puts "半角で数字を入力してね！"
            puts "-------------------------"
            look_that_way
        end
        
        if face == 0
            my_face = "上"
        elsif face == 1
            my_face = "下"
        elsif face == 2
            my_face = "左"
        elsif face == 3  
            my_face = "右"
        else
            puts "-------------------------"
            puts "0~3を選ぼう！"
            puts "-------------------------"
            look_that_way
        end
        
        if random == 0
            enemy_face = "上"
        elsif random == 1
            enemy_face = "下"
        elsif random == 2
            enemy_face = "左"
        elsif random == 3  
            enemy_face = "右"
        end
        
        puts "ホイ！"
        puts "-------------------------"
        puts "あなた：#{my_face}"
        puts "相手：#{enemy_face}"
        puts "-------------------------"
        
        if random == face && @result == "win"
            puts "勝ちました！"
        elsif random == face && @result == "lose"
            puts "負けました！"
        else
            rock_paper_scissors    
        end
    end
end
battle = Battle.new()
battle.rock_paper_scissors