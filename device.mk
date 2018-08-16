LOCAL_PATH := device/allwinner/a13

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/allwinner/a13/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Ramdisk
PRODUCT_PACKAGES += \
    init.recovery.sun5i.rc \
    ueventd.rc \
    ueventd.sun5i.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/recovery/root/ft5x_ts.ko:recovery/root/ft5x_ts.ko \
    $(LOCAL_PATH)/recovery/root/nand.ko:recovery/root/nand.ko

$(call inherit-product-if-exists, build/target/product/full.mk)

