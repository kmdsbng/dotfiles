

require 'rubygems'
require 'pp'
require 'active_support'
#require 'irb/completion' 
require 'term/ansicolor'

include Term::ANSIColor
begin
  ActiveRecord::Base.logger = Logger.new(STDOUT)
rescue Exception => x
  STDERR.puts x.message
end

$LOAD_PATH.unshift(".")

begin
  require 'utility_belt_r19'
  def ed; edit_interactively(:vim); end
rescue Exception => x
  STDERR.puts x.message
end


class Array
  #def sum_all
  #  self.inject(0) {|m,v| m + v}
  #end
end


class Object
  def omethods
    methods.sort - Object.methods
  end

  alias_method :om, :omethods
  alias_method :__om, :omethods
end

def key_tree(tree, nest=0)
  if tree.kind_of? Array
    ary = tree
    ary.each_with_index {|v, i|
      puts (' ' * 2 * nest) + i.inspect
      try_key_tree(v, nest + 1)
    }
  elsif tree.kind_of? Hash
    hash = tree
    hash.keys.each {|k|
      puts (' ' * 2 * nest) + k.inspect
      try_key_tree(hash[k], nest + 1)
    }
  else
    raise 'key_tree accept Hash or Array'
  end
end

def try_key_tree(v, nest)
  if v.kind_of?(Hash)||
     v.kind_of?(Array)
    key_tree(v, nest)
  end
end

require "fileutils"
def junk( filename = "junk.txt")
  orig_stdout = $stdout.clone
  now = Time.now
  dir = "/home/#{`whoami`.strip}/junk/#{now.year}/#{now.month}"
  FileUtils.mkdir_p dir
  path="#{dir}/#{now.strftime('%Y%m%d-%H%M%S')}#{filename}"
  File.open(path, "w") do |f|
    $stdout.reopen f
    yield f
  end
  %x(cp #{path} /home/#{`whoami`.strip}/junk/recent.txt)
  nil
ensure
 $stdout.reopen orig_stdout if orig_stdout
end

def lv_junk
 system "lv /home/#{`whoami`.strip}/junk/recent.txt"
end

def new_customer
  customer = Pmasp::Customer.new('id' => 1, 'name' => 'kameda', 'schema_name' => 'kameda_pmasp_dev', 'group_name' => 'sanwa')
end

module Enumerable
  def to_proc
    proc { |obj, *args| self.map {|v| obj.send(v, *args)} }
  end
end

begin
  class << helper; include Haml::Helpers; end
  helper.init_haml_helpers
rescue Exception => _
end

