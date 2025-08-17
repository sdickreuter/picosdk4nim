import picosdk4nim
import picosdk4nim/[stdio, gpio, time, clocks]
import hidecmakelinkerpkg/libconf

writeHideCMakeToFile()


stdioInitAll()


if setSysClockKhz(250000, false):
  echo "Setting system clock to 250MHz failed"
else:
  echo "System clock is now 250MHz"


DefaultLedPin.init()
DefaultLedPin.setDir(Out)
while true:
  for i in 0..4:
    DefaultLedPin.put(Low)
    sleep(100)
    DefaultLedPin.put(High)
    sleep(100)
  echo "Test message from pico"
  sleep(1000)
