def compare(f1,f2)
	i = 0
	while i < f2.length
		print "line #{i+1} differs by #{(f2[i].length-f1[i].length).abs} characters\n"
		i=i+1

	end
	i = i-1
	count = 0
	if i < f1.length
		while i < f1.length
			count += f1[i].length
			i = i + 1
		end
		print "and the file has #{count} more characters."
	end
end
def monitor(a,b)
	file1 = a.split("\n")
	file2 = b.split("\n")

	if file1.length > file2.length
		compare file1,file2
	else
		compare file2,file1
	end

end

print "Enter the name of 1st file:\n"
filename1=gets.chomp
file1 = File.read(filename1)
print "Enter the name of 2nd file:\n"
filename2=gets.chomp
file2 = File.read(filename2)
monitor(file1,file2)