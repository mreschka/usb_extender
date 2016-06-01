# usb_extender
A USB WiFi extender using a PIC24 asUSB Host and an ESP WIFI Modulefor transferring data

The basic idea behind this projct is to use a USB VCO Air Quality Stick via WiFi to use it for FHEM or similar.

Currently in alpha stage - firmware builds an is running on a PIC24F Starter Kit, but will not do anything useful (its currently only printing VID & PID of the attached USB Device on the built on OLED Display).

When finished this project will export all useful USB Host functions as a RPC Service using a simple protobuf Message format (see \firmware\framework\nanopb\pb_remote_usb.proto). since a full blown RPC server would be far to much for a PIC24 each incoming "UsbServiceRequest" Message will trigger a function. The result is sent back using a UsbServiceResponse message. All the arguments/return values are packed in these messages.

Of course it is up to a client to do anything useful with that. In principle this will be some kind of libusb replacement. Or if someone is good at kernel hacking it should be possible to write a USB driver to emulate the USB device being dirctly olugged into th host PC. Will only wirk for interrupt, setup, control and bulk transfers, I do not plan to support isochrnous transfers (an I think that's not possible).

Later I will add a CDC/ACM Mode so it will be possible to attach any CDC/ACM device to this little server and expose it directly without the need of a client-side CDC emulation.

The neccessary board schematic will be added soon. The baord will be around 50x50mm an require a single 5V DC Supply. Besides ESP and PIC with USB Jack there will be an optional temperature/humidity sensor on the board.

