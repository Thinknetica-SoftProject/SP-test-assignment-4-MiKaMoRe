## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:

def read_instruction(instruction)
	floor = 0
	instruction.each_char do |direction|
		if direction == "("
			floor += 1
		elsif direction == ")"
			floor -= 1
		end
	end
	return floor
end

puts read_instruction(IO.read('data/1.txt'))




