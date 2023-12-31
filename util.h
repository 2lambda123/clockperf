/* SPDX-License-Identifier: ISC */

/*
 * clockperf
 *
 * Copyright (c) 2016-2023, Steven Noonan <steven@uplinklabs.net>
 *
 */

#pragma once

int thread_sleep(unsigned long usec);

void timers_init(void);
void timers_destroy(void);

int cpuid_read(uint32_t *_regs);

/* vim: set ts=4 sts=4 sw=4 et: */
