
output.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <interrupt_vectors>:
   0:	00 80 00 20 ad 03 00 00 a5 03 00 00 a5 03 00 00     ... ............
	...
  2c:	a5 03 00 00 00 00 00 00 00 00 00 00 a5 03 00 00     ................
  3c:	a5 03 00 00 a5 03 00 00 a5 03 00 00 a5 03 00 00     ................
  4c:	a5 03 00 00 a5 03 00 00 a5 03 00 00 a5 03 00 00     ................
  5c:	a5 03 00 00 a5 03 00 00 a5 03 00 00 a5 03 00 00     ................
  6c:	a5 03 00 00 a5 03 00 00 a5 03 00 00 a5 03 00 00     ................
  7c:	a5 03 00 00 a5 03 00 00 a5 03 00 00 a5 03 00 00     ................
  8c:	a5 03 00 00                                         ....

00000090 <SystemInit>:
  90:	b580      	push	{r7, lr}
  92:	b082      	sub	sp, #8
  94:	af00      	add	r7, sp, #0
  96:	4b2a      	ldr	r3, [pc, #168]	; (140 <SystemInit+0xb0>)
  98:	781b      	ldrb	r3, [r3, #0]
  9a:	b2da      	uxtb	r2, r3
  9c:	1dfb      	adds	r3, r7, #7
  9e:	210f      	movs	r1, #15
  a0:	400a      	ands	r2, r1
  a2:	701a      	strb	r2, [r3, #0]
  a4:	1dfb      	adds	r3, r7, #7
  a6:	781b      	ldrb	r3, [r3, #0]
  a8:	2b07      	cmp	r3, #7
  aa:	d92a      	bls.n	102 <SystemInit+0x72>
  ac:	1dfb      	adds	r3, r7, #7
  ae:	781b      	ldrb	r3, [r3, #0]
  b0:	2b0d      	cmp	r3, #13
  b2:	d826      	bhi.n	102 <SystemInit+0x72>
  b4:	1dfb      	adds	r3, r7, #7
  b6:	1dfa      	adds	r2, r7, #7
  b8:	7812      	ldrb	r2, [r2, #0]
  ba:	3a06      	subs	r2, #6
  bc:	701a      	strb	r2, [r3, #0]
  be:	1dfb      	adds	r3, r7, #7
  c0:	781b      	ldrb	r3, [r3, #0]
  c2:	2b05      	cmp	r3, #5
  c4:	d902      	bls.n	cc <SystemInit+0x3c>
  c6:	1dfb      	adds	r3, r7, #7
  c8:	2206      	movs	r2, #6
  ca:	701a      	strb	r2, [r3, #0]
  cc:	4b1c      	ldr	r3, [pc, #112]	; (140 <SystemInit+0xb0>)
  ce:	781b      	ldrb	r3, [r3, #0]
  d0:	b2db      	uxtb	r3, r3
  d2:	b25b      	sxtb	r3, r3
  d4:	220f      	movs	r2, #15
  d6:	4393      	bics	r3, r2
  d8:	b25a      	sxtb	r2, r3
  da:	1dfb      	adds	r3, r7, #7
  dc:	781b      	ldrb	r3, [r3, #0]
  de:	b25b      	sxtb	r3, r3
  e0:	4313      	orrs	r3, r2
  e2:	b25a      	sxtb	r2, r3
  e4:	1dfb      	adds	r3, r7, #7
  e6:	701a      	strb	r2, [r3, #0]
  e8:	4b16      	ldr	r3, [pc, #88]	; (144 <SystemInit+0xb4>)
  ea:	2257      	movs	r2, #87	; 0x57
  ec:	701a      	strb	r2, [r3, #0]
  ee:	4b15      	ldr	r3, [pc, #84]	; (144 <SystemInit+0xb4>)
  f0:	22a8      	movs	r2, #168	; 0xa8
  f2:	701a      	strb	r2, [r3, #0]
  f4:	4a12      	ldr	r2, [pc, #72]	; (140 <SystemInit+0xb0>)
  f6:	1dfb      	adds	r3, r7, #7
  f8:	781b      	ldrb	r3, [r3, #0]
  fa:	7013      	strb	r3, [r2, #0]
  fc:	4b11      	ldr	r3, [pc, #68]	; (144 <SystemInit+0xb4>)
  fe:	2200      	movs	r2, #0
 100:	701a      	strb	r2, [r3, #0]
 102:	4b10      	ldr	r3, [pc, #64]	; (144 <SystemInit+0xb4>)
 104:	2257      	movs	r2, #87	; 0x57
 106:	701a      	strb	r2, [r3, #0]
 108:	4b0e      	ldr	r3, [pc, #56]	; (144 <SystemInit+0xb4>)
 10a:	22a8      	movs	r2, #168	; 0xa8
 10c:	701a      	strb	r2, [r3, #0]
 10e:	4b0e      	ldr	r3, [pc, #56]	; (148 <SystemInit+0xb8>)
 110:	2288      	movs	r2, #136	; 0x88
 112:	801a      	strh	r2, [r3, #0]
 114:	4b0d      	ldr	r3, [pc, #52]	; (14c <SystemInit+0xbc>)
 116:	881b      	ldrh	r3, [r3, #0]
 118:	b29b      	uxth	r3, r3
 11a:	4a0c      	ldr	r2, [pc, #48]	; (14c <SystemInit+0xbc>)
 11c:	2104      	movs	r1, #4
 11e:	430b      	orrs	r3, r1
 120:	b29b      	uxth	r3, r3
 122:	8013      	strh	r3, [r2, #0]
 124:	4b07      	ldr	r3, [pc, #28]	; (144 <SystemInit+0xb4>)
 126:	2200      	movs	r2, #0
 128:	701a      	strb	r2, [r3, #0]
 12a:	200a      	movs	r0, #10
 12c:	f000 f8c8 	bl	2c0 <mDelayuS>
 130:	2001      	movs	r0, #1
 132:	f000 f885 	bl	240 <PowerMonitor>
 136:	46c0      	nop			; (mov r8, r8)
 138:	46bd      	mov	sp, r7
 13a:	b002      	add	sp, #8
 13c:	bd80      	pop	{r7, pc}
 13e:	46c0      	nop			; (mov r8, r8)
 140:	4000104a 	.word	0x4000104a
 144:	40001040 	.word	0x40001040
 148:	40001008 	.word	0x40001008
 14c:	40001048 	.word	0x40001048

00000150 <GPIOB_ModeCfg>:
 150:	b580      	push	{r7, lr}
 152:	b082      	sub	sp, #8
 154:	af00      	add	r7, sp, #0
 156:	6078      	str	r0, [r7, #4]
 158:	000a      	movs	r2, r1
 15a:	1cfb      	adds	r3, r7, #3
 15c:	701a      	strb	r2, [r3, #0]
 15e:	1cfb      	adds	r3, r7, #3
 160:	781b      	ldrb	r3, [r3, #0]
 162:	2b04      	cmp	r3, #4
 164:	d85f      	bhi.n	226 <GPIOB_ModeCfg+0xd6>
 166:	009a      	lsls	r2, r3, #2
 168:	4b31      	ldr	r3, [pc, #196]	; (230 <GPIOB_ModeCfg+0xe0>)
 16a:	18d3      	adds	r3, r2, r3
 16c:	681b      	ldr	r3, [r3, #0]
 16e:	469f      	mov	pc, r3
 170:	4b30      	ldr	r3, [pc, #192]	; (234 <GPIOB_ModeCfg+0xe4>)
 172:	681a      	ldr	r2, [r3, #0]
 174:	687b      	ldr	r3, [r7, #4]
 176:	43d9      	mvns	r1, r3
 178:	4b2e      	ldr	r3, [pc, #184]	; (234 <GPIOB_ModeCfg+0xe4>)
 17a:	400a      	ands	r2, r1
 17c:	601a      	str	r2, [r3, #0]
 17e:	4b2e      	ldr	r3, [pc, #184]	; (238 <GPIOB_ModeCfg+0xe8>)
 180:	681a      	ldr	r2, [r3, #0]
 182:	687b      	ldr	r3, [r7, #4]
 184:	43d9      	mvns	r1, r3
 186:	4b2c      	ldr	r3, [pc, #176]	; (238 <GPIOB_ModeCfg+0xe8>)
 188:	400a      	ands	r2, r1
 18a:	601a      	str	r2, [r3, #0]
 18c:	4b2b      	ldr	r3, [pc, #172]	; (23c <GPIOB_ModeCfg+0xec>)
 18e:	681a      	ldr	r2, [r3, #0]
 190:	687b      	ldr	r3, [r7, #4]
 192:	43d9      	mvns	r1, r3
 194:	4b29      	ldr	r3, [pc, #164]	; (23c <GPIOB_ModeCfg+0xec>)
 196:	400a      	ands	r2, r1
 198:	601a      	str	r2, [r3, #0]
 19a:	e045      	b.n	228 <GPIOB_ModeCfg+0xd8>
 19c:	4b25      	ldr	r3, [pc, #148]	; (234 <GPIOB_ModeCfg+0xe4>)
 19e:	681a      	ldr	r2, [r3, #0]
 1a0:	687b      	ldr	r3, [r7, #4]
 1a2:	43d9      	mvns	r1, r3
 1a4:	4b23      	ldr	r3, [pc, #140]	; (234 <GPIOB_ModeCfg+0xe4>)
 1a6:	400a      	ands	r2, r1
 1a8:	601a      	str	r2, [r3, #0]
 1aa:	4b23      	ldr	r3, [pc, #140]	; (238 <GPIOB_ModeCfg+0xe8>)
 1ac:	6819      	ldr	r1, [r3, #0]
 1ae:	4b22      	ldr	r3, [pc, #136]	; (238 <GPIOB_ModeCfg+0xe8>)
 1b0:	687a      	ldr	r2, [r7, #4]
 1b2:	430a      	orrs	r2, r1
 1b4:	601a      	str	r2, [r3, #0]
 1b6:	4b21      	ldr	r3, [pc, #132]	; (23c <GPIOB_ModeCfg+0xec>)
 1b8:	681a      	ldr	r2, [r3, #0]
 1ba:	687b      	ldr	r3, [r7, #4]
 1bc:	43d9      	mvns	r1, r3
 1be:	4b1f      	ldr	r3, [pc, #124]	; (23c <GPIOB_ModeCfg+0xec>)
 1c0:	400a      	ands	r2, r1
 1c2:	601a      	str	r2, [r3, #0]
 1c4:	e030      	b.n	228 <GPIOB_ModeCfg+0xd8>
 1c6:	4b1b      	ldr	r3, [pc, #108]	; (234 <GPIOB_ModeCfg+0xe4>)
 1c8:	6819      	ldr	r1, [r3, #0]
 1ca:	4b1a      	ldr	r3, [pc, #104]	; (234 <GPIOB_ModeCfg+0xe4>)
 1cc:	687a      	ldr	r2, [r7, #4]
 1ce:	430a      	orrs	r2, r1
 1d0:	601a      	str	r2, [r3, #0]
 1d2:	4b19      	ldr	r3, [pc, #100]	; (238 <GPIOB_ModeCfg+0xe8>)
 1d4:	681a      	ldr	r2, [r3, #0]
 1d6:	687b      	ldr	r3, [r7, #4]
 1d8:	43d9      	mvns	r1, r3
 1da:	4b17      	ldr	r3, [pc, #92]	; (238 <GPIOB_ModeCfg+0xe8>)
 1dc:	400a      	ands	r2, r1
 1de:	601a      	str	r2, [r3, #0]
 1e0:	4b16      	ldr	r3, [pc, #88]	; (23c <GPIOB_ModeCfg+0xec>)
 1e2:	681a      	ldr	r2, [r3, #0]
 1e4:	687b      	ldr	r3, [r7, #4]
 1e6:	43d9      	mvns	r1, r3
 1e8:	4b14      	ldr	r3, [pc, #80]	; (23c <GPIOB_ModeCfg+0xec>)
 1ea:	400a      	ands	r2, r1
 1ec:	601a      	str	r2, [r3, #0]
 1ee:	e01b      	b.n	228 <GPIOB_ModeCfg+0xd8>
 1f0:	4b10      	ldr	r3, [pc, #64]	; (234 <GPIOB_ModeCfg+0xe4>)
 1f2:	681a      	ldr	r2, [r3, #0]
 1f4:	687b      	ldr	r3, [r7, #4]
 1f6:	43d9      	mvns	r1, r3
 1f8:	4b0e      	ldr	r3, [pc, #56]	; (234 <GPIOB_ModeCfg+0xe4>)
 1fa:	400a      	ands	r2, r1
 1fc:	601a      	str	r2, [r3, #0]
 1fe:	4b0f      	ldr	r3, [pc, #60]	; (23c <GPIOB_ModeCfg+0xec>)
 200:	6819      	ldr	r1, [r3, #0]
 202:	4b0e      	ldr	r3, [pc, #56]	; (23c <GPIOB_ModeCfg+0xec>)
 204:	687a      	ldr	r2, [r7, #4]
 206:	430a      	orrs	r2, r1
 208:	601a      	str	r2, [r3, #0]
 20a:	e00d      	b.n	228 <GPIOB_ModeCfg+0xd8>
 20c:	4b09      	ldr	r3, [pc, #36]	; (234 <GPIOB_ModeCfg+0xe4>)
 20e:	6819      	ldr	r1, [r3, #0]
 210:	4b08      	ldr	r3, [pc, #32]	; (234 <GPIOB_ModeCfg+0xe4>)
 212:	687a      	ldr	r2, [r7, #4]
 214:	430a      	orrs	r2, r1
 216:	601a      	str	r2, [r3, #0]
 218:	4b08      	ldr	r3, [pc, #32]	; (23c <GPIOB_ModeCfg+0xec>)
 21a:	6819      	ldr	r1, [r3, #0]
 21c:	4b07      	ldr	r3, [pc, #28]	; (23c <GPIOB_ModeCfg+0xec>)
 21e:	687a      	ldr	r2, [r7, #4]
 220:	430a      	orrs	r2, r1
 222:	601a      	str	r2, [r3, #0]
 224:	e000      	b.n	228 <GPIOB_ModeCfg+0xd8>
 226:	46c0      	nop			; (mov r8, r8)
 228:	46c0      	nop			; (mov r8, r8)
 22a:	46bd      	mov	sp, r7
 22c:	b002      	add	sp, #8
 22e:	bd80      	pop	{r7, pc}
 230:	0000040c 	.word	0x0000040c
 234:	400010d4 	.word	0x400010d4
 238:	400010d0 	.word	0x400010d0
 23c:	400010c0 	.word	0x400010c0

00000240 <PowerMonitor>:
 240:	b580      	push	{r7, lr}
 242:	b082      	sub	sp, #8
 244:	af00      	add	r7, sp, #0
 246:	0002      	movs	r2, r0
 248:	1dfb      	adds	r3, r7, #7
 24a:	701a      	strb	r2, [r3, #0]
 24c:	1dfb      	adds	r3, r7, #7
 24e:	781b      	ldrb	r3, [r3, #0]
 250:	2b00      	cmp	r3, #0
 252:	d10c      	bne.n	26e <PowerMonitor+0x2e>
 254:	4b17      	ldr	r3, [pc, #92]	; (2b4 <PowerMonitor+0x74>)
 256:	2257      	movs	r2, #87	; 0x57
 258:	701a      	strb	r2, [r3, #0]
 25a:	4b16      	ldr	r3, [pc, #88]	; (2b4 <PowerMonitor+0x74>)
 25c:	22a8      	movs	r2, #168	; 0xa8
 25e:	701a      	strb	r2, [r3, #0]
 260:	4b15      	ldr	r3, [pc, #84]	; (2b8 <PowerMonitor+0x78>)
 262:	2200      	movs	r2, #0
 264:	701a      	strb	r2, [r3, #0]
 266:	4b13      	ldr	r3, [pc, #76]	; (2b4 <PowerMonitor+0x74>)
 268:	2200      	movs	r2, #0
 26a:	701a      	strb	r2, [r3, #0]
 26c:	e01d      	b.n	2aa <PowerMonitor+0x6a>
 26e:	4b11      	ldr	r3, [pc, #68]	; (2b4 <PowerMonitor+0x74>)
 270:	2257      	movs	r2, #87	; 0x57
 272:	701a      	strb	r2, [r3, #0]
 274:	4b0f      	ldr	r3, [pc, #60]	; (2b4 <PowerMonitor+0x74>)
 276:	22a8      	movs	r2, #168	; 0xa8
 278:	701a      	strb	r2, [r3, #0]
 27a:	4b10      	ldr	r3, [pc, #64]	; (2bc <PowerMonitor+0x7c>)
 27c:	2201      	movs	r2, #1
 27e:	701a      	strb	r2, [r3, #0]
 280:	4b0d      	ldr	r3, [pc, #52]	; (2b8 <PowerMonitor+0x78>)
 282:	2201      	movs	r2, #1
 284:	701a      	strb	r2, [r3, #0]
 286:	4b0b      	ldr	r3, [pc, #44]	; (2b4 <PowerMonitor+0x74>)
 288:	2200      	movs	r2, #0
 28a:	701a      	strb	r2, [r3, #0]
 28c:	2001      	movs	r0, #1
 28e:	f000 f817 	bl	2c0 <mDelayuS>
 292:	4b08      	ldr	r3, [pc, #32]	; (2b4 <PowerMonitor+0x74>)
 294:	2257      	movs	r2, #87	; 0x57
 296:	701a      	strb	r2, [r3, #0]
 298:	4b06      	ldr	r3, [pc, #24]	; (2b4 <PowerMonitor+0x74>)
 29a:	22a8      	movs	r2, #168	; 0xa8
 29c:	701a      	strb	r2, [r3, #0]
 29e:	4b06      	ldr	r3, [pc, #24]	; (2b8 <PowerMonitor+0x78>)
 2a0:	220d      	movs	r2, #13
 2a2:	701a      	strb	r2, [r3, #0]
 2a4:	4b03      	ldr	r3, [pc, #12]	; (2b4 <PowerMonitor+0x74>)
 2a6:	2200      	movs	r2, #0
 2a8:	701a      	strb	r2, [r3, #0]
 2aa:	46c0      	nop			; (mov r8, r8)
 2ac:	46bd      	mov	sp, r7
 2ae:	b002      	add	sp, #8
 2b0:	bd80      	pop	{r7, pc}
 2b2:	46c0      	nop			; (mov r8, r8)
 2b4:	40001040 	.word	0x40001040
 2b8:	40001024 	.word	0x40001024
 2bc:	40001025 	.word	0x40001025

000002c0 <mDelayuS>:
 2c0:	b580      	push	{r7, lr}
 2c2:	b084      	sub	sp, #16
 2c4:	af00      	add	r7, sp, #0
 2c6:	0002      	movs	r2, r0
 2c8:	1dbb      	adds	r3, r7, #6
 2ca:	801a      	strh	r2, [r3, #0]
 2cc:	230c      	movs	r3, #12
 2ce:	18fb      	adds	r3, r7, r3
 2d0:	2200      	movs	r2, #0
 2d2:	801a      	strh	r2, [r3, #0]
 2d4:	e014      	b.n	300 <mDelayuS+0x40>
 2d6:	230e      	movs	r3, #14
 2d8:	18fb      	adds	r3, r7, r3
 2da:	2202      	movs	r2, #2
 2dc:	801a      	strh	r2, [r3, #0]
 2de:	e001      	b.n	2e4 <mDelayuS+0x24>
 2e0:	46c0      	nop			; (mov r8, r8)
 2e2:	46c0      	nop			; (mov r8, r8)
 2e4:	220e      	movs	r2, #14
 2e6:	18bb      	adds	r3, r7, r2
 2e8:	881b      	ldrh	r3, [r3, #0]
 2ea:	18ba      	adds	r2, r7, r2
 2ec:	1e59      	subs	r1, r3, #1
 2ee:	8011      	strh	r1, [r2, #0]
 2f0:	2b00      	cmp	r3, #0
 2f2:	d1f5      	bne.n	2e0 <mDelayuS+0x20>
 2f4:	210c      	movs	r1, #12
 2f6:	187b      	adds	r3, r7, r1
 2f8:	881a      	ldrh	r2, [r3, #0]
 2fa:	187b      	adds	r3, r7, r1
 2fc:	3201      	adds	r2, #1
 2fe:	801a      	strh	r2, [r3, #0]
 300:	230c      	movs	r3, #12
 302:	18fa      	adds	r2, r7, r3
 304:	1dbb      	adds	r3, r7, #6
 306:	8812      	ldrh	r2, [r2, #0]
 308:	881b      	ldrh	r3, [r3, #0]
 30a:	429a      	cmp	r2, r3
 30c:	d3e3      	bcc.n	2d6 <mDelayuS+0x16>
 30e:	46c0      	nop			; (mov r8, r8)
 310:	46c0      	nop			; (mov r8, r8)
 312:	46bd      	mov	sp, r7
 314:	b004      	add	sp, #16
 316:	bd80      	pop	{r7, pc}

00000318 <mDelaymS>:
 318:	b580      	push	{r7, lr}
 31a:	b084      	sub	sp, #16
 31c:	af00      	add	r7, sp, #0
 31e:	0002      	movs	r2, r0
 320:	1dbb      	adds	r3, r7, #6
 322:	801a      	strh	r2, [r3, #0]
 324:	230e      	movs	r3, #14
 326:	18fb      	adds	r3, r7, r3
 328:	2200      	movs	r2, #0
 32a:	801a      	strh	r2, [r3, #0]
 32c:	e00a      	b.n	344 <mDelaymS+0x2c>
 32e:	23fa      	movs	r3, #250	; 0xfa
 330:	009b      	lsls	r3, r3, #2
 332:	0018      	movs	r0, r3
 334:	f7ff ffc4 	bl	2c0 <mDelayuS>
 338:	210e      	movs	r1, #14
 33a:	187b      	adds	r3, r7, r1
 33c:	881a      	ldrh	r2, [r3, #0]
 33e:	187b      	adds	r3, r7, r1
 340:	3201      	adds	r2, #1
 342:	801a      	strh	r2, [r3, #0]
 344:	230e      	movs	r3, #14
 346:	18fa      	adds	r2, r7, r3
 348:	1dbb      	adds	r3, r7, #6
 34a:	8812      	ldrh	r2, [r2, #0]
 34c:	881b      	ldrh	r3, [r3, #0]
 34e:	429a      	cmp	r2, r3
 350:	d3ed      	bcc.n	32e <mDelaymS+0x16>
 352:	46c0      	nop			; (mov r8, r8)
 354:	46c0      	nop			; (mov r8, r8)
 356:	46bd      	mov	sp, r7
 358:	b004      	add	sp, #16
 35a:	bd80      	pop	{r7, pc}

0000035c <main>:
 35c:	b580      	push	{r7, lr}
 35e:	af00      	add	r7, sp, #0
 360:	f7ff fe96 	bl	90 <SystemInit>
 364:	4b0c      	ldr	r3, [pc, #48]	; (398 <main+0x3c>)
 366:	2206      	movs	r2, #6
 368:	601a      	str	r2, [r3, #0]
 36a:	2104      	movs	r1, #4
 36c:	2001      	movs	r0, #1
 36e:	f7ff feef 	bl	150 <GPIOB_ModeCfg>
 372:	2064      	movs	r0, #100	; 0x64
 374:	f7ff ffd0 	bl	318 <mDelaymS>
 378:	4b08      	ldr	r3, [pc, #32]	; (39c <main+0x40>)
 37a:	681a      	ldr	r2, [r3, #0]
 37c:	4b07      	ldr	r3, [pc, #28]	; (39c <main+0x40>)
 37e:	2101      	movs	r1, #1
 380:	430a      	orrs	r2, r1
 382:	601a      	str	r2, [r3, #0]
 384:	2064      	movs	r0, #100	; 0x64
 386:	f7ff ffc7 	bl	318 <mDelaymS>
 38a:	4b05      	ldr	r3, [pc, #20]	; (3a0 <main+0x44>)
 38c:	681a      	ldr	r2, [r3, #0]
 38e:	4b04      	ldr	r3, [pc, #16]	; (3a0 <main+0x44>)
 390:	2101      	movs	r1, #1
 392:	430a      	orrs	r2, r1
 394:	601a      	str	r2, [r3, #0]
 396:	e7ec      	b.n	372 <main+0x16>
 398:	20000000 	.word	0x20000000
 39c:	400010c8 	.word	0x400010c8
 3a0:	400010cc 	.word	0x400010cc

000003a4 <ADC_IRQHandler>:
 3a4:	b580      	push	{r7, lr}
 3a6:	af00      	add	r7, sp, #0
 3a8:	e7fe      	b.n	3a8 <ADC_IRQHandler+0x4>
 3aa:	Address 0x00000000000003aa is out of bounds.


000003ac <Reset_Handler>:
 3ac:	b580      	push	{r7, lr}
 3ae:	b082      	sub	sp, #8
 3b0:	af00      	add	r7, sp, #0
 3b2:	4b11      	ldr	r3, [pc, #68]	; (3f8 <Reset_Handler+0x4c>)
 3b4:	603b      	str	r3, [r7, #0]
 3b6:	4b11      	ldr	r3, [pc, #68]	; (3fc <Reset_Handler+0x50>)
 3b8:	607b      	str	r3, [r7, #4]
 3ba:	e009      	b.n	3d0 <Reset_Handler+0x24>
 3bc:	687b      	ldr	r3, [r7, #4]
 3be:	681a      	ldr	r2, [r3, #0]
 3c0:	683b      	ldr	r3, [r7, #0]
 3c2:	601a      	str	r2, [r3, #0]
 3c4:	683b      	ldr	r3, [r7, #0]
 3c6:	3304      	adds	r3, #4
 3c8:	603b      	str	r3, [r7, #0]
 3ca:	687b      	ldr	r3, [r7, #4]
 3cc:	3304      	adds	r3, #4
 3ce:	607b      	str	r3, [r7, #4]
 3d0:	683a      	ldr	r2, [r7, #0]
 3d2:	4b0b      	ldr	r3, [pc, #44]	; (400 <Reset_Handler+0x54>)
 3d4:	429a      	cmp	r2, r3
 3d6:	d3f1      	bcc.n	3bc <Reset_Handler+0x10>
 3d8:	4b0a      	ldr	r3, [pc, #40]	; (404 <Reset_Handler+0x58>)
 3da:	603b      	str	r3, [r7, #0]
 3dc:	e005      	b.n	3ea <Reset_Handler+0x3e>
 3de:	683b      	ldr	r3, [r7, #0]
 3e0:	2200      	movs	r2, #0
 3e2:	601a      	str	r2, [r3, #0]
 3e4:	683b      	ldr	r3, [r7, #0]
 3e6:	3304      	adds	r3, #4
 3e8:	603b      	str	r3, [r7, #0]
 3ea:	683a      	ldr	r2, [r7, #0]
 3ec:	4b06      	ldr	r3, [pc, #24]	; (408 <Reset_Handler+0x5c>)
 3ee:	429a      	cmp	r2, r3
 3f0:	d3f5      	bcc.n	3de <Reset_Handler+0x32>
 3f2:	f7ff ffb3 	bl	35c <main>
 3f6:	e7fe      	b.n	3f6 <Reset_Handler+0x4a>
 3f8:	20000000 	.word	0x20000000
 3fc:	00000420 	.word	0x00000420
 400:	20000004 	.word	0x20000004
 404:	20000004 	.word	0x20000004
 408:	20000004 	.word	0x20000004
 40c:	00000170 	.word	0x00000170
 410:	0000019c 	.word	0x0000019c
 414:	000001c6 	.word	0x000001c6
 418:	000001f0 	.word	0x000001f0
 41c:	0000020c 	.word	0x0000020c
