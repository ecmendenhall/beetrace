# beetrace

Plays a sound effect from "Bee Movie" on every system call. You need to [disable SIP](https://apple.stackexchange.com/questions/208762/now-that-el-capitan-is-rootless-is-there-any-way-to-get-dtrace-working). This is the stupidest thing I've ever put on Github.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">DTrace but the computer says the word “bee” from Bee Movie on every system call. <a href="https://t.co/y0qOZhgvVJ">pic.twitter.com/y0qOZhgvVJ</a></p>&mdash; /dev/horsefacts (@ecmendenhall) <a href="https://twitter.com/ecmendenhall/status/834794096686465025">February 23, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

```
$ git clone git@github.com:ecmendenhall/beetrace.git
$ cd beetrace
$ ./beetrace.d
```
