from os import popen
import sys, psutil, time

def sec2time(sec):  #THANKS STACK OVERFLOW
    ''' Convert seconds to 'D days, HH:MM:SS.FFF' '''
    if hasattr(sec,'__len__'):
        return [sec2time(s) for s in sec]
    m, s = divmod(sec, 60)
    h, m = divmod(m, 60)
    d, h = divmod(h, 24)

    pattern = r'%01dh %01dm'
    if d == 0:
        return pattern % (h, m)
    return ('%d d, ' + pattern) % (d, h, m)

def cpu():
  return psutil.cpu_percent(interval=1)

def mem():
  tmp = popen("free --mega | grep -F \"Mem:\"").read().replace("Mem:", "").strip().split()
  used_per = round(int(tmp[1])/int(tmp[0]) * 100, 1)
  return used_per

def up():
  return sec2time(time.time() - psutil.boot_time())

def my_date():
  day = popen("date +%a").read().strip() + ", "
  date = popen("date +%d").read().strip() + " " + popen("date +%b").read().strip()

  return day + date



args=sys.argv
mode=args[1]

match mode:
  case "--cpu": print(cpu())
  case "--mem": print(mem())
  case "--up": print(up())
  case "--date": print(my_date())

