################################################################################
#
# lvlg-desktop-v1.0 for dongshanpi
#
################################################################################
		  			 		  						  					  				 	   		  	  	 	  
LVGL_DESKTOP_VERSION = 49bfc5c4aaa1bc324db3cb625b64b2680acda5d7
LVGL_DESKTOP_SITE = https://e.coding.net/weidongshan/100ask_t113-pro/lvgl8-desktop.git
LVGL_DESKTOP_SITE_METHOD = git
LVGL_DESKTOP_GIT_SUBMODULES = YES
LVGL_DESKTOP_DEPENDENCIES = libinput dbus
LVGL_DESKTOP_LICENSE = GPL-3.0
LVGL_DESKTOP_CFLAGS = -O3 -g0 -I$(@D)/ -Wall -Wshadow -Wundef -Wmissing-prototypes -Wno-discarded-qualifiers -Wall -Wextra -Wno-unused-function -Wno-error=strict-prototypes -Wpointer-arith -fno-strict-aliasing -Wno-error=cpp -Wuninitialized -Wmaybe-uninitialized -Wno-unused-parameter -Wno-missing-field-initializers -Wtype-limits -Wsizeof-pointer-memaccess -Wno-format-nonliteral -Wno-cast-qual -Wunreachable-code -Wno-switch-default -Wreturn-type -Wmultichar -Wformat-security -Wno-ignored-qualifiers -Wno-error=pedantic -Wno-sign-compare -Wno-error=missing-prototypes -Wdouble-promotion -Wclobbered -Wdeprecated -Wempty-body -Wtype-limits -Wshift-negative-value -Wstack-usage=2048 -Wno-unused-value -Wno-unused-parameter -Wno-missing-field-initializers -Wuninitialized -Wmaybe-uninitialized -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -Wtype-limits -Wsizeof-pointer-memaccess -Wno-format-nonliteral -Wpointer-arith -Wno-cast-qual -Wmissing-prototypes -Wunreachable-code -Wno-switch-default -Wreturn-type -Wmultichar -Wno-discarded-qualifiers -Wformat-security -Wno-ignored-qualifiers -Wno-sign-compare -I $(HOST_DIR)/include/dbus-1.0/ -I $(HOST_DIR)/usr/lib/dbus-1.0/include/

LVGL_DESKTOP_LDFLAGS = -lm -lpthread -ldbus-1


define LVGL_DESKTOP_BUILD_CMDS
	$(MAKE) CC=$(TARGET_CC) -C $(@D) \
		CFLAGS="$(LVGL_DESKTOP_CFLAGS)" LDFLAGS="$(LVGL_DESKTOP_LDFLAGS)"  all
endef
		  			 		  						  					  				 	   		  	  	 	  
define LVGL_DESKTOP_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/100ask_desktop/;
	$(INSTALL) -D -m 0755 $(@D)/bin/100ask_lvgl_Main \
		$(TARGET_DIR)/usr/share/100ask_desktop/100ask_lvgl_Main;
	$(INSTALL) -D -m 0755 $(@D)/bin/general_About \
		$(TARGET_DIR)/usr/share/100ask_desktop/general_About;
	$(INSTALL) -D -m 0755 $(@D)/bin/general_Benchmark \
		$(TARGET_DIR)/usr/share/100ask_desktop/general_Benchmark;
	$(INSTALL) -D -m 0755 $(@D)/bin/general_Calc \
		$(TARGET_DIR)/usr/share/100ask_desktop/general_Calc;
	$(INSTALL) -D -m 0755 $(@D)/bin/general_FileManager \
		$(TARGET_DIR)/usr/share/100ask_desktop/general_FileManager;
	$(INSTALL) -D -m 0755 $(@D)/bin/general_Game2048 \
		$(TARGET_DIR)/usr/share/100ask_desktop/general_Game2048;
	$(INSTALL) -D -m 0755 $(@D)/bin/general_GameMemory \
		$(TARGET_DIR)/usr/share/100ask_desktop/general_GameMemory;
	$(INSTALL) -D -m 0755 $(@D)/bin/general_Music \
		$(TARGET_DIR)/usr/share/100ask_desktop/general_Music;
	$(INSTALL) -D -m 0755 $(@D)/bin/general_Snake \
		$(TARGET_DIR)/usr/share/100ask_desktop/general_Snake;
	$(INSTALL) -D -m 0755 $(@D)/bin/general_Tiles \
		$(TARGET_DIR)/usr/share/100ask_desktop/general_Tiles;
	$(INSTALL) -D -m 0755 $(@D)/bin/general_Widgets \
		$(TARGET_DIR)/usr/share/100ask_desktop/general_Widgets;
	$(INSTALL) -D -m 0755 $(@D)/bin/imx6ull_LAN \
		$(TARGET_DIR)/usr/share/100ask_desktop/imx6ull_LAN;
	$(INSTALL) -D -m 0755 $(@D)/bin/imx6ull_SetBrightness \
		$(TARGET_DIR)/usr/share/100ask_desktop/imx6ull_SetBrightness;
	$(INSTALL) -D -m 0755 $(@D)/bin/imx6ull_SetTime \
		$(TARGET_DIR)/usr/share/100ask_desktop/imx6ull_SetTime;
	$(INSTALL) -D -m 0755 $(@D)/bin/imx6ull_WLAN \
		$(TARGET_DIR)/usr/share/100ask_desktop/imx6ull_WLAN;
	mkdir -p $(TARGET_DIR)/usr/share/100ask_desktop/icon/;
	cp -rdpf $(@D)/assets/icon/*  $(TARGET_DIR)/usr/share/100ask_desktop/icon/;
	cp -rdpf $(@D)/assets/services/*  $(TARGET_DIR)/usr/share/dbus-1/services/;
endef

define LVGL_DESKTOP_INSTALL_INIT_SYSV
	$(INSTALL) -m 0755 -D  $(BR2_EXTERNAL_LVGL8_PATH)/package/lvgl-desktop/S05lvgl \
		$(TARGET_DIR)/etc/init.d/S50lvgl8-desktop
endef
 			 		  						  					  				 	   		  	  	 	  
$(eval $(generic-package))
