#!/usr/sbin/dtrace -s

#pragma D option destructive

dtrace:::BEGIN
{
	system("afplay ./sounds/shortintro.m4a &");
  trace_count = 0;
}
syscall:::entry
{
  trace_count += 1;
  number = rand() % 55;
	system("afplay ./sounds/bee%i.mp3 &", number);
}
syscall:::entry
/trace_count == $1/
{
	system("afplay ./sounds/outro.m4a &");
  exit(0)
}
