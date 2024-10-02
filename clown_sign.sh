#!/bin/bash
# #ruby -e '
# rows, cols = `stty size`.scan(/\d+/).map(&:to_i); 
# S = ["1F921".to_i(16)].pack("U*"); 
# message = "я не умею лочить мак".chars; 
# message_start_row = rows / 2 - 1;
# message_start_col = (cols - message.size) / 2;
# a = {}; 
# puts "\033[2J"; 

# loop do
#   # Добавляем новых клоунов, если условие выполнено
#   a[rand(cols)] = 0 if a.size < cols && rand < cols / 200.0

#   # Рисуем клоунов, которые падают по краям (вне области надписи)
#   a.each do |x, o|
#     if o >= rows - 1
#       print "\033[#{o};#{x}H " # Убираем клоуна с экрана, если он внизу
#       a.delete(x)
#     else
#       a[x] += 1
#       # Печатаем клоунов, если они не находятся в области надписи
#       if !(message_start_col..message_start_col + message.size - 1).include?(x) || !(message_start_row..message_start_row + 1).include?(o)
#         print "\033[#{o};#{x}H#{S}"
#       end
#     end
#   end

#   # Печатаем надпись "я не умею лочить мак" в центре экрана
#   message.each_with_index do |char, i|
#     print "\033[#{message_start_row};#{message_start_col + i}H#{char}"
#   end

#   # Сдвигаем клоунов, которые будут формировать движение вокруг текста
#   $stdout.flush
#   sleep 0.1
# end
# '


# ruby -e '
# rows, cols = `stty size`.scan(/\d+/).map(&:to_i); 
# S = ["1F921".to_i(16)].pack("U*"); 
# # Создаём большую надпись "я не умею лочить мак"
# message = [
#   "  Я НЕ УМЕЮ  ",
#   " ЛОЧИТЬ МАК  "
# ]
# message_rows = message.size
# message_cols = message[0].size
# message_start_row = (rows - message_rows) / 2
# message_start_col = (cols - message_cols) / 2

# a = {}; 
# puts "\033[2J"; 

# loop do
#   # Добавляем новых клоунов, если условие выполнено
#   a[rand(cols)] = 0 if rand < cols / 200.0 && a.size < cols

#   # Рисуем клоунов, которые падают по краям (вне области надписи)
#   a.each do |x, o|
#     if o >= rows - 1
#       print "\033[#{o};#{x}H " # Убираем клоуна с экрана, если он внизу
#       a.delete(x)
#     else
#       a[x] += 1
#       # Печатаем клоунов, если они не находятся в области надписи
#       if !(message_start_col..message_start_col + message_cols - 1).include?(x) || !(message_start_row..message_start_row + message_rows - 1).include?(o)
#         print "\033[#{o};#{x}H#{S}"
#       end
#     end
#   end

#   # Печатаем надпись "Я НЕ УМЕЮ ЛОЧИТЬ МАК" в центре экрана
#   message.each_with_index do |line, row_offset|
#     line.chars.each_with_index do |char, col_offset|
#       print "\033[#{message_start_row + row_offset};#{message_start_col + col_offset}H#{char}"
#     end
#   end

#   # Обновляем экран
#   $stdout.flush
#   sleep 0.1
# end
# '



# ruby -e '
# rows, cols = `stty size`.scan(/\d+/).map(&:to_i); 
# S = ["1F921".to_i(16)].pack("U*"); 

# # Создаём надпись "Я НЕ УМЕЮ ЛОЧИТЬ МАК"
# message = [
#   "  Я НЕ УМЕЮ  ",
#   "  ЛОЧИТЬ МАК  "
# ]
# message_rows = message.size
# message_cols = message[0].size
# message_start_row = (rows - message_rows) / 2;
# message_start_col = (cols - message_cols) / 2;

# a = {}; 
# puts "\033[2J"; 

# loop do
#   # Добавляем новых клоунов, если условие выполнено
#   if rand < cols / 200.0 && a.size < cols
#     x = rand(cols)
#     # Проверяем, не попадает ли позиция клоуна в область надписи
#     if !(message_start_col..message_start_col + message_cols - 1).include?(x)
#       a[x] = 0 # Сохраняем позицию клоуна
#     end
#   end

#   # Рисуем клоунов, которые падают по экрану
#   a.each do |x, o|
#     if o >= rows - 1
#       print "\033[#{o};#{x}H " # Убираем клоуна с экрана, если он внизу
#       a.delete(x)
#     else
#       a[x] += 1
#       # Печатаем клоунов, если они не находятся в области надписи
#       if !(message_start_col..message_start_col + message_cols - 1).include?(x) || !(message_start_row..message_start_row + message_rows - 1).include?(o)
#         print "\033[#{o};#{x}H \033[#{a[x]};#{x}H#{S} \033[0;0H"
#       end
#     end
#   end

#   # Печатаем надпись "Я НЕ УМЕЮ ЛОЧИТЬ МАК" в центре экрана
#   message.each_with_index do |line, row_offset|
#     line.chars.each_with_index do |char, col_offset|
#       print "\033[#{message_start_row + row_offset};#{message_start_col + col_offset}H#{char}"
#     end
#   end

#   # Обновляем экран
#   $stdout.flush
#   sleep 0.1
# end
# '

# ruby -e '
# rows, cols = `stty size`.scan(/\d+/).map(&:to_i); 
# S = ["1F921".to_i(16)].pack("U*"); 

# # Создаём надпись "Я НЕ УМЕЮ ЛОЧИТЬ МАК"
# message = [
#   "  Я НЕ УМЕЮ  ",
#   "  ЛОЧИТЬ МАК  \n"
# ] # Убрали лишний пробел после "ЛОЧИТЬ МАК", который создавал серый квадрат
# message_rows = message.size
# message_cols = message[0].size
# message_start_row = (rows - message_rows) / 2;
# message_start_col = (cols - message_cols) / 2;

# a = {}; 
# puts "\033[2J"; 

# loop do
#   # Добавляем новых клоунов, исходя из размера окна терминала
#   if rand < cols / 100.0 && a.size < cols
#     x = rand(cols)
#     # Проверяем, не попадает ли позиция клоуна в область надписи
#     if !(message_start_col..message_start_col + message_cols - 1).include?(x)
#       a[x] = 0 # Сохраняем позицию клоуна
#     end
#   end

#   # Рисуем клоунов, которые падают по экрану
#   a.each do |x, o|
#     if o >= rows - 1
#       print "\033[#{o};#{x}H " # Убираем клоуна с экрана, если он внизу
#       a.delete(x)
#     else
#       a[x] += 1
#       # Печатаем клоунов, если они не находятся в области надписи
#       if !(message_start_col..message_start_col + message_cols - 1).include?(x) || !(message_start_row..message_start_row + message_rows - 1).include?(o)
#         print "\033[#{o};#{x}H \033[#{a[x]};#{x}H#{S} \033[0;0H"
#       end
#     end
#   end

#   # Печатаем надпись "Я НЕ УМЕЮ ЛОЧИТЬ МАК" в центре экрана
#   message.each_with_index do |line, row_offset|
#     line.chars.each_with_index do |char, col_offset|
#       print "\033[#{message_start_row + row_offset};#{message_start_col + col_offset}H#{char}"
#     end
#   end

#   # Обновляем экран
#   $stdout.flush
#   sleep 0.1
# end
# '



# ruby -e '
# rows, cols = `stty size`.scan(/\d+/).map(&:to_i); 
# S = ["1F921".to_i(16)].pack("U*"); 

# # Увеличенная надпись "Я НЕ УМЕЮ ЛОЧИТЬ МАК"
# message = [
#   "       Я    Н Е     У М Е Ю      ",
#   "                                 ",
#   "       Л О Ч И Т Ь    М А К      "
# ]
# message_rows = message.size
# message_cols = message[0].size
# message_start_row = (rows - message_rows) / 2;
# message_start_col = (cols - message_cols) / 2;

# a = {}; 
# puts "\033[2J"; # Очищаем экран

# loop do
#   # Добавляем новых клоунов, количество зависит от ширины окна
#   if rand < cols / 100.0 && a.size < cols
#     x = rand(cols)
#     # Проверяем, не попадает ли позиция клоуна в область надписи
#     if !(message_start_col..message_start_col + message_cols - 1).include?(x)
#       a[x] = 0 # Сохраняем позицию клоуна
#     end
#   end

#   # Рисуем клоунов, которые падают по экрану
#   a.each do |x, o|
#     if o >= rows - 1
#       print "\033[#{o};#{x}H " # Убираем клоуна с экрана, если он внизу
#       a.delete(x)
#     else
#       a[x] += 1
#       # Печатаем клоунов, если они не находятся в области надписи
#       if !(message_start_col..message_start_col + message_cols - 1).include?(x) || !(message_start_row..message_start_row + message_rows - 1).include?(o)
#         print "\033[#{o};#{x}H \033[#{a[x]};#{x}H#{S} \033[0;0H"
#       end
#     end
#   end

#   # Очищаем область под надписью, чтобы избежать артефактов
#   message.each_with_index do |line, row_offset|
#     line.chars.each_with_index do |_, col_offset|
#       print "\033[#{message_start_row + row_offset};#{message_start_col + col_offset}H " # Очищаем область
#     end
#   end

#   # Печатаем увеличенную надпись "Я НЕ УМЕЮ ЛОЧИТЬ МАК"
#   message.each_with_index do |line, row_offset|
#     line.chars.each_with_index do |char, col_offset|
#       print "\033[#{message_start_row + row_offset};#{message_start_col + col_offset}H#{char}"
#     end
#   end

#   # Обновляем экран
#   $stdout.flush
#   sleep 0.1
# end
# '


ruby -e '
rows, cols = `stty size`.scan(/\d+/).map(&:to_i); 
S = ["1F921".to_i(16)].pack("U*"); 

# Увеличенная надпись "Я НЕ УМЕЮ ЛОЧИТЬ МАК"
message = [
   "       Я    Н Е     У М Е Ю      ",
   "                                 ",
   "       Л О Ч И Т Ь    М А К      "
]
message_rows = message.size
message_cols = message[0].size
message_start_row = (rows - message_rows) / 2
message_start_col = (cols - message_cols) / 2

a = {}; 
puts "\033[2J"; # Очищаем экран

# Отображаем надпись один раз (она не будет перерисовываться в каждом цикле)
message.each_with_index do |line, row_offset|
  line.chars.each_with_index do |char, col_offset|
    print "\033[#{message_start_row + row_offset};#{message_start_col + col_offset}H#{char}"
  end
end

loop do
  # Добавляем новых клоунов, количество зависит от ширины окна
  if rand < cols / 100.0 && a.size < cols
    x = rand(cols)
    # Проверяем, не попадает ли позиция клоуна в область надписи
    unless (message_start_col..message_start_col + message_cols - 1).include?(x)
      a[x] = 0 # Сохраняем позицию клоуна
    end
  end

  # Рисуем клоунов, которые падают по экрану
  a.each do |x, o|
    if o >= rows - 1
      print "\033[#{o};#{x}H " # Убираем клоуна с экрана, если он внизу
      a.delete(x)
    else
      a[x] += 1
      # Печатаем клоунов, если они не находятся в области надписи
      unless (message_start_col..message_start_col + message_cols - 1).include?(x) &&
             (message_start_row..message_start_row + message_rows - 1).include?(o)
        print "\033[#{o};#{x}H \033[#{a[x]};#{x}H#{S} \033[0;0H"
      end
    end
  end

  # Обновляем экран
  $stdout.flush
  sleep 0.1
end
'