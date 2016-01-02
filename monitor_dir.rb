def compare(f1,f2)
	i = 0
	while i < f2.length
		puts "line #{i+1} differs by #{(f2[i].length-f1[i].length).abs} characters"
		i=i+1

	end
	i = i-1
	count = 0
	if i < f1.length
		while i < f1.length
			count += f1[i].length
			i = i + 1
		end
		puts "and the file has #{count} more characters."
	end
end
def monitor(a,b)
	rf1 = File.read(a)
	rf2 = File.read(b)
	file1 = rf1.split("\n")
	file2 = rf2.split("\n")

	puts "Comparing #{a} and #{b}"
	if file1.length > file2.length
		compare file1,file2
	else
		compare file2,file1
	end

end

puts "Enter the format of the file:"
format = gets.chomp
fileformat="*."+format
listOfFiles = Dir[fileformat]

for i in 0..listOfFiles.length
	j=i+1
	while j < listOfFiles.length
		monitor listOfFiles[i],listOfFiles[j]
		j = j+1
	end
end