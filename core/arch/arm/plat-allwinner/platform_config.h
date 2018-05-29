/* SPDX-License-Identifier: BSD-2-Clause */
/*
 * Copyright (c) 2018, Amit Singh Tomar <amittomer25@gmail.com>
 */

#ifndef PLATFORM_CONFIG_H
#define PLATFORM_CONFIG_H

#include <mm/generic_ram_layout.h>

/* Make stacks aligned to data cache line length */
#define STACK_ALIGNMENT		64

#ifdef ARM64
#ifdef CFG_WITH_PAGER
#error "Pager not supported for ARM64"
#endif
#endif /*ARM64*/

#if defined(PLATFORM_FLAVOR_sun50i_a64)
/*
 * sun50i_a64 specifics.
 */
#define CONSOLE_UART_BASE	0x01c28000
#define CONSOLE_BAUDRATE	115200
#define CONSOLE_UART_CLK_IN_HZ	24000000
#else
#error "Unknown platform flavor"
#endif

#endif /*PLATFORM_CONFIG_H*/
