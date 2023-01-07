from os import popen
import sys

title = popen("playerctl metadata --format '{{title}}'").read().strip()
artist = popen("playerctl metadata --format '{{artist}}'").read().strip()
is_playing = popen("playerctl status").read().lower().strip() == "playing"
art = popen("playerctl --player=spotify metadata mpris:artUrl").read().strip()

def get_artist():
  return(artist)

def get_title():
  if title == "": return "No music playing"
  return(title[:22] + "..." if len(title) > 25 else title)

def get_icon():
  if is_playing: return ""
  else: return ""

def get_art():
  if title == "": return ""
  return(art)

def pos():
  total = float(popen("playerctl metadata mpris:length").read().strip())/1_000_000
  pos = float(popen("playerctl position").read().strip())
  return round(pos/total, 3)*100





args=sys.argv
mode=args[1]

match mode:
  case "--artist": print(get_artist())
  case "--title": print(get_title())
  case "--icon": print(get_icon())
  case "--art": print(get_art())
  case "--pos": print(pos())

  
