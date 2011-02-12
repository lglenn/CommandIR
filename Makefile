LIRCFILES=appletv-lircd.conf commandir-lircd.conf hardware.conf lircd.conf lircmd.conf monoprice_hdmi_switch-lircd.conf
LIRCRCFILES=appletv mythtv
SCRIPTS=command_send.sh from_appletv.sh to_appletv.sh hdmi_switch.sh appletv.sh
SCRIPT_DIR=/usr/local/bin
LIRCRC_DIR=/home/larry/.lirc
MYTHDIR=/usr/share/mythtv
LIRC_CONF_DIR=/etc/lirc

.PHONY: lirc lircrc scripts mythtv init.d

install: lirc lircrc scripts mythtv

lirc:
	cd lirc && cp $(LIRCFILES) $(LIRC_CONF_DIR);

lircrc:
	cd lircrc && cp $(LIRCRCFILES) $(LIRCRC_DIR);

scripts:
	cd scripts && cp $(SCRIPTS) $(SCRIPT_DIR);
	cd $(SCRIPT_DIR) && chmod 755 $(SCRIPTS);

mythtv:
	cd mythtv && cp mainmenu.xml $(MYTHDIR)/themes/mediacentermenu;

init.d:
	cd init.d && cp lirc /etc/init.d
