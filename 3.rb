## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:


def search_password(data)
	pass = []
	data.each_line do |row|
		row = row.split(' ')
		row = row.map{|elem| elem.to_i}
		pass[pass.size] = row.max - row.min
	end
	return pass.inject(0){ |result, elem| result + elem }
end

puts search_password(IO.read('data/3.txt'))