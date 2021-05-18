killall polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar example --config=config
