#!/usr/sbin/dtrace -s

#pragma D option destructive
#pragma D option defaultargs

dtrace:::BEGIN
{
  system("afplay ./sounds/shortintro.m4a &");
  trace_count = 0;
  limit = $1 != 0 ? $1 : 100;
}
syscall:::entry
{
  trace_count += 1;
  number = rand() % 33;
  system("afplay ./sounds/bee%i.mp3 &", number);
}
syscall:::entry
/trace_count == limit/
{
  system("afplay ./sounds/outro.m4a &");
  exit(0)
}
