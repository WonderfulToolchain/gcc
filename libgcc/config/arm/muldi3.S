/* Copyright (C) 1995-2025 Free Software Foundation, Inc.

This file is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 3, or (at your option) any
later version.

This file is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/* Everything in this file should now use unified syntax.  */

	.syntax unified

	.global __aeabi_lmul
	.type __aeabi_lmul, %function
	.global __muldi3
	.type __muldi3, %function
__aeabi_lmul:
__muldi3:
	mul r1, r2, r1
	mla r1, r3, r0, r1
	umull r0, r3, r2, r0
	add r1, r1, r3
	bx lr
