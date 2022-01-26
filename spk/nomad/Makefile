SPK_NAME = nomad
SPK_VERS = 1.2.4
SPK_REV = 1
SPK_ICON = src/$(SPK_NAME).png
SPK_COMMANDS = bin/nomad

MAINTAINER = hashicorp
DESCRIPTION  = Easily Deploy Applications at Any Scale
DISPLAY_NAME = Nomad
CHANGELOG = "First release"

LICENSE = MIT

DEPENDS = cross/$(SPK_NAME)

SERVICE_USER         = auto
SERVICE_SETUP        = src/service-setup.sh
STARTABLE            = yes
WIZARDS_DIR          = src/wizard
SERVICE_WIZARD_SHARE = wizard_nomad_dir

SERVICE_PORT = 4646
SERVICE_PORT_TITLE = Nomad (HTTP API)
ADMIN_PORT = $(SERVICE_PORT)
FWPORTS = src/nomad.sc

UNSUPPORTED_ARCHS = $(PPC_ARCHS)
POST_STRIP_TARGET = nomad_extra_install

include ../../mk/spksrc.spk.mk

.PHONY: nomad_extra_install
nomad_extra_install:
	install -m 755 -d $(STAGING_DIR)/var/nomad.d
	install -m 644 src/10-defaults.hcl $(STAGING_DIR)/var/nomad.d/10-defaults.hcl
