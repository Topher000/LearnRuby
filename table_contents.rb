#array
title = 'Table of Contents'.center(50)
tab_cont = [
    ['Getting Started', 1],
    ['Numbers', 9],
    ['Letters', 13]
]
puts title
chap_num = 1
tab_cont.each do |tab|
    chap_title = tab[0]
    page_num = tab[1]    
    chapter = 'Chapter ' + chap_num.to_s + ':  ' + chap_title.to_s
    page =  ' page ' + page_num.to_s
    puts chapter.ljust(30) + page.rjust(20)
    chap_num= chap_num + 1

end

puts