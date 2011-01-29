LIRCFILES=lirc/appletv-lircd.conf lirc/commandir-lircd.conf lirc/hardware.conf lirc/lircd.conf lirc/lircmd.conf lirc/monoprice_hdmi_switch-lircd.conf

all:
	cp $(LIRCFILES) /etc/lirc;