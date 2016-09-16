
def parse_indexes(args)
  result = []
  args.each{|s|
    if s =~ /(\d+)-(\d+)/
      result.concat( ($1.to_i..$2.to_i).to_a )
    else
      result << s.to_i
    end
  }
  result
end

def read_files(args)
  read_files_with_lines(args).map{|file,line| file}
end

def read_files_with_lines(args)
  cache_file = ENV['HOME'] + '/.googf_temp'
  cache = File.readlines(cache_file).map{|l| l.chomp}
  indexes = parse_indexes(ARGV)
  indexes = (0...cache.size).to_a if indexes.empty?
  indexes.map{|i| columns = cache[i].split(':'); [columns[0].chomp, columns[1].to_i] }
end

def read_pwd
  dir_file = ENV['HOME'] + '/.googf_dir'
  File.read(dir_file)
end

