language = %w(perl pyson ruby java php)

#%Wとの違いは式展開があるかどうか
#[,,,]のかわりに()と空白をつかう
language.each

do |language|
    puts language
    next unless language == 'ruby'
    #ループ中に'ruby'に合致になければ、nextを呼び出さず直ちに次のループに映る
    puts 'I fonud Ruby'
end # =>nill #=> で実行結果


language.each do |language|
    puts language

    if language == 'ruby'
        puts 'I found Ruby!!'
    
    redo #永遠のループ処理
    end
end