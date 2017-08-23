require 'irb'
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Taken from: http://drnicwilliams.com/2006/10/12/my-irbrc-for-consoleirb/
require 'irb/completion'
require 'map_by_method'
require 'pp'
IRB.conf[:AUTO_INDENT]=true
