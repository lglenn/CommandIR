LIRCFILES=appletv-lircd.conf commandir-lircd.conf hardware.conf lircd.conf lircmd.conf monoprice_hdmi_switch-lircd.conf
LIRCRCFILES=appletv mythtv
SCRIPTS=command_send.sh from_appletv.sh to_appletv.sh hdmi_switch.sh appletv.sh
SCRIPT_DIR=/usr/local/bin
LIRCRC_DIR=/home/larry/.lirc
MYTHDIR=/usr/share/mythtv
LIRC_CONF_DIR=/etc/lirc
IR_CODES_DIR=/home/larry/ir_codes
IR_CODE_FILES=appletv_down appletv_left appletv_menu appletv_ok appletv_play appletv_right appletv_up hdmi_1 hdmi_2 hdmi_3 hdmi_4 hdmi_5 hdmi_next hdmi_prev

.PHONY: lirc lircrc scripts mythtv init.d ir_codes

install: lirc lircrc scripts mythtv init.d ir_codes

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

ir_codes:
	test -d $(IR_CODES_DIR) || mkdir $(IR_CODES_DIR)
	cd ir_codes && cp $(IR_CODE_FILES) $(IR_CODES_DIR)

