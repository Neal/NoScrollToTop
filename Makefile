TARGET = :clang
ARCHS := armv7 arm64

TWEAK_NAME = NoScrollToTop
NoScrollToTop_FILES = Tweak.xm

include theos/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

internal-after-install::
	install.exec "killall -9 SpringBoard"
