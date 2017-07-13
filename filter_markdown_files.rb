all_files = `ls`
puts all_files
# puts `pwd`
files_array = all_files.split("\n")
# puts files_array.inspect
# puts files_array.length
files_array.each {|file| puts file + "create a string"}
files_array.select {|file| false}
filtered_array = files_array.select {|file|
 file.end_with? ".md"
}
puts filtered_array.inspect
