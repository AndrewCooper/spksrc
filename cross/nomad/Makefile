PKG_NAME = nomad
PKG_VERS = 1.2.4
PKG_EXT = tar.gz
PKG_DIST_NAME = v$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/hashicorp/$(PKG_NAME)/archive/refs/tags/
PKG_DIST_FILE = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

BUILD_DEPENDS = native/go

HOMEPAGE = https://nomadproject.io/
COMMENT  = Easily Deploy Applications at Any Scale
LICENSE  = MPL-2.0

GO_SRC_DIR = $(EXTRACT_PATH)/$(PKG_DIR)
GO_BIN_DIR = $(GO_SRC_DIR)/$(NOMAD_BIN)
COMPILE_TARGET = nomad_compile

include ../../mk/spksrc.cross-go.mk

NOMAD_BIN = pkg/linux_$(GO_ARCH)/nomad

.PHONY: nomad_compile
nomad_compile:
	$(warning ARCH is $(ARCH))
	$(warning NOMAD_ARCH is $(NOMAD_ARCH))
	$(warning RUN is $(RUN))
	$(warning MAKE is $(MAKE))
	$(warning GO_SRC_DIR is $(GO_SRC_DIR))
	$(warning GO_BIN_DIR is $(GO_BIN_DIR))
	$(warning GO_ARCH is $(GO_ARCH))
	$(warning INSTALL_PREFIX is $(INSTALL_PREFIX))
	$(warning SPK_NAME is $(SPK_NAME))
	@$(RUN) $(MAKE) $(NOMAD_BIN)
