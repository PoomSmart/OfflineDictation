GO_EASY_ON_ME = 1
SDKVERSION = 9.0
DEBUG = 0

include $(THEOS)/makefiles/common.mk
TWEAK_NAME = OfflineDictation
OfflineDictation_FILES = Tweak.xm
OfflineDictation_PRIVATE_FRAMEWORKS = AssistantServices

include $(THEOS_MAKE_PATH)/tweak.mk

