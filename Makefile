#
# Copyright (C) 2006-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=helloworld
PKG_RELEASE:=1.0
PKG_VERSION:=HEAD

PKG_SOURCE:=$(PKG_NAME)-$(PKG_RELEASE).tar.gz
PKG_SOURCE_URL:=git://github.com/marjanfr/hellowrold.git
PKG_SOURCE_VERSION:=$(PKG_VERSION)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_PROTO:=git

PKG_BUILD_DIR:= $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/hellowrold
	SECTION:=util
	CATEGORY:=Utilities
	TITLE:=hellowrold
	URL:=http://eecs.qmul.ac.uk/helloworld/
endef

define Package/hellowrold/description
	it writes a simple text
endef

define Package/helloworld/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/hellowrold $(1)/usr/bin/
endef

$(eval $(call BuildPackage,hellowrold))
