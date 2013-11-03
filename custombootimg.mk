LOCAL_PATH := $(call my-dir)

MKRAMDISK := device/CUBE/htt89_we_jb2/tools/mkramdisk.py

INSTALLED_RECOVERYIMAGE_TARGET := $(PRODUCT_OUT)/recovery.img
$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(PRODUCT_OUT)/ram_header \
		$(recovery_kernel)
	@echo "----- Making recovery image ------"
	$(hide) python $(MKRAMDISK) $(PRODUCT_OUT)/ramdisk-recovery.img $(PRODUCT_OUT)/ram_header
	$(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) --output $@
	@echo -e ${CL_INS}"Made recovery image: $@"${CL_RST}
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
