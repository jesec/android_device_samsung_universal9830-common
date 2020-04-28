# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Product IDs
PRODUCT_CHARACTERISTICS := phone
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Resolution
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
	device/samsung/universal9830-common

# Init Resources
PRODUCT_PACKAGES += \
	fstab.exynos990

# Recovery
PRODUCT_PACKAGES += \
	init.recovery.exynos990.rc \
	fastbootd

# Properties
-include $(LOCAL_PATH)/vendor_prop.mk
