
# sunfail

Fighting issue https://github.com/jmettraux/rufus-scheduler/issues/209

## usage

```
git clone https://github.com/jmettraux/sunfail.git
cd sunfail
bundle install
make
```

Then report the output to https://github.com/jmettraux/rufus-scheduler/issues/209

## result

Works on my machine...

```
191751 satsuma 我 ~/w/sunfail (master) マ make
bundle exec ruby test.rb
[:ruby, "1.9.3"]
[:rufus_scheduler, "3.2.1"]
[:uname_a, "Darwin satsuma.local 14.5.0 Darwin Kernel Version 14.5.0: Thu Apr 21 20:40:54 PDT 2016; root:xnu-2782.50.3~1/RELEASE_X86_64 x86_64"]

2016-06-11 23:59:55 +0900
scheduling...
[2016-06-12 00:00:00 +0900, 0, :hello, 0]
[2016-06-12 00:00:00 +0900, 0, :hello, :sun]
```

## License

MIT, see LICENSE.txt

