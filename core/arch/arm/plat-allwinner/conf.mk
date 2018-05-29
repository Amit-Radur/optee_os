PLATFORM_FLAVOR ?= sun50i_a64

ifeq ($(PLATFORM_FLAVOR),sun50i_a64) 
include core/arch/arm/cpu/cortex-armv8-0.mk
$(call force,CFG_TZDRAM_START,0x40000000)
$(call force,CFG_TZDRAM_SIZE,0x2000000)
$(call force,CFG_SHMEM_START,0x44000000)
$(call force,CFG_SHMEM_SIZE,0x00400000)
$(call force,CFG_TEE_RAM_VA_SIZE,0x00400000)
$(call force,CFG_TEE_CORE_NB_CORE,4) 
$(call force,CFG_8250_UART,y)
$(call force,CFG_GENERIC_BOOT,y)
$(call force,CFG_PM_STUBS,y)
$(call force,CFG_SECURE_TIME_SOURCE_CNTPCT,y)
$(call force,CFG_WITH_ARM_TRUSTED_FW,y)
$(call force,CFG_WITH_LPAE,y)
endif

ta-targets += ta_arm64

CFG_WITH_STACK_CANARIES ?= y

