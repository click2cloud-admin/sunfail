
# License: MIT, see LICENSE.txt

require 'timecop'
require 'rufus-scheduler'

p [ :ruby, RUBY_VERSION ]
p [ :rufus_scheduler, Rufus::Scheduler::VERSION ]
p [ :uname_a, `uname -a`.strip ]

Timecop.travel(Time.local(2016, 6, 11, 23, 59, 55))

puts
p Time.now
puts "scheduling...\n"

s = Rufus::Scheduler.new

s.cron '0 0 * * 0' do
  t = Time.now
  p [ t, t.wday, :hello, 0 ]
end
s.cron '0 0 * * sun' do
  t = Time.now
  p [ t, t.wday, :hello, :sun ]
end

s.join

