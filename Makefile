TARGET := iphone:clang:latest:14.5
ARCHS := arm64
INSTALL_TARGET_PROCESSES = Standoff2

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = StandoffMod
StandoffMod_FILES = Tweak.m
StandoffMod_CFLAGS = -fobjc-arc
StandoffMod_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk
