require 'rubygems' unless defined? Gem

# require 'irbtools'

require 'irb/completion'
require 'irb/ext/save-history'

ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history" 

%w[looksee].each do |gem|
  begin
    require gem
  rescue LoadError
  end
end
