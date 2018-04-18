
temp.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         000010dc  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000008  0800119c  0800119c  0001119c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  080011a4  080011a4  000111a4  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  080011ac  080011ac  000111ac  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000430  20000000  080011b0  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss          00000020  20000430  080015e0  00020430  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000450  080015e0  00020450  2**0  ALLOC
  8 .ARM.attributes 00000028  00000000  00000000  00020430  2**0  CONTENTS, READONLY
  9 .comment      00000070  00000000  00000000  00020458  2**0  CONTENTS, READONLY
 10 .debug_info   00003aa2  00000000  00000000  000204c8  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_abbrev 00000d53  00000000  00000000  00023f6a  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges 00000328  00000000  00000000  00024cc0  2**3  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 00000280  00000000  00000000  00024fe8  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line   000010d9  00000000  00000000  00025268  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str    00001416  00000000  00000000  00026341  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_frame  000008b0  00000000  00000000  00027758  2**2  CONTENTS, READONLY, DEBUGGING
 17 .debug_loc    00000485  00000000  00000000  00028008  2**0  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <deregister_tm_clones>:
 80000c0:	b508      	push	{r3, lr}
 80000c2:	4b05      	ldr	r3, [pc, #20]	; (80000d8 <deregister_tm_clones+0x18>)
 80000c4:	4805      	ldr	r0, [pc, #20]	; (80000dc <deregister_tm_clones+0x1c>)
 80000c6:	3303      	adds	r3, #3
 80000c8:	1a1b      	subs	r3, r3, r0
 80000ca:	2b06      	cmp	r3, #6
 80000cc:	d903      	bls.n	80000d6 <deregister_tm_clones+0x16>
 80000ce:	4b04      	ldr	r3, [pc, #16]	; (80000e0 <deregister_tm_clones+0x20>)
 80000d0:	2b00      	cmp	r3, #0
 80000d2:	d000      	beq.n	80000d6 <deregister_tm_clones+0x16>
 80000d4:	4798      	blx	r3
 80000d6:	bd08      	pop	{r3, pc}
 80000d8:	20000430 	.word	0x20000430
 80000dc:	20000430 	.word	0x20000430
 80000e0:	00000000 	.word	0x00000000

080000e4 <register_tm_clones>:
 80000e4:	4806      	ldr	r0, [pc, #24]	; (8000100 <register_tm_clones+0x1c>)
 80000e6:	4907      	ldr	r1, [pc, #28]	; (8000104 <register_tm_clones+0x20>)
 80000e8:	b508      	push	{r3, lr}
 80000ea:	1a09      	subs	r1, r1, r0
 80000ec:	1089      	asrs	r1, r1, #2
 80000ee:	0fcb      	lsrs	r3, r1, #31
 80000f0:	1859      	adds	r1, r3, r1
 80000f2:	1049      	asrs	r1, r1, #1
 80000f4:	d003      	beq.n	80000fe <register_tm_clones+0x1a>
 80000f6:	4b04      	ldr	r3, [pc, #16]	; (8000108 <register_tm_clones+0x24>)
 80000f8:	2b00      	cmp	r3, #0
 80000fa:	d000      	beq.n	80000fe <register_tm_clones+0x1a>
 80000fc:	4798      	blx	r3
 80000fe:	bd08      	pop	{r3, pc}
 8000100:	20000430 	.word	0x20000430
 8000104:	20000430 	.word	0x20000430
 8000108:	00000000 	.word	0x00000000

0800010c <__do_global_dtors_aux>:
 800010c:	b510      	push	{r4, lr}
 800010e:	4c07      	ldr	r4, [pc, #28]	; (800012c <__do_global_dtors_aux+0x20>)
 8000110:	7823      	ldrb	r3, [r4, #0]
 8000112:	2b00      	cmp	r3, #0
 8000114:	d109      	bne.n	800012a <__do_global_dtors_aux+0x1e>
 8000116:	f7ff ffd3 	bl	80000c0 <deregister_tm_clones>
 800011a:	4b05      	ldr	r3, [pc, #20]	; (8000130 <__do_global_dtors_aux+0x24>)
 800011c:	2b00      	cmp	r3, #0
 800011e:	d002      	beq.n	8000126 <__do_global_dtors_aux+0x1a>
 8000120:	4804      	ldr	r0, [pc, #16]	; (8000134 <__do_global_dtors_aux+0x28>)
 8000122:	e000      	b.n	8000126 <__do_global_dtors_aux+0x1a>
 8000124:	bf00      	nop
 8000126:	2301      	movs	r3, #1
 8000128:	7023      	strb	r3, [r4, #0]
 800012a:	bd10      	pop	{r4, pc}
 800012c:	20000430 	.word	0x20000430
 8000130:	00000000 	.word	0x00000000
 8000134:	08001184 	.word	0x08001184

08000138 <frame_dummy>:
 8000138:	b508      	push	{r3, lr}
 800013a:	4b09      	ldr	r3, [pc, #36]	; (8000160 <frame_dummy+0x28>)
 800013c:	2b00      	cmp	r3, #0
 800013e:	d003      	beq.n	8000148 <frame_dummy+0x10>
 8000140:	4808      	ldr	r0, [pc, #32]	; (8000164 <frame_dummy+0x2c>)
 8000142:	4909      	ldr	r1, [pc, #36]	; (8000168 <frame_dummy+0x30>)
 8000144:	e000      	b.n	8000148 <frame_dummy+0x10>
 8000146:	bf00      	nop
 8000148:	4808      	ldr	r0, [pc, #32]	; (800016c <frame_dummy+0x34>)
 800014a:	6803      	ldr	r3, [r0, #0]
 800014c:	2b00      	cmp	r3, #0
 800014e:	d102      	bne.n	8000156 <frame_dummy+0x1e>
 8000150:	f7ff ffc8 	bl	80000e4 <register_tm_clones>
 8000154:	bd08      	pop	{r3, pc}
 8000156:	4b06      	ldr	r3, [pc, #24]	; (8000170 <frame_dummy+0x38>)
 8000158:	2b00      	cmp	r3, #0
 800015a:	d0f9      	beq.n	8000150 <frame_dummy+0x18>
 800015c:	4798      	blx	r3
 800015e:	e7f7      	b.n	8000150 <frame_dummy+0x18>
 8000160:	00000000 	.word	0x00000000
 8000164:	08001184 	.word	0x08001184
 8000168:	20000434 	.word	0x20000434
 800016c:	20000430 	.word	0x20000430
 8000170:	00000000 	.word	0x00000000

08000174 <__aeabi_uidiv>:
 8000174:	2200      	movs	r2, #0
 8000176:	0843      	lsrs	r3, r0, #1
 8000178:	428b      	cmp	r3, r1
 800017a:	d374      	bcc.n	8000266 <__aeabi_uidiv+0xf2>
 800017c:	0903      	lsrs	r3, r0, #4
 800017e:	428b      	cmp	r3, r1
 8000180:	d35f      	bcc.n	8000242 <__aeabi_uidiv+0xce>
 8000182:	0a03      	lsrs	r3, r0, #8
 8000184:	428b      	cmp	r3, r1
 8000186:	d344      	bcc.n	8000212 <__aeabi_uidiv+0x9e>
 8000188:	0b03      	lsrs	r3, r0, #12
 800018a:	428b      	cmp	r3, r1
 800018c:	d328      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 800018e:	0c03      	lsrs	r3, r0, #16
 8000190:	428b      	cmp	r3, r1
 8000192:	d30d      	bcc.n	80001b0 <__aeabi_uidiv+0x3c>
 8000194:	22ff      	movs	r2, #255	; 0xff
 8000196:	0209      	lsls	r1, r1, #8
 8000198:	ba12      	rev	r2, r2
 800019a:	0c03      	lsrs	r3, r0, #16
 800019c:	428b      	cmp	r3, r1
 800019e:	d302      	bcc.n	80001a6 <__aeabi_uidiv+0x32>
 80001a0:	1212      	asrs	r2, r2, #8
 80001a2:	0209      	lsls	r1, r1, #8
 80001a4:	d065      	beq.n	8000272 <__aeabi_uidiv+0xfe>
 80001a6:	0b03      	lsrs	r3, r0, #12
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d319      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 80001ac:	e000      	b.n	80001b0 <__aeabi_uidiv+0x3c>
 80001ae:	0a09      	lsrs	r1, r1, #8
 80001b0:	0bc3      	lsrs	r3, r0, #15
 80001b2:	428b      	cmp	r3, r1
 80001b4:	d301      	bcc.n	80001ba <__aeabi_uidiv+0x46>
 80001b6:	03cb      	lsls	r3, r1, #15
 80001b8:	1ac0      	subs	r0, r0, r3
 80001ba:	4152      	adcs	r2, r2
 80001bc:	0b83      	lsrs	r3, r0, #14
 80001be:	428b      	cmp	r3, r1
 80001c0:	d301      	bcc.n	80001c6 <__aeabi_uidiv+0x52>
 80001c2:	038b      	lsls	r3, r1, #14
 80001c4:	1ac0      	subs	r0, r0, r3
 80001c6:	4152      	adcs	r2, r2
 80001c8:	0b43      	lsrs	r3, r0, #13
 80001ca:	428b      	cmp	r3, r1
 80001cc:	d301      	bcc.n	80001d2 <__aeabi_uidiv+0x5e>
 80001ce:	034b      	lsls	r3, r1, #13
 80001d0:	1ac0      	subs	r0, r0, r3
 80001d2:	4152      	adcs	r2, r2
 80001d4:	0b03      	lsrs	r3, r0, #12
 80001d6:	428b      	cmp	r3, r1
 80001d8:	d301      	bcc.n	80001de <__aeabi_uidiv+0x6a>
 80001da:	030b      	lsls	r3, r1, #12
 80001dc:	1ac0      	subs	r0, r0, r3
 80001de:	4152      	adcs	r2, r2
 80001e0:	0ac3      	lsrs	r3, r0, #11
 80001e2:	428b      	cmp	r3, r1
 80001e4:	d301      	bcc.n	80001ea <__aeabi_uidiv+0x76>
 80001e6:	02cb      	lsls	r3, r1, #11
 80001e8:	1ac0      	subs	r0, r0, r3
 80001ea:	4152      	adcs	r2, r2
 80001ec:	0a83      	lsrs	r3, r0, #10
 80001ee:	428b      	cmp	r3, r1
 80001f0:	d301      	bcc.n	80001f6 <__aeabi_uidiv+0x82>
 80001f2:	028b      	lsls	r3, r1, #10
 80001f4:	1ac0      	subs	r0, r0, r3
 80001f6:	4152      	adcs	r2, r2
 80001f8:	0a43      	lsrs	r3, r0, #9
 80001fa:	428b      	cmp	r3, r1
 80001fc:	d301      	bcc.n	8000202 <__aeabi_uidiv+0x8e>
 80001fe:	024b      	lsls	r3, r1, #9
 8000200:	1ac0      	subs	r0, r0, r3
 8000202:	4152      	adcs	r2, r2
 8000204:	0a03      	lsrs	r3, r0, #8
 8000206:	428b      	cmp	r3, r1
 8000208:	d301      	bcc.n	800020e <__aeabi_uidiv+0x9a>
 800020a:	020b      	lsls	r3, r1, #8
 800020c:	1ac0      	subs	r0, r0, r3
 800020e:	4152      	adcs	r2, r2
 8000210:	d2cd      	bcs.n	80001ae <__aeabi_uidiv+0x3a>
 8000212:	09c3      	lsrs	r3, r0, #7
 8000214:	428b      	cmp	r3, r1
 8000216:	d301      	bcc.n	800021c <__aeabi_uidiv+0xa8>
 8000218:	01cb      	lsls	r3, r1, #7
 800021a:	1ac0      	subs	r0, r0, r3
 800021c:	4152      	adcs	r2, r2
 800021e:	0983      	lsrs	r3, r0, #6
 8000220:	428b      	cmp	r3, r1
 8000222:	d301      	bcc.n	8000228 <__aeabi_uidiv+0xb4>
 8000224:	018b      	lsls	r3, r1, #6
 8000226:	1ac0      	subs	r0, r0, r3
 8000228:	4152      	adcs	r2, r2
 800022a:	0943      	lsrs	r3, r0, #5
 800022c:	428b      	cmp	r3, r1
 800022e:	d301      	bcc.n	8000234 <__aeabi_uidiv+0xc0>
 8000230:	014b      	lsls	r3, r1, #5
 8000232:	1ac0      	subs	r0, r0, r3
 8000234:	4152      	adcs	r2, r2
 8000236:	0903      	lsrs	r3, r0, #4
 8000238:	428b      	cmp	r3, r1
 800023a:	d301      	bcc.n	8000240 <__aeabi_uidiv+0xcc>
 800023c:	010b      	lsls	r3, r1, #4
 800023e:	1ac0      	subs	r0, r0, r3
 8000240:	4152      	adcs	r2, r2
 8000242:	08c3      	lsrs	r3, r0, #3
 8000244:	428b      	cmp	r3, r1
 8000246:	d301      	bcc.n	800024c <__aeabi_uidiv+0xd8>
 8000248:	00cb      	lsls	r3, r1, #3
 800024a:	1ac0      	subs	r0, r0, r3
 800024c:	4152      	adcs	r2, r2
 800024e:	0883      	lsrs	r3, r0, #2
 8000250:	428b      	cmp	r3, r1
 8000252:	d301      	bcc.n	8000258 <__aeabi_uidiv+0xe4>
 8000254:	008b      	lsls	r3, r1, #2
 8000256:	1ac0      	subs	r0, r0, r3
 8000258:	4152      	adcs	r2, r2
 800025a:	0843      	lsrs	r3, r0, #1
 800025c:	428b      	cmp	r3, r1
 800025e:	d301      	bcc.n	8000264 <__aeabi_uidiv+0xf0>
 8000260:	004b      	lsls	r3, r1, #1
 8000262:	1ac0      	subs	r0, r0, r3
 8000264:	4152      	adcs	r2, r2
 8000266:	1a41      	subs	r1, r0, r1
 8000268:	d200      	bcs.n	800026c <__aeabi_uidiv+0xf8>
 800026a:	4601      	mov	r1, r0
 800026c:	4152      	adcs	r2, r2
 800026e:	4610      	mov	r0, r2
 8000270:	4770      	bx	lr
 8000272:	e7ff      	b.n	8000274 <__aeabi_uidiv+0x100>
 8000274:	b501      	push	{r0, lr}
 8000276:	2000      	movs	r0, #0
 8000278:	f000 f80c 	bl	8000294 <__aeabi_idiv0>
 800027c:	bd02      	pop	{r1, pc}
 800027e:	46c0      	nop			; (mov r8, r8)

08000280 <__aeabi_uidivmod>:
 8000280:	2900      	cmp	r1, #0
 8000282:	d0f7      	beq.n	8000274 <__aeabi_uidiv+0x100>
 8000284:	b503      	push	{r0, r1, lr}
 8000286:	f7ff ff75 	bl	8000174 <__aeabi_uidiv>
 800028a:	bc0e      	pop	{r1, r2, r3}
 800028c:	4342      	muls	r2, r0
 800028e:	1a89      	subs	r1, r1, r2
 8000290:	4718      	bx	r3
 8000292:	46c0      	nop			; (mov r8, r8)

08000294 <__aeabi_idiv0>:
 8000294:	4770      	bx	lr
 8000296:	46c0      	nop			; (mov r8, r8)

08000298 <Reset_Handler>:
 8000298:	480d      	ldr	r0, [pc, #52]	; (80002d0 <LoopForever+0x2>)
 800029a:	4685      	mov	sp, r0
 800029c:	480d      	ldr	r0, [pc, #52]	; (80002d4 <LoopForever+0x6>)
 800029e:	490e      	ldr	r1, [pc, #56]	; (80002d8 <LoopForever+0xa>)
 80002a0:	4a0e      	ldr	r2, [pc, #56]	; (80002dc <LoopForever+0xe>)
 80002a2:	2300      	movs	r3, #0
 80002a4:	e002      	b.n	80002ac <LoopCopyDataInit>

080002a6 <CopyDataInit>:
 80002a6:	58d4      	ldr	r4, [r2, r3]
 80002a8:	50c4      	str	r4, [r0, r3]
 80002aa:	3304      	adds	r3, #4

080002ac <LoopCopyDataInit>:
 80002ac:	18c4      	adds	r4, r0, r3
 80002ae:	428c      	cmp	r4, r1
 80002b0:	d3f9      	bcc.n	80002a6 <CopyDataInit>
 80002b2:	4a0b      	ldr	r2, [pc, #44]	; (80002e0 <LoopForever+0x12>)
 80002b4:	4c0b      	ldr	r4, [pc, #44]	; (80002e4 <LoopForever+0x16>)
 80002b6:	2300      	movs	r3, #0
 80002b8:	e001      	b.n	80002be <LoopFillZerobss>

080002ba <FillZerobss>:
 80002ba:	6013      	str	r3, [r2, #0]
 80002bc:	3204      	adds	r2, #4

080002be <LoopFillZerobss>:
 80002be:	42a2      	cmp	r2, r4
 80002c0:	d3fb      	bcc.n	80002ba <FillZerobss>
 80002c2:	f000 faeb 	bl	800089c <SystemInit>
 80002c6:	f000 fec3 	bl	8001050 <__libc_init_array>
 80002ca:	f000 f9c1 	bl	8000650 <main>

080002ce <LoopForever>:
 80002ce:	e7fe      	b.n	80002ce <LoopForever>
 80002d0:	20002000 	.word	0x20002000
 80002d4:	20000000 	.word	0x20000000
 80002d8:	20000430 	.word	0x20000430
 80002dc:	080011b0 	.word	0x080011b0
 80002e0:	20000430 	.word	0x20000430
 80002e4:	20000450 	.word	0x20000450

080002e8 <ADC1_COMP_IRQHandler>:
 80002e8:	e7fe      	b.n	80002e8 <ADC1_COMP_IRQHandler>
	...

080002ec <NVIC_SetPriority>:
 80002ec:	b5b0      	push	{r4, r5, r7, lr}
 80002ee:	b082      	sub	sp, #8
 80002f0:	af00      	add	r7, sp, #0
 80002f2:	1c02      	adds	r2, r0, #0
 80002f4:	6039      	str	r1, [r7, #0]
 80002f6:	1dfb      	adds	r3, r7, #7
 80002f8:	701a      	strb	r2, [r3, #0]
 80002fa:	1dfb      	adds	r3, r7, #7
 80002fc:	781b      	ldrb	r3, [r3, #0]
 80002fe:	2b7f      	cmp	r3, #127	; 0x7f
 8000300:	d92f      	bls.n	8000362 <NVIC_SetPriority+0x76>
 8000302:	4c2d      	ldr	r4, [pc, #180]	; (80003b8 <NVIC_SetPriority+0xcc>)
 8000304:	1dfb      	adds	r3, r7, #7
 8000306:	781b      	ldrb	r3, [r3, #0]
 8000308:	1c1a      	adds	r2, r3, #0
 800030a:	230f      	movs	r3, #15
 800030c:	4013      	ands	r3, r2
 800030e:	3b08      	subs	r3, #8
 8000310:	0899      	lsrs	r1, r3, #2
 8000312:	4a29      	ldr	r2, [pc, #164]	; (80003b8 <NVIC_SetPriority+0xcc>)
 8000314:	1dfb      	adds	r3, r7, #7
 8000316:	781b      	ldrb	r3, [r3, #0]
 8000318:	1c18      	adds	r0, r3, #0
 800031a:	230f      	movs	r3, #15
 800031c:	4003      	ands	r3, r0
 800031e:	3b08      	subs	r3, #8
 8000320:	089b      	lsrs	r3, r3, #2
 8000322:	3306      	adds	r3, #6
 8000324:	009b      	lsls	r3, r3, #2
 8000326:	18d3      	adds	r3, r2, r3
 8000328:	685b      	ldr	r3, [r3, #4]
 800032a:	1dfa      	adds	r2, r7, #7
 800032c:	7812      	ldrb	r2, [r2, #0]
 800032e:	1c10      	adds	r0, r2, #0
 8000330:	2203      	movs	r2, #3
 8000332:	4002      	ands	r2, r0
 8000334:	00d2      	lsls	r2, r2, #3
 8000336:	1c10      	adds	r0, r2, #0
 8000338:	22ff      	movs	r2, #255	; 0xff
 800033a:	4082      	lsls	r2, r0
 800033c:	43d2      	mvns	r2, r2
 800033e:	401a      	ands	r2, r3
 8000340:	683b      	ldr	r3, [r7, #0]
 8000342:	019b      	lsls	r3, r3, #6
 8000344:	20ff      	movs	r0, #255	; 0xff
 8000346:	4003      	ands	r3, r0
 8000348:	1df8      	adds	r0, r7, #7
 800034a:	7800      	ldrb	r0, [r0, #0]
 800034c:	1c05      	adds	r5, r0, #0
 800034e:	2003      	movs	r0, #3
 8000350:	4028      	ands	r0, r5
 8000352:	00c0      	lsls	r0, r0, #3
 8000354:	4083      	lsls	r3, r0
 8000356:	431a      	orrs	r2, r3
 8000358:	1d8b      	adds	r3, r1, #6
 800035a:	009b      	lsls	r3, r3, #2
 800035c:	18e3      	adds	r3, r4, r3
 800035e:	605a      	str	r2, [r3, #4]
 8000360:	e026      	b.n	80003b0 <NVIC_SetPriority+0xc4>
 8000362:	4c16      	ldr	r4, [pc, #88]	; (80003bc <NVIC_SetPriority+0xd0>)
 8000364:	1dfb      	adds	r3, r7, #7
 8000366:	781b      	ldrb	r3, [r3, #0]
 8000368:	b25b      	sxtb	r3, r3
 800036a:	089b      	lsrs	r3, r3, #2
 800036c:	4913      	ldr	r1, [pc, #76]	; (80003bc <NVIC_SetPriority+0xd0>)
 800036e:	1dfa      	adds	r2, r7, #7
 8000370:	7812      	ldrb	r2, [r2, #0]
 8000372:	b252      	sxtb	r2, r2
 8000374:	0892      	lsrs	r2, r2, #2
 8000376:	32c0      	adds	r2, #192	; 0xc0
 8000378:	0092      	lsls	r2, r2, #2
 800037a:	5852      	ldr	r2, [r2, r1]
 800037c:	1df9      	adds	r1, r7, #7
 800037e:	7809      	ldrb	r1, [r1, #0]
 8000380:	1c08      	adds	r0, r1, #0
 8000382:	2103      	movs	r1, #3
 8000384:	4001      	ands	r1, r0
 8000386:	00c9      	lsls	r1, r1, #3
 8000388:	1c08      	adds	r0, r1, #0
 800038a:	21ff      	movs	r1, #255	; 0xff
 800038c:	4081      	lsls	r1, r0
 800038e:	43c9      	mvns	r1, r1
 8000390:	4011      	ands	r1, r2
 8000392:	683a      	ldr	r2, [r7, #0]
 8000394:	0192      	lsls	r2, r2, #6
 8000396:	20ff      	movs	r0, #255	; 0xff
 8000398:	4002      	ands	r2, r0
 800039a:	1df8      	adds	r0, r7, #7
 800039c:	7800      	ldrb	r0, [r0, #0]
 800039e:	1c05      	adds	r5, r0, #0
 80003a0:	2003      	movs	r0, #3
 80003a2:	4028      	ands	r0, r5
 80003a4:	00c0      	lsls	r0, r0, #3
 80003a6:	4082      	lsls	r2, r0
 80003a8:	430a      	orrs	r2, r1
 80003aa:	33c0      	adds	r3, #192	; 0xc0
 80003ac:	009b      	lsls	r3, r3, #2
 80003ae:	511a      	str	r2, [r3, r4]
 80003b0:	46bd      	mov	sp, r7
 80003b2:	b002      	add	sp, #8
 80003b4:	bdb0      	pop	{r4, r5, r7, pc}
 80003b6:	46c0      	nop			; (mov r8, r8)
 80003b8:	e000ed00 	.word	0xe000ed00
 80003bc:	e000e100 	.word	0xe000e100

080003c0 <SysTick_Config>:
 80003c0:	b580      	push	{r7, lr}
 80003c2:	b082      	sub	sp, #8
 80003c4:	af00      	add	r7, sp, #0
 80003c6:	6078      	str	r0, [r7, #4]
 80003c8:	687b      	ldr	r3, [r7, #4]
 80003ca:	3b01      	subs	r3, #1
 80003cc:	4a0c      	ldr	r2, [pc, #48]	; (8000400 <SysTick_Config+0x40>)
 80003ce:	4293      	cmp	r3, r2
 80003d0:	d901      	bls.n	80003d6 <SysTick_Config+0x16>
 80003d2:	2301      	movs	r3, #1
 80003d4:	e010      	b.n	80003f8 <SysTick_Config+0x38>
 80003d6:	4b0b      	ldr	r3, [pc, #44]	; (8000404 <SysTick_Config+0x44>)
 80003d8:	687a      	ldr	r2, [r7, #4]
 80003da:	3a01      	subs	r2, #1
 80003dc:	605a      	str	r2, [r3, #4]
 80003de:	2301      	movs	r3, #1
 80003e0:	425b      	negs	r3, r3
 80003e2:	1c18      	adds	r0, r3, #0
 80003e4:	2103      	movs	r1, #3
 80003e6:	f7ff ff81 	bl	80002ec <NVIC_SetPriority>
 80003ea:	4b06      	ldr	r3, [pc, #24]	; (8000404 <SysTick_Config+0x44>)
 80003ec:	2200      	movs	r2, #0
 80003ee:	609a      	str	r2, [r3, #8]
 80003f0:	4b04      	ldr	r3, [pc, #16]	; (8000404 <SysTick_Config+0x44>)
 80003f2:	2207      	movs	r2, #7
 80003f4:	601a      	str	r2, [r3, #0]
 80003f6:	2300      	movs	r3, #0
 80003f8:	1c18      	adds	r0, r3, #0
 80003fa:	46bd      	mov	sp, r7
 80003fc:	b002      	add	sp, #8
 80003fe:	bd80      	pop	{r7, pc}
 8000400:	00ffffff 	.word	0x00ffffff
 8000404:	e000e010 	.word	0xe000e010

08000408 <LL_AHB1_GRP1_EnableClock>:
 8000408:	b580      	push	{r7, lr}
 800040a:	b084      	sub	sp, #16
 800040c:	af00      	add	r7, sp, #0
 800040e:	6078      	str	r0, [r7, #4]
 8000410:	4b07      	ldr	r3, [pc, #28]	; (8000430 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000412:	4a07      	ldr	r2, [pc, #28]	; (8000430 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000414:	6951      	ldr	r1, [r2, #20]
 8000416:	687a      	ldr	r2, [r7, #4]
 8000418:	430a      	orrs	r2, r1
 800041a:	615a      	str	r2, [r3, #20]
 800041c:	4b04      	ldr	r3, [pc, #16]	; (8000430 <LL_AHB1_GRP1_EnableClock+0x28>)
 800041e:	695b      	ldr	r3, [r3, #20]
 8000420:	687a      	ldr	r2, [r7, #4]
 8000422:	4013      	ands	r3, r2
 8000424:	60fb      	str	r3, [r7, #12]
 8000426:	68fb      	ldr	r3, [r7, #12]
 8000428:	46bd      	mov	sp, r7
 800042a:	b004      	add	sp, #16
 800042c:	bd80      	pop	{r7, pc}
 800042e:	46c0      	nop			; (mov r8, r8)
 8000430:	40021000 	.word	0x40021000

08000434 <LL_GPIO_SetPinMode>:
 8000434:	b580      	push	{r7, lr}
 8000436:	b084      	sub	sp, #16
 8000438:	af00      	add	r7, sp, #0
 800043a:	60f8      	str	r0, [r7, #12]
 800043c:	60b9      	str	r1, [r7, #8]
 800043e:	607a      	str	r2, [r7, #4]
 8000440:	68fb      	ldr	r3, [r7, #12]
 8000442:	6819      	ldr	r1, [r3, #0]
 8000444:	68bb      	ldr	r3, [r7, #8]
 8000446:	68ba      	ldr	r2, [r7, #8]
 8000448:	435a      	muls	r2, r3
 800044a:	1c13      	adds	r3, r2, #0
 800044c:	005b      	lsls	r3, r3, #1
 800044e:	189b      	adds	r3, r3, r2
 8000450:	43db      	mvns	r3, r3
 8000452:	400b      	ands	r3, r1
 8000454:	1c1a      	adds	r2, r3, #0
 8000456:	68bb      	ldr	r3, [r7, #8]
 8000458:	68b9      	ldr	r1, [r7, #8]
 800045a:	434b      	muls	r3, r1
 800045c:	6879      	ldr	r1, [r7, #4]
 800045e:	434b      	muls	r3, r1
 8000460:	431a      	orrs	r2, r3
 8000462:	68fb      	ldr	r3, [r7, #12]
 8000464:	601a      	str	r2, [r3, #0]
 8000466:	46bd      	mov	sp, r7
 8000468:	b004      	add	sp, #16
 800046a:	bd80      	pop	{r7, pc}

0800046c <LL_GPIO_SetPinPull>:
 800046c:	b580      	push	{r7, lr}
 800046e:	b084      	sub	sp, #16
 8000470:	af00      	add	r7, sp, #0
 8000472:	60f8      	str	r0, [r7, #12]
 8000474:	60b9      	str	r1, [r7, #8]
 8000476:	607a      	str	r2, [r7, #4]
 8000478:	68fb      	ldr	r3, [r7, #12]
 800047a:	68d9      	ldr	r1, [r3, #12]
 800047c:	68bb      	ldr	r3, [r7, #8]
 800047e:	68ba      	ldr	r2, [r7, #8]
 8000480:	435a      	muls	r2, r3
 8000482:	1c13      	adds	r3, r2, #0
 8000484:	005b      	lsls	r3, r3, #1
 8000486:	189b      	adds	r3, r3, r2
 8000488:	43db      	mvns	r3, r3
 800048a:	400b      	ands	r3, r1
 800048c:	1c1a      	adds	r2, r3, #0
 800048e:	68bb      	ldr	r3, [r7, #8]
 8000490:	68b9      	ldr	r1, [r7, #8]
 8000492:	434b      	muls	r3, r1
 8000494:	6879      	ldr	r1, [r7, #4]
 8000496:	434b      	muls	r3, r1
 8000498:	431a      	orrs	r2, r3
 800049a:	68fb      	ldr	r3, [r7, #12]
 800049c:	60da      	str	r2, [r3, #12]
 800049e:	46bd      	mov	sp, r7
 80004a0:	b004      	add	sp, #16
 80004a2:	bd80      	pop	{r7, pc}

080004a4 <LL_GPIO_SetOutputPin>:
 80004a4:	b580      	push	{r7, lr}
 80004a6:	b082      	sub	sp, #8
 80004a8:	af00      	add	r7, sp, #0
 80004aa:	6078      	str	r0, [r7, #4]
 80004ac:	6039      	str	r1, [r7, #0]
 80004ae:	687b      	ldr	r3, [r7, #4]
 80004b0:	683a      	ldr	r2, [r7, #0]
 80004b2:	619a      	str	r2, [r3, #24]
 80004b4:	46bd      	mov	sp, r7
 80004b6:	b002      	add	sp, #8
 80004b8:	bd80      	pop	{r7, pc}
 80004ba:	46c0      	nop			; (mov r8, r8)

080004bc <LL_RCC_HSI_Enable>:
 80004bc:	b580      	push	{r7, lr}
 80004be:	af00      	add	r7, sp, #0
 80004c0:	4b03      	ldr	r3, [pc, #12]	; (80004d0 <LL_RCC_HSI_Enable+0x14>)
 80004c2:	4a03      	ldr	r2, [pc, #12]	; (80004d0 <LL_RCC_HSI_Enable+0x14>)
 80004c4:	6812      	ldr	r2, [r2, #0]
 80004c6:	2101      	movs	r1, #1
 80004c8:	430a      	orrs	r2, r1
 80004ca:	601a      	str	r2, [r3, #0]
 80004cc:	46bd      	mov	sp, r7
 80004ce:	bd80      	pop	{r7, pc}
 80004d0:	40021000 	.word	0x40021000

080004d4 <LL_RCC_HSI_IsReady>:
 80004d4:	b580      	push	{r7, lr}
 80004d6:	af00      	add	r7, sp, #0
 80004d8:	4b04      	ldr	r3, [pc, #16]	; (80004ec <LL_RCC_HSI_IsReady+0x18>)
 80004da:	681b      	ldr	r3, [r3, #0]
 80004dc:	2202      	movs	r2, #2
 80004de:	4013      	ands	r3, r2
 80004e0:	1e5a      	subs	r2, r3, #1
 80004e2:	4193      	sbcs	r3, r2
 80004e4:	b2db      	uxtb	r3, r3
 80004e6:	1c18      	adds	r0, r3, #0
 80004e8:	46bd      	mov	sp, r7
 80004ea:	bd80      	pop	{r7, pc}
 80004ec:	40021000 	.word	0x40021000

080004f0 <LL_RCC_SetSysClkSource>:
 80004f0:	b580      	push	{r7, lr}
 80004f2:	b082      	sub	sp, #8
 80004f4:	af00      	add	r7, sp, #0
 80004f6:	6078      	str	r0, [r7, #4]
 80004f8:	4b05      	ldr	r3, [pc, #20]	; (8000510 <LL_RCC_SetSysClkSource+0x20>)
 80004fa:	4a05      	ldr	r2, [pc, #20]	; (8000510 <LL_RCC_SetSysClkSource+0x20>)
 80004fc:	6852      	ldr	r2, [r2, #4]
 80004fe:	2103      	movs	r1, #3
 8000500:	438a      	bics	r2, r1
 8000502:	1c11      	adds	r1, r2, #0
 8000504:	687a      	ldr	r2, [r7, #4]
 8000506:	430a      	orrs	r2, r1
 8000508:	605a      	str	r2, [r3, #4]
 800050a:	46bd      	mov	sp, r7
 800050c:	b002      	add	sp, #8
 800050e:	bd80      	pop	{r7, pc}
 8000510:	40021000 	.word	0x40021000

08000514 <LL_RCC_GetSysClkSource>:
 8000514:	b580      	push	{r7, lr}
 8000516:	af00      	add	r7, sp, #0
 8000518:	4b03      	ldr	r3, [pc, #12]	; (8000528 <LL_RCC_GetSysClkSource+0x14>)
 800051a:	685b      	ldr	r3, [r3, #4]
 800051c:	220c      	movs	r2, #12
 800051e:	4013      	ands	r3, r2
 8000520:	1c18      	adds	r0, r3, #0
 8000522:	46bd      	mov	sp, r7
 8000524:	bd80      	pop	{r7, pc}
 8000526:	46c0      	nop			; (mov r8, r8)
 8000528:	40021000 	.word	0x40021000

0800052c <LL_RCC_SetAHBPrescaler>:
 800052c:	b580      	push	{r7, lr}
 800052e:	b082      	sub	sp, #8
 8000530:	af00      	add	r7, sp, #0
 8000532:	6078      	str	r0, [r7, #4]
 8000534:	4b05      	ldr	r3, [pc, #20]	; (800054c <LL_RCC_SetAHBPrescaler+0x20>)
 8000536:	4a05      	ldr	r2, [pc, #20]	; (800054c <LL_RCC_SetAHBPrescaler+0x20>)
 8000538:	6852      	ldr	r2, [r2, #4]
 800053a:	21f0      	movs	r1, #240	; 0xf0
 800053c:	438a      	bics	r2, r1
 800053e:	1c11      	adds	r1, r2, #0
 8000540:	687a      	ldr	r2, [r7, #4]
 8000542:	430a      	orrs	r2, r1
 8000544:	605a      	str	r2, [r3, #4]
 8000546:	46bd      	mov	sp, r7
 8000548:	b002      	add	sp, #8
 800054a:	bd80      	pop	{r7, pc}
 800054c:	40021000 	.word	0x40021000

08000550 <LL_RCC_SetAPB1Prescaler>:
 8000550:	b580      	push	{r7, lr}
 8000552:	b082      	sub	sp, #8
 8000554:	af00      	add	r7, sp, #0
 8000556:	6078      	str	r0, [r7, #4]
 8000558:	4b05      	ldr	r3, [pc, #20]	; (8000570 <LL_RCC_SetAPB1Prescaler+0x20>)
 800055a:	4a05      	ldr	r2, [pc, #20]	; (8000570 <LL_RCC_SetAPB1Prescaler+0x20>)
 800055c:	6852      	ldr	r2, [r2, #4]
 800055e:	4905      	ldr	r1, [pc, #20]	; (8000574 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000560:	4011      	ands	r1, r2
 8000562:	687a      	ldr	r2, [r7, #4]
 8000564:	430a      	orrs	r2, r1
 8000566:	605a      	str	r2, [r3, #4]
 8000568:	46bd      	mov	sp, r7
 800056a:	b002      	add	sp, #8
 800056c:	bd80      	pop	{r7, pc}
 800056e:	46c0      	nop			; (mov r8, r8)
 8000570:	40021000 	.word	0x40021000
 8000574:	fffff8ff 	.word	0xfffff8ff

08000578 <LL_RCC_PLL_Enable>:
 8000578:	b580      	push	{r7, lr}
 800057a:	af00      	add	r7, sp, #0
 800057c:	4b04      	ldr	r3, [pc, #16]	; (8000590 <LL_RCC_PLL_Enable+0x18>)
 800057e:	4a04      	ldr	r2, [pc, #16]	; (8000590 <LL_RCC_PLL_Enable+0x18>)
 8000580:	6812      	ldr	r2, [r2, #0]
 8000582:	2180      	movs	r1, #128	; 0x80
 8000584:	0449      	lsls	r1, r1, #17
 8000586:	430a      	orrs	r2, r1
 8000588:	601a      	str	r2, [r3, #0]
 800058a:	46bd      	mov	sp, r7
 800058c:	bd80      	pop	{r7, pc}
 800058e:	46c0      	nop			; (mov r8, r8)
 8000590:	40021000 	.word	0x40021000

08000594 <LL_RCC_PLL_IsReady>:
 8000594:	b580      	push	{r7, lr}
 8000596:	af00      	add	r7, sp, #0
 8000598:	4b05      	ldr	r3, [pc, #20]	; (80005b0 <LL_RCC_PLL_IsReady+0x1c>)
 800059a:	681a      	ldr	r2, [r3, #0]
 800059c:	2380      	movs	r3, #128	; 0x80
 800059e:	049b      	lsls	r3, r3, #18
 80005a0:	4013      	ands	r3, r2
 80005a2:	1e5a      	subs	r2, r3, #1
 80005a4:	4193      	sbcs	r3, r2
 80005a6:	b2db      	uxtb	r3, r3
 80005a8:	1c18      	adds	r0, r3, #0
 80005aa:	46bd      	mov	sp, r7
 80005ac:	bd80      	pop	{r7, pc}
 80005ae:	46c0      	nop			; (mov r8, r8)
 80005b0:	40021000 	.word	0x40021000

080005b4 <LL_RCC_PLL_ConfigDomain_SYS>:
 80005b4:	b580      	push	{r7, lr}
 80005b6:	b082      	sub	sp, #8
 80005b8:	af00      	add	r7, sp, #0
 80005ba:	6078      	str	r0, [r7, #4]
 80005bc:	6039      	str	r1, [r7, #0]
 80005be:	4b0d      	ldr	r3, [pc, #52]	; (80005f4 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 80005c0:	4a0c      	ldr	r2, [pc, #48]	; (80005f4 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 80005c2:	6852      	ldr	r2, [r2, #4]
 80005c4:	490c      	ldr	r1, [pc, #48]	; (80005f8 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80005c6:	4011      	ands	r1, r2
 80005c8:	6878      	ldr	r0, [r7, #4]
 80005ca:	2280      	movs	r2, #128	; 0x80
 80005cc:	0252      	lsls	r2, r2, #9
 80005ce:	4010      	ands	r0, r2
 80005d0:	683a      	ldr	r2, [r7, #0]
 80005d2:	4302      	orrs	r2, r0
 80005d4:	430a      	orrs	r2, r1
 80005d6:	605a      	str	r2, [r3, #4]
 80005d8:	4b06      	ldr	r3, [pc, #24]	; (80005f4 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 80005da:	4a06      	ldr	r2, [pc, #24]	; (80005f4 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 80005dc:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80005de:	210f      	movs	r1, #15
 80005e0:	438a      	bics	r2, r1
 80005e2:	1c11      	adds	r1, r2, #0
 80005e4:	687a      	ldr	r2, [r7, #4]
 80005e6:	200f      	movs	r0, #15
 80005e8:	4002      	ands	r2, r0
 80005ea:	430a      	orrs	r2, r1
 80005ec:	62da      	str	r2, [r3, #44]	; 0x2c
 80005ee:	46bd      	mov	sp, r7
 80005f0:	b002      	add	sp, #8
 80005f2:	bd80      	pop	{r7, pc}
 80005f4:	40021000 	.word	0x40021000
 80005f8:	ffc2ffff 	.word	0xffc2ffff

080005fc <LL_FLASH_SetLatency>:
 80005fc:	b580      	push	{r7, lr}
 80005fe:	b082      	sub	sp, #8
 8000600:	af00      	add	r7, sp, #0
 8000602:	6078      	str	r0, [r7, #4]
 8000604:	4b05      	ldr	r3, [pc, #20]	; (800061c <LL_FLASH_SetLatency+0x20>)
 8000606:	4a05      	ldr	r2, [pc, #20]	; (800061c <LL_FLASH_SetLatency+0x20>)
 8000608:	6812      	ldr	r2, [r2, #0]
 800060a:	2101      	movs	r1, #1
 800060c:	438a      	bics	r2, r1
 800060e:	1c11      	adds	r1, r2, #0
 8000610:	687a      	ldr	r2, [r7, #4]
 8000612:	430a      	orrs	r2, r1
 8000614:	601a      	str	r2, [r3, #0]
 8000616:	46bd      	mov	sp, r7
 8000618:	b002      	add	sp, #8
 800061a:	bd80      	pop	{r7, pc}
 800061c:	40022000 	.word	0x40022000

08000620 <LL_TIM_EnableCounter>:
 8000620:	b580      	push	{r7, lr}
 8000622:	b082      	sub	sp, #8
 8000624:	af00      	add	r7, sp, #0
 8000626:	6078      	str	r0, [r7, #4]
 8000628:	687b      	ldr	r3, [r7, #4]
 800062a:	681b      	ldr	r3, [r3, #0]
 800062c:	2201      	movs	r2, #1
 800062e:	431a      	orrs	r2, r3
 8000630:	687b      	ldr	r3, [r7, #4]
 8000632:	601a      	str	r2, [r3, #0]
 8000634:	46bd      	mov	sp, r7
 8000636:	b002      	add	sp, #8
 8000638:	bd80      	pop	{r7, pc}
 800063a:	46c0      	nop			; (mov r8, r8)

0800063c <LL_TIM_GetAutoReload>:
 800063c:	b580      	push	{r7, lr}
 800063e:	b082      	sub	sp, #8
 8000640:	af00      	add	r7, sp, #0
 8000642:	6078      	str	r0, [r7, #4]
 8000644:	687b      	ldr	r3, [r7, #4]
 8000646:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000648:	1c18      	adds	r0, r3, #0
 800064a:	46bd      	mov	sp, r7
 800064c:	b002      	add	sp, #8
 800064e:	bd80      	pop	{r7, pc}

08000650 <main>:
 8000650:	b580      	push	{r7, lr}
 8000652:	b08e      	sub	sp, #56	; 0x38
 8000654:	af00      	add	r7, sp, #0
 8000656:	f000 f897 	bl	8000788 <SystemClock_Config>
 800065a:	2002      	movs	r0, #2
 800065c:	f7ff fed4 	bl	8000408 <LL_AHB1_GRP1_EnableClock>
 8000660:	2380      	movs	r3, #128	; 0x80
 8000662:	031b      	lsls	r3, r3, #12
 8000664:	1c18      	adds	r0, r3, #0
 8000666:	f7ff fecf 	bl	8000408 <LL_AHB1_GRP1_EnableClock>
 800066a:	4a42      	ldr	r2, [pc, #264]	; (8000774 <main+0x124>)
 800066c:	2380      	movs	r3, #128	; 0x80
 800066e:	009b      	lsls	r3, r3, #2
 8000670:	1c10      	adds	r0, r2, #0
 8000672:	1c19      	adds	r1, r3, #0
 8000674:	2202      	movs	r2, #2
 8000676:	f7ff fedd 	bl	8000434 <LL_GPIO_SetPinMode>
 800067a:	4a3e      	ldr	r2, [pc, #248]	; (8000774 <main+0x124>)
 800067c:	2380      	movs	r3, #128	; 0x80
 800067e:	005b      	lsls	r3, r3, #1
 8000680:	1c10      	adds	r0, r2, #0
 8000682:	1c19      	adds	r1, r3, #0
 8000684:	2201      	movs	r2, #1
 8000686:	f7ff fed5 	bl	8000434 <LL_GPIO_SetPinMode>
 800068a:	4a3a      	ldr	r2, [pc, #232]	; (8000774 <main+0x124>)
 800068c:	2380      	movs	r3, #128	; 0x80
 800068e:	009b      	lsls	r3, r3, #2
 8000690:	1c10      	adds	r0, r2, #0
 8000692:	1c19      	adds	r1, r3, #0
 8000694:	2202      	movs	r2, #2
 8000696:	f7ff fee9 	bl	800046c <LL_GPIO_SetPinPull>
 800069a:	4b37      	ldr	r3, [pc, #220]	; (8000778 <main+0x128>)
 800069c:	681b      	ldr	r3, [r3, #0]
 800069e:	4a37      	ldr	r2, [pc, #220]	; (800077c <main+0x12c>)
 80006a0:	4293      	cmp	r3, r2
 80006a2:	d90a      	bls.n	80006ba <main+0x6a>
 80006a4:	4b34      	ldr	r3, [pc, #208]	; (8000778 <main+0x128>)
 80006a6:	681b      	ldr	r3, [r3, #0]
 80006a8:	1c18      	adds	r0, r3, #0
 80006aa:	4935      	ldr	r1, [pc, #212]	; (8000780 <main+0x130>)
 80006ac:	f7ff fd62 	bl	8000174 <__aeabi_uidiv>
 80006b0:	1c03      	adds	r3, r0, #0
 80006b2:	b29b      	uxth	r3, r3
 80006b4:	3b01      	subs	r3, #1
 80006b6:	b29a      	uxth	r2, r3
 80006b8:	e000      	b.n	80006bc <main+0x6c>
 80006ba:	2200      	movs	r2, #0
 80006bc:	2324      	movs	r3, #36	; 0x24
 80006be:	18fb      	adds	r3, r7, r3
 80006c0:	801a      	strh	r2, [r3, #0]
 80006c2:	2324      	movs	r3, #36	; 0x24
 80006c4:	18fb      	adds	r3, r7, r3
 80006c6:	2200      	movs	r2, #0
 80006c8:	605a      	str	r2, [r3, #4]
 80006ca:	4b2b      	ldr	r3, [pc, #172]	; (8000778 <main+0x128>)
 80006cc:	681a      	ldr	r2, [r3, #0]
 80006ce:	2324      	movs	r3, #36	; 0x24
 80006d0:	18fb      	adds	r3, r7, r3
 80006d2:	881b      	ldrh	r3, [r3, #0]
 80006d4:	3301      	adds	r3, #1
 80006d6:	1c10      	adds	r0, r2, #0
 80006d8:	1c19      	adds	r1, r3, #0
 80006da:	f7ff fd4b 	bl	8000174 <__aeabi_uidiv>
 80006de:	1e03      	subs	r3, r0, #0
 80006e0:	2b09      	cmp	r3, #9
 80006e2:	d910      	bls.n	8000706 <main+0xb6>
 80006e4:	4b24      	ldr	r3, [pc, #144]	; (8000778 <main+0x128>)
 80006e6:	6819      	ldr	r1, [r3, #0]
 80006e8:	2324      	movs	r3, #36	; 0x24
 80006ea:	18fb      	adds	r3, r7, r3
 80006ec:	881b      	ldrh	r3, [r3, #0]
 80006ee:	1c5a      	adds	r2, r3, #1
 80006f0:	1c13      	adds	r3, r2, #0
 80006f2:	009b      	lsls	r3, r3, #2
 80006f4:	189b      	adds	r3, r3, r2
 80006f6:	005b      	lsls	r3, r3, #1
 80006f8:	1c08      	adds	r0, r1, #0
 80006fa:	1c19      	adds	r1, r3, #0
 80006fc:	f7ff fd3a 	bl	8000174 <__aeabi_uidiv>
 8000700:	1c03      	adds	r3, r0, #0
 8000702:	1e5a      	subs	r2, r3, #1
 8000704:	e000      	b.n	8000708 <main+0xb8>
 8000706:	2200      	movs	r2, #0
 8000708:	2324      	movs	r3, #36	; 0x24
 800070a:	18fb      	adds	r3, r7, r3
 800070c:	609a      	str	r2, [r3, #8]
 800070e:	2324      	movs	r3, #36	; 0x24
 8000710:	18fb      	adds	r3, r7, r3
 8000712:	2200      	movs	r2, #0
 8000714:	60da      	str	r2, [r3, #12]
 8000716:	2324      	movs	r3, #36	; 0x24
 8000718:	18fb      	adds	r3, r7, r3
 800071a:	2200      	movs	r2, #0
 800071c:	741a      	strb	r2, [r3, #16]
 800071e:	4a19      	ldr	r2, [pc, #100]	; (8000784 <main+0x134>)
 8000720:	2324      	movs	r3, #36	; 0x24
 8000722:	18fb      	adds	r3, r7, r3
 8000724:	1c10      	adds	r0, r2, #0
 8000726:	1c19      	adds	r1, r3, #0
 8000728:	f000 f95e 	bl	80009e8 <LL_TIM_Init>
 800072c:	1d3b      	adds	r3, r7, #4
 800072e:	1c18      	adds	r0, r3, #0
 8000730:	f000 f9de 	bl	8000af0 <LL_TIM_OC_StructInit>
 8000734:	1d3b      	adds	r3, r7, #4
 8000736:	2260      	movs	r2, #96	; 0x60
 8000738:	601a      	str	r2, [r3, #0]
 800073a:	1d3b      	adds	r3, r7, #4
 800073c:	2201      	movs	r2, #1
 800073e:	605a      	str	r2, [r3, #4]
 8000740:	1d3b      	adds	r3, r7, #4
 8000742:	2200      	movs	r2, #0
 8000744:	611a      	str	r2, [r3, #16]
 8000746:	4b0f      	ldr	r3, [pc, #60]	; (8000784 <main+0x134>)
 8000748:	1c18      	adds	r0, r3, #0
 800074a:	f7ff ff77 	bl	800063c <LL_TIM_GetAutoReload>
 800074e:	1c03      	adds	r3, r0, #0
 8000750:	3301      	adds	r3, #1
 8000752:	085a      	lsrs	r2, r3, #1
 8000754:	1d3b      	adds	r3, r7, #4
 8000756:	60da      	str	r2, [r3, #12]
 8000758:	490a      	ldr	r1, [pc, #40]	; (8000784 <main+0x134>)
 800075a:	2380      	movs	r3, #128	; 0x80
 800075c:	015a      	lsls	r2, r3, #5
 800075e:	1d3b      	adds	r3, r7, #4
 8000760:	1c08      	adds	r0, r1, #0
 8000762:	1c11      	adds	r1, r2, #0
 8000764:	1c1a      	adds	r2, r3, #0
 8000766:	f000 f9e3 	bl	8000b30 <LL_TIM_OC_Init>
 800076a:	4b06      	ldr	r3, [pc, #24]	; (8000784 <main+0x134>)
 800076c:	1c18      	adds	r0, r3, #0
 800076e:	f7ff ff57 	bl	8000620 <LL_TIM_EnableCounter>
 8000772:	e7fe      	b.n	8000772 <main+0x122>
 8000774:	48000800 	.word	0x48000800
 8000778:	20000000 	.word	0x20000000
 800077c:	0000270f 	.word	0x0000270f
 8000780:	00002710 	.word	0x00002710
 8000784:	40000400 	.word	0x40000400

08000788 <SystemClock_Config>:
 8000788:	b580      	push	{r7, lr}
 800078a:	af00      	add	r7, sp, #0
 800078c:	2001      	movs	r0, #1
 800078e:	f7ff ff35 	bl	80005fc <LL_FLASH_SetLatency>
 8000792:	f7ff fe93 	bl	80004bc <LL_RCC_HSI_Enable>
 8000796:	46c0      	nop			; (mov r8, r8)
 8000798:	f7ff fe9c 	bl	80004d4 <LL_RCC_HSI_IsReady>
 800079c:	1e03      	subs	r3, r0, #0
 800079e:	2b01      	cmp	r3, #1
 80007a0:	d1fa      	bne.n	8000798 <SystemClock_Config+0x10>
 80007a2:	23a0      	movs	r3, #160	; 0xa0
 80007a4:	039b      	lsls	r3, r3, #14
 80007a6:	2000      	movs	r0, #0
 80007a8:	1c19      	adds	r1, r3, #0
 80007aa:	f7ff ff03 	bl	80005b4 <LL_RCC_PLL_ConfigDomain_SYS>
 80007ae:	f7ff fee3 	bl	8000578 <LL_RCC_PLL_Enable>
 80007b2:	46c0      	nop			; (mov r8, r8)
 80007b4:	f7ff feee 	bl	8000594 <LL_RCC_PLL_IsReady>
 80007b8:	1e03      	subs	r3, r0, #0
 80007ba:	2b01      	cmp	r3, #1
 80007bc:	d1fa      	bne.n	80007b4 <SystemClock_Config+0x2c>
 80007be:	2000      	movs	r0, #0
 80007c0:	f7ff feb4 	bl	800052c <LL_RCC_SetAHBPrescaler>
 80007c4:	2002      	movs	r0, #2
 80007c6:	f7ff fe93 	bl	80004f0 <LL_RCC_SetSysClkSource>
 80007ca:	46c0      	nop			; (mov r8, r8)
 80007cc:	f7ff fea2 	bl	8000514 <LL_RCC_GetSysClkSource>
 80007d0:	1e03      	subs	r3, r0, #0
 80007d2:	2b08      	cmp	r3, #8
 80007d4:	d1fa      	bne.n	80007cc <SystemClock_Config+0x44>
 80007d6:	2000      	movs	r0, #0
 80007d8:	f7ff feba 	bl	8000550 <LL_RCC_SetAPB1Prescaler>
 80007dc:	4b04      	ldr	r3, [pc, #16]	; (80007f0 <SystemClock_Config+0x68>)
 80007de:	1c18      	adds	r0, r3, #0
 80007e0:	f7ff fdee 	bl	80003c0 <SysTick_Config>
 80007e4:	4b03      	ldr	r3, [pc, #12]	; (80007f4 <SystemClock_Config+0x6c>)
 80007e6:	4a04      	ldr	r2, [pc, #16]	; (80007f8 <SystemClock_Config+0x70>)
 80007e8:	601a      	str	r2, [r3, #0]
 80007ea:	46bd      	mov	sp, r7
 80007ec:	bd80      	pop	{r7, pc}
 80007ee:	46c0      	nop			; (mov r8, r8)
 80007f0:	0000bb80 	.word	0x0000bb80
 80007f4:	20000000 	.word	0x20000000
 80007f8:	02dc6c00 	.word	0x02dc6c00

080007fc <TIM3_IRQHandler>:
 80007fc:	b580      	push	{r7, lr}
 80007fe:	af00      	add	r7, sp, #0
 8000800:	4a04      	ldr	r2, [pc, #16]	; (8000814 <TIM3_IRQHandler+0x18>)
 8000802:	2380      	movs	r3, #128	; 0x80
 8000804:	005b      	lsls	r3, r3, #1
 8000806:	1c10      	adds	r0, r2, #0
 8000808:	1c19      	adds	r1, r3, #0
 800080a:	f7ff fe4b 	bl	80004a4 <LL_GPIO_SetOutputPin>
 800080e:	46bd      	mov	sp, r7
 8000810:	bd80      	pop	{r7, pc}
 8000812:	46c0      	nop			; (mov r8, r8)
 8000814:	48000800 	.word	0x48000800

08000818 <NMI_Handler>:
 8000818:	b580      	push	{r7, lr}
 800081a:	af00      	add	r7, sp, #0
 800081c:	4a04      	ldr	r2, [pc, #16]	; (8000830 <NMI_Handler+0x18>)
 800081e:	2380      	movs	r3, #128	; 0x80
 8000820:	005b      	lsls	r3, r3, #1
 8000822:	1c10      	adds	r0, r2, #0
 8000824:	1c19      	adds	r1, r3, #0
 8000826:	f7ff fe3d 	bl	80004a4 <LL_GPIO_SetOutputPin>
 800082a:	46bd      	mov	sp, r7
 800082c:	bd80      	pop	{r7, pc}
 800082e:	46c0      	nop			; (mov r8, r8)
 8000830:	48000800 	.word	0x48000800

08000834 <HardFault_Handler>:
 8000834:	b580      	push	{r7, lr}
 8000836:	af00      	add	r7, sp, #0
 8000838:	4a03      	ldr	r2, [pc, #12]	; (8000848 <HardFault_Handler+0x14>)
 800083a:	2380      	movs	r3, #128	; 0x80
 800083c:	005b      	lsls	r3, r3, #1
 800083e:	1c10      	adds	r0, r2, #0
 8000840:	1c19      	adds	r1, r3, #0
 8000842:	f7ff fe2f 	bl	80004a4 <LL_GPIO_SetOutputPin>
 8000846:	e7fe      	b.n	8000846 <HardFault_Handler+0x12>
 8000848:	48000800 	.word	0x48000800

0800084c <SVC_Handler>:
 800084c:	b580      	push	{r7, lr}
 800084e:	af00      	add	r7, sp, #0
 8000850:	4a04      	ldr	r2, [pc, #16]	; (8000864 <SVC_Handler+0x18>)
 8000852:	2380      	movs	r3, #128	; 0x80
 8000854:	005b      	lsls	r3, r3, #1
 8000856:	1c10      	adds	r0, r2, #0
 8000858:	1c19      	adds	r1, r3, #0
 800085a:	f7ff fe23 	bl	80004a4 <LL_GPIO_SetOutputPin>
 800085e:	46bd      	mov	sp, r7
 8000860:	bd80      	pop	{r7, pc}
 8000862:	46c0      	nop			; (mov r8, r8)
 8000864:	48000800 	.word	0x48000800

08000868 <PendSV_Handler>:
 8000868:	b580      	push	{r7, lr}
 800086a:	af00      	add	r7, sp, #0
 800086c:	4a04      	ldr	r2, [pc, #16]	; (8000880 <PendSV_Handler+0x18>)
 800086e:	2380      	movs	r3, #128	; 0x80
 8000870:	005b      	lsls	r3, r3, #1
 8000872:	1c10      	adds	r0, r2, #0
 8000874:	1c19      	adds	r1, r3, #0
 8000876:	f7ff fe15 	bl	80004a4 <LL_GPIO_SetOutputPin>
 800087a:	46bd      	mov	sp, r7
 800087c:	bd80      	pop	{r7, pc}
 800087e:	46c0      	nop			; (mov r8, r8)
 8000880:	48000800 	.word	0x48000800

08000884 <SysTick_Handler>:
 8000884:	b580      	push	{r7, lr}
 8000886:	af00      	add	r7, sp, #0
 8000888:	4b03      	ldr	r3, [pc, #12]	; (8000898 <SysTick_Handler+0x14>)
 800088a:	681b      	ldr	r3, [r3, #0]
 800088c:	1c5a      	adds	r2, r3, #1
 800088e:	4b02      	ldr	r3, [pc, #8]	; (8000898 <SysTick_Handler+0x14>)
 8000890:	601a      	str	r2, [r3, #0]
 8000892:	46bd      	mov	sp, r7
 8000894:	bd80      	pop	{r7, pc}
 8000896:	46c0      	nop			; (mov r8, r8)
 8000898:	2000044c 	.word	0x2000044c

0800089c <SystemInit>:
 800089c:	b580      	push	{r7, lr}
 800089e:	af00      	add	r7, sp, #0
 80008a0:	4b1a      	ldr	r3, [pc, #104]	; (800090c <SystemInit+0x70>)
 80008a2:	4a1a      	ldr	r2, [pc, #104]	; (800090c <SystemInit+0x70>)
 80008a4:	6812      	ldr	r2, [r2, #0]
 80008a6:	2101      	movs	r1, #1
 80008a8:	430a      	orrs	r2, r1
 80008aa:	601a      	str	r2, [r3, #0]
 80008ac:	4b17      	ldr	r3, [pc, #92]	; (800090c <SystemInit+0x70>)
 80008ae:	4a17      	ldr	r2, [pc, #92]	; (800090c <SystemInit+0x70>)
 80008b0:	6852      	ldr	r2, [r2, #4]
 80008b2:	4917      	ldr	r1, [pc, #92]	; (8000910 <SystemInit+0x74>)
 80008b4:	400a      	ands	r2, r1
 80008b6:	605a      	str	r2, [r3, #4]
 80008b8:	4b14      	ldr	r3, [pc, #80]	; (800090c <SystemInit+0x70>)
 80008ba:	4a14      	ldr	r2, [pc, #80]	; (800090c <SystemInit+0x70>)
 80008bc:	6812      	ldr	r2, [r2, #0]
 80008be:	4915      	ldr	r1, [pc, #84]	; (8000914 <SystemInit+0x78>)
 80008c0:	400a      	ands	r2, r1
 80008c2:	601a      	str	r2, [r3, #0]
 80008c4:	4b11      	ldr	r3, [pc, #68]	; (800090c <SystemInit+0x70>)
 80008c6:	4a11      	ldr	r2, [pc, #68]	; (800090c <SystemInit+0x70>)
 80008c8:	6812      	ldr	r2, [r2, #0]
 80008ca:	4913      	ldr	r1, [pc, #76]	; (8000918 <SystemInit+0x7c>)
 80008cc:	400a      	ands	r2, r1
 80008ce:	601a      	str	r2, [r3, #0]
 80008d0:	4b0e      	ldr	r3, [pc, #56]	; (800090c <SystemInit+0x70>)
 80008d2:	4a0e      	ldr	r2, [pc, #56]	; (800090c <SystemInit+0x70>)
 80008d4:	6852      	ldr	r2, [r2, #4]
 80008d6:	4911      	ldr	r1, [pc, #68]	; (800091c <SystemInit+0x80>)
 80008d8:	400a      	ands	r2, r1
 80008da:	605a      	str	r2, [r3, #4]
 80008dc:	4b0b      	ldr	r3, [pc, #44]	; (800090c <SystemInit+0x70>)
 80008de:	4a0b      	ldr	r2, [pc, #44]	; (800090c <SystemInit+0x70>)
 80008e0:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 80008e2:	210f      	movs	r1, #15
 80008e4:	438a      	bics	r2, r1
 80008e6:	62da      	str	r2, [r3, #44]	; 0x2c
 80008e8:	4b08      	ldr	r3, [pc, #32]	; (800090c <SystemInit+0x70>)
 80008ea:	4a08      	ldr	r2, [pc, #32]	; (800090c <SystemInit+0x70>)
 80008ec:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80008ee:	490c      	ldr	r1, [pc, #48]	; (8000920 <SystemInit+0x84>)
 80008f0:	400a      	ands	r2, r1
 80008f2:	631a      	str	r2, [r3, #48]	; 0x30
 80008f4:	4b05      	ldr	r3, [pc, #20]	; (800090c <SystemInit+0x70>)
 80008f6:	4a05      	ldr	r2, [pc, #20]	; (800090c <SystemInit+0x70>)
 80008f8:	6b52      	ldr	r2, [r2, #52]	; 0x34
 80008fa:	2101      	movs	r1, #1
 80008fc:	438a      	bics	r2, r1
 80008fe:	635a      	str	r2, [r3, #52]	; 0x34
 8000900:	4b02      	ldr	r3, [pc, #8]	; (800090c <SystemInit+0x70>)
 8000902:	2200      	movs	r2, #0
 8000904:	609a      	str	r2, [r3, #8]
 8000906:	46bd      	mov	sp, r7
 8000908:	bd80      	pop	{r7, pc}
 800090a:	46c0      	nop			; (mov r8, r8)
 800090c:	40021000 	.word	0x40021000
 8000910:	f8ffb80c 	.word	0xf8ffb80c
 8000914:	fef6ffff 	.word	0xfef6ffff
 8000918:	fffbffff 	.word	0xfffbffff
 800091c:	ffc0ffff 	.word	0xffc0ffff
 8000920:	fffffeac 	.word	0xfffffeac

08000924 <LL_TIM_SetPrescaler>:
 8000924:	b580      	push	{r7, lr}
 8000926:	b082      	sub	sp, #8
 8000928:	af00      	add	r7, sp, #0
 800092a:	6078      	str	r0, [r7, #4]
 800092c:	6039      	str	r1, [r7, #0]
 800092e:	687b      	ldr	r3, [r7, #4]
 8000930:	683a      	ldr	r2, [r7, #0]
 8000932:	629a      	str	r2, [r3, #40]	; 0x28
 8000934:	46bd      	mov	sp, r7
 8000936:	b002      	add	sp, #8
 8000938:	bd80      	pop	{r7, pc}
 800093a:	46c0      	nop			; (mov r8, r8)

0800093c <LL_TIM_SetAutoReload>:
 800093c:	b580      	push	{r7, lr}
 800093e:	b082      	sub	sp, #8
 8000940:	af00      	add	r7, sp, #0
 8000942:	6078      	str	r0, [r7, #4]
 8000944:	6039      	str	r1, [r7, #0]
 8000946:	687b      	ldr	r3, [r7, #4]
 8000948:	683a      	ldr	r2, [r7, #0]
 800094a:	62da      	str	r2, [r3, #44]	; 0x2c
 800094c:	46bd      	mov	sp, r7
 800094e:	b002      	add	sp, #8
 8000950:	bd80      	pop	{r7, pc}
 8000952:	46c0      	nop			; (mov r8, r8)

08000954 <LL_TIM_SetRepetitionCounter>:
 8000954:	b580      	push	{r7, lr}
 8000956:	b082      	sub	sp, #8
 8000958:	af00      	add	r7, sp, #0
 800095a:	6078      	str	r0, [r7, #4]
 800095c:	6039      	str	r1, [r7, #0]
 800095e:	687b      	ldr	r3, [r7, #4]
 8000960:	683a      	ldr	r2, [r7, #0]
 8000962:	631a      	str	r2, [r3, #48]	; 0x30
 8000964:	46bd      	mov	sp, r7
 8000966:	b002      	add	sp, #8
 8000968:	bd80      	pop	{r7, pc}
 800096a:	46c0      	nop			; (mov r8, r8)

0800096c <LL_TIM_OC_SetCompareCH1>:
 800096c:	b580      	push	{r7, lr}
 800096e:	b082      	sub	sp, #8
 8000970:	af00      	add	r7, sp, #0
 8000972:	6078      	str	r0, [r7, #4]
 8000974:	6039      	str	r1, [r7, #0]
 8000976:	687b      	ldr	r3, [r7, #4]
 8000978:	683a      	ldr	r2, [r7, #0]
 800097a:	635a      	str	r2, [r3, #52]	; 0x34
 800097c:	46bd      	mov	sp, r7
 800097e:	b002      	add	sp, #8
 8000980:	bd80      	pop	{r7, pc}
 8000982:	46c0      	nop			; (mov r8, r8)

08000984 <LL_TIM_OC_SetCompareCH2>:
 8000984:	b580      	push	{r7, lr}
 8000986:	b082      	sub	sp, #8
 8000988:	af00      	add	r7, sp, #0
 800098a:	6078      	str	r0, [r7, #4]
 800098c:	6039      	str	r1, [r7, #0]
 800098e:	687b      	ldr	r3, [r7, #4]
 8000990:	683a      	ldr	r2, [r7, #0]
 8000992:	639a      	str	r2, [r3, #56]	; 0x38
 8000994:	46bd      	mov	sp, r7
 8000996:	b002      	add	sp, #8
 8000998:	bd80      	pop	{r7, pc}
 800099a:	46c0      	nop			; (mov r8, r8)

0800099c <LL_TIM_OC_SetCompareCH3>:
 800099c:	b580      	push	{r7, lr}
 800099e:	b082      	sub	sp, #8
 80009a0:	af00      	add	r7, sp, #0
 80009a2:	6078      	str	r0, [r7, #4]
 80009a4:	6039      	str	r1, [r7, #0]
 80009a6:	687b      	ldr	r3, [r7, #4]
 80009a8:	683a      	ldr	r2, [r7, #0]
 80009aa:	63da      	str	r2, [r3, #60]	; 0x3c
 80009ac:	46bd      	mov	sp, r7
 80009ae:	b002      	add	sp, #8
 80009b0:	bd80      	pop	{r7, pc}
 80009b2:	46c0      	nop			; (mov r8, r8)

080009b4 <LL_TIM_OC_SetCompareCH4>:
 80009b4:	b580      	push	{r7, lr}
 80009b6:	b082      	sub	sp, #8
 80009b8:	af00      	add	r7, sp, #0
 80009ba:	6078      	str	r0, [r7, #4]
 80009bc:	6039      	str	r1, [r7, #0]
 80009be:	687b      	ldr	r3, [r7, #4]
 80009c0:	683a      	ldr	r2, [r7, #0]
 80009c2:	641a      	str	r2, [r3, #64]	; 0x40
 80009c4:	46bd      	mov	sp, r7
 80009c6:	b002      	add	sp, #8
 80009c8:	bd80      	pop	{r7, pc}
 80009ca:	46c0      	nop			; (mov r8, r8)

080009cc <LL_TIM_GenerateEvent_UPDATE>:
 80009cc:	b580      	push	{r7, lr}
 80009ce:	b082      	sub	sp, #8
 80009d0:	af00      	add	r7, sp, #0
 80009d2:	6078      	str	r0, [r7, #4]
 80009d4:	687b      	ldr	r3, [r7, #4]
 80009d6:	695b      	ldr	r3, [r3, #20]
 80009d8:	2201      	movs	r2, #1
 80009da:	431a      	orrs	r2, r3
 80009dc:	687b      	ldr	r3, [r7, #4]
 80009de:	615a      	str	r2, [r3, #20]
 80009e0:	46bd      	mov	sp, r7
 80009e2:	b002      	add	sp, #8
 80009e4:	bd80      	pop	{r7, pc}
 80009e6:	46c0      	nop			; (mov r8, r8)

080009e8 <LL_TIM_Init>:
 80009e8:	b580      	push	{r7, lr}
 80009ea:	b084      	sub	sp, #16
 80009ec:	af00      	add	r7, sp, #0
 80009ee:	6078      	str	r0, [r7, #4]
 80009f0:	6039      	str	r1, [r7, #0]
 80009f2:	2300      	movs	r3, #0
 80009f4:	60fb      	str	r3, [r7, #12]
 80009f6:	687b      	ldr	r3, [r7, #4]
 80009f8:	681b      	ldr	r3, [r3, #0]
 80009fa:	60fb      	str	r3, [r7, #12]
 80009fc:	687b      	ldr	r3, [r7, #4]
 80009fe:	4a35      	ldr	r2, [pc, #212]	; (8000ad4 <LL_TIM_Init+0xec>)
 8000a00:	4293      	cmp	r3, r2
 8000a02:	d008      	beq.n	8000a16 <LL_TIM_Init+0x2e>
 8000a04:	687a      	ldr	r2, [r7, #4]
 8000a06:	2380      	movs	r3, #128	; 0x80
 8000a08:	05db      	lsls	r3, r3, #23
 8000a0a:	429a      	cmp	r2, r3
 8000a0c:	d003      	beq.n	8000a16 <LL_TIM_Init+0x2e>
 8000a0e:	687b      	ldr	r3, [r7, #4]
 8000a10:	4a31      	ldr	r2, [pc, #196]	; (8000ad8 <LL_TIM_Init+0xf0>)
 8000a12:	4293      	cmp	r3, r2
 8000a14:	d107      	bne.n	8000a26 <LL_TIM_Init+0x3e>
 8000a16:	68fb      	ldr	r3, [r7, #12]
 8000a18:	2270      	movs	r2, #112	; 0x70
 8000a1a:	4393      	bics	r3, r2
 8000a1c:	1c1a      	adds	r2, r3, #0
 8000a1e:	683b      	ldr	r3, [r7, #0]
 8000a20:	685b      	ldr	r3, [r3, #4]
 8000a22:	4313      	orrs	r3, r2
 8000a24:	60fb      	str	r3, [r7, #12]
 8000a26:	687b      	ldr	r3, [r7, #4]
 8000a28:	4a2a      	ldr	r2, [pc, #168]	; (8000ad4 <LL_TIM_Init+0xec>)
 8000a2a:	4293      	cmp	r3, r2
 8000a2c:	d018      	beq.n	8000a60 <LL_TIM_Init+0x78>
 8000a2e:	687a      	ldr	r2, [r7, #4]
 8000a30:	2380      	movs	r3, #128	; 0x80
 8000a32:	05db      	lsls	r3, r3, #23
 8000a34:	429a      	cmp	r2, r3
 8000a36:	d013      	beq.n	8000a60 <LL_TIM_Init+0x78>
 8000a38:	687b      	ldr	r3, [r7, #4]
 8000a3a:	4a27      	ldr	r2, [pc, #156]	; (8000ad8 <LL_TIM_Init+0xf0>)
 8000a3c:	4293      	cmp	r3, r2
 8000a3e:	d00f      	beq.n	8000a60 <LL_TIM_Init+0x78>
 8000a40:	687b      	ldr	r3, [r7, #4]
 8000a42:	4a26      	ldr	r2, [pc, #152]	; (8000adc <LL_TIM_Init+0xf4>)
 8000a44:	4293      	cmp	r3, r2
 8000a46:	d00b      	beq.n	8000a60 <LL_TIM_Init+0x78>
 8000a48:	687b      	ldr	r3, [r7, #4]
 8000a4a:	4a25      	ldr	r2, [pc, #148]	; (8000ae0 <LL_TIM_Init+0xf8>)
 8000a4c:	4293      	cmp	r3, r2
 8000a4e:	d007      	beq.n	8000a60 <LL_TIM_Init+0x78>
 8000a50:	687b      	ldr	r3, [r7, #4]
 8000a52:	4a24      	ldr	r2, [pc, #144]	; (8000ae4 <LL_TIM_Init+0xfc>)
 8000a54:	4293      	cmp	r3, r2
 8000a56:	d003      	beq.n	8000a60 <LL_TIM_Init+0x78>
 8000a58:	687b      	ldr	r3, [r7, #4]
 8000a5a:	4a23      	ldr	r2, [pc, #140]	; (8000ae8 <LL_TIM_Init+0x100>)
 8000a5c:	4293      	cmp	r3, r2
 8000a5e:	d106      	bne.n	8000a6e <LL_TIM_Init+0x86>
 8000a60:	68fb      	ldr	r3, [r7, #12]
 8000a62:	4a22      	ldr	r2, [pc, #136]	; (8000aec <LL_TIM_Init+0x104>)
 8000a64:	401a      	ands	r2, r3
 8000a66:	683b      	ldr	r3, [r7, #0]
 8000a68:	68db      	ldr	r3, [r3, #12]
 8000a6a:	4313      	orrs	r3, r2
 8000a6c:	60fb      	str	r3, [r7, #12]
 8000a6e:	687b      	ldr	r3, [r7, #4]
 8000a70:	68fa      	ldr	r2, [r7, #12]
 8000a72:	601a      	str	r2, [r3, #0]
 8000a74:	683b      	ldr	r3, [r7, #0]
 8000a76:	689b      	ldr	r3, [r3, #8]
 8000a78:	687a      	ldr	r2, [r7, #4]
 8000a7a:	1c10      	adds	r0, r2, #0
 8000a7c:	1c19      	adds	r1, r3, #0
 8000a7e:	f7ff ff5d 	bl	800093c <LL_TIM_SetAutoReload>
 8000a82:	683b      	ldr	r3, [r7, #0]
 8000a84:	881b      	ldrh	r3, [r3, #0]
 8000a86:	1c1a      	adds	r2, r3, #0
 8000a88:	687b      	ldr	r3, [r7, #4]
 8000a8a:	1c18      	adds	r0, r3, #0
 8000a8c:	1c11      	adds	r1, r2, #0
 8000a8e:	f7ff ff49 	bl	8000924 <LL_TIM_SetPrescaler>
 8000a92:	687b      	ldr	r3, [r7, #4]
 8000a94:	4a0f      	ldr	r2, [pc, #60]	; (8000ad4 <LL_TIM_Init+0xec>)
 8000a96:	4293      	cmp	r3, r2
 8000a98:	d00b      	beq.n	8000ab2 <LL_TIM_Init+0xca>
 8000a9a:	687b      	ldr	r3, [r7, #4]
 8000a9c:	4a10      	ldr	r2, [pc, #64]	; (8000ae0 <LL_TIM_Init+0xf8>)
 8000a9e:	4293      	cmp	r3, r2
 8000aa0:	d007      	beq.n	8000ab2 <LL_TIM_Init+0xca>
 8000aa2:	687b      	ldr	r3, [r7, #4]
 8000aa4:	4a0f      	ldr	r2, [pc, #60]	; (8000ae4 <LL_TIM_Init+0xfc>)
 8000aa6:	4293      	cmp	r3, r2
 8000aa8:	d003      	beq.n	8000ab2 <LL_TIM_Init+0xca>
 8000aaa:	687b      	ldr	r3, [r7, #4]
 8000aac:	4a0e      	ldr	r2, [pc, #56]	; (8000ae8 <LL_TIM_Init+0x100>)
 8000aae:	4293      	cmp	r3, r2
 8000ab0:	d107      	bne.n	8000ac2 <LL_TIM_Init+0xda>
 8000ab2:	683b      	ldr	r3, [r7, #0]
 8000ab4:	7c1b      	ldrb	r3, [r3, #16]
 8000ab6:	1c1a      	adds	r2, r3, #0
 8000ab8:	687b      	ldr	r3, [r7, #4]
 8000aba:	1c18      	adds	r0, r3, #0
 8000abc:	1c11      	adds	r1, r2, #0
 8000abe:	f7ff ff49 	bl	8000954 <LL_TIM_SetRepetitionCounter>
 8000ac2:	687b      	ldr	r3, [r7, #4]
 8000ac4:	1c18      	adds	r0, r3, #0
 8000ac6:	f7ff ff81 	bl	80009cc <LL_TIM_GenerateEvent_UPDATE>
 8000aca:	2301      	movs	r3, #1
 8000acc:	1c18      	adds	r0, r3, #0
 8000ace:	46bd      	mov	sp, r7
 8000ad0:	b004      	add	sp, #16
 8000ad2:	bd80      	pop	{r7, pc}
 8000ad4:	40012c00 	.word	0x40012c00
 8000ad8:	40000400 	.word	0x40000400
 8000adc:	40002000 	.word	0x40002000
 8000ae0:	40014000 	.word	0x40014000
 8000ae4:	40014400 	.word	0x40014400
 8000ae8:	40014800 	.word	0x40014800
 8000aec:	fffffcff 	.word	0xfffffcff

08000af0 <LL_TIM_OC_StructInit>:
 8000af0:	b580      	push	{r7, lr}
 8000af2:	b082      	sub	sp, #8
 8000af4:	af00      	add	r7, sp, #0
 8000af6:	6078      	str	r0, [r7, #4]
 8000af8:	687b      	ldr	r3, [r7, #4]
 8000afa:	2200      	movs	r2, #0
 8000afc:	601a      	str	r2, [r3, #0]
 8000afe:	687b      	ldr	r3, [r7, #4]
 8000b00:	2200      	movs	r2, #0
 8000b02:	605a      	str	r2, [r3, #4]
 8000b04:	687b      	ldr	r3, [r7, #4]
 8000b06:	2200      	movs	r2, #0
 8000b08:	609a      	str	r2, [r3, #8]
 8000b0a:	687b      	ldr	r3, [r7, #4]
 8000b0c:	2200      	movs	r2, #0
 8000b0e:	60da      	str	r2, [r3, #12]
 8000b10:	687b      	ldr	r3, [r7, #4]
 8000b12:	2200      	movs	r2, #0
 8000b14:	611a      	str	r2, [r3, #16]
 8000b16:	687b      	ldr	r3, [r7, #4]
 8000b18:	2200      	movs	r2, #0
 8000b1a:	615a      	str	r2, [r3, #20]
 8000b1c:	687b      	ldr	r3, [r7, #4]
 8000b1e:	2200      	movs	r2, #0
 8000b20:	619a      	str	r2, [r3, #24]
 8000b22:	687b      	ldr	r3, [r7, #4]
 8000b24:	2200      	movs	r2, #0
 8000b26:	61da      	str	r2, [r3, #28]
 8000b28:	46bd      	mov	sp, r7
 8000b2a:	b002      	add	sp, #8
 8000b2c:	bd80      	pop	{r7, pc}
 8000b2e:	46c0      	nop			; (mov r8, r8)

08000b30 <LL_TIM_OC_Init>:
 8000b30:	b590      	push	{r4, r7, lr}
 8000b32:	b087      	sub	sp, #28
 8000b34:	af00      	add	r7, sp, #0
 8000b36:	60f8      	str	r0, [r7, #12]
 8000b38:	60b9      	str	r1, [r7, #8]
 8000b3a:	607a      	str	r2, [r7, #4]
 8000b3c:	2317      	movs	r3, #23
 8000b3e:	18fb      	adds	r3, r7, r3
 8000b40:	2200      	movs	r2, #0
 8000b42:	701a      	strb	r2, [r3, #0]
 8000b44:	68bb      	ldr	r3, [r7, #8]
 8000b46:	2b10      	cmp	r3, #16
 8000b48:	d017      	beq.n	8000b7a <LL_TIM_OC_Init+0x4a>
 8000b4a:	d802      	bhi.n	8000b52 <LL_TIM_OC_Init+0x22>
 8000b4c:	2b01      	cmp	r3, #1
 8000b4e:	d009      	beq.n	8000b64 <LL_TIM_OC_Init+0x34>
 8000b50:	e034      	b.n	8000bbc <LL_TIM_OC_Init+0x8c>
 8000b52:	2280      	movs	r2, #128	; 0x80
 8000b54:	0052      	lsls	r2, r2, #1
 8000b56:	4293      	cmp	r3, r2
 8000b58:	d01a      	beq.n	8000b90 <LL_TIM_OC_Init+0x60>
 8000b5a:	2280      	movs	r2, #128	; 0x80
 8000b5c:	0152      	lsls	r2, r2, #5
 8000b5e:	4293      	cmp	r3, r2
 8000b60:	d021      	beq.n	8000ba6 <LL_TIM_OC_Init+0x76>
 8000b62:	e02b      	b.n	8000bbc <LL_TIM_OC_Init+0x8c>
 8000b64:	2317      	movs	r3, #23
 8000b66:	18fc      	adds	r4, r7, r3
 8000b68:	68fa      	ldr	r2, [r7, #12]
 8000b6a:	687b      	ldr	r3, [r7, #4]
 8000b6c:	1c10      	adds	r0, r2, #0
 8000b6e:	1c19      	adds	r1, r3, #0
 8000b70:	f000 f82c 	bl	8000bcc <OC1Config>
 8000b74:	1c03      	adds	r3, r0, #0
 8000b76:	7023      	strb	r3, [r4, #0]
 8000b78:	e020      	b.n	8000bbc <LL_TIM_OC_Init+0x8c>
 8000b7a:	2317      	movs	r3, #23
 8000b7c:	18fc      	adds	r4, r7, r3
 8000b7e:	68fa      	ldr	r2, [r7, #12]
 8000b80:	687b      	ldr	r3, [r7, #4]
 8000b82:	1c10      	adds	r0, r2, #0
 8000b84:	1c19      	adds	r1, r3, #0
 8000b86:	f000 f8ab 	bl	8000ce0 <OC2Config>
 8000b8a:	1c03      	adds	r3, r0, #0
 8000b8c:	7023      	strb	r3, [r4, #0]
 8000b8e:	e015      	b.n	8000bbc <LL_TIM_OC_Init+0x8c>
 8000b90:	2317      	movs	r3, #23
 8000b92:	18fc      	adds	r4, r7, r3
 8000b94:	68fa      	ldr	r2, [r7, #12]
 8000b96:	687b      	ldr	r3, [r7, #4]
 8000b98:	1c10      	adds	r0, r2, #0
 8000b9a:	1c19      	adds	r1, r3, #0
 8000b9c:	f000 f930 	bl	8000e00 <OC3Config>
 8000ba0:	1c03      	adds	r3, r0, #0
 8000ba2:	7023      	strb	r3, [r4, #0]
 8000ba4:	e00a      	b.n	8000bbc <LL_TIM_OC_Init+0x8c>
 8000ba6:	2317      	movs	r3, #23
 8000ba8:	18fc      	adds	r4, r7, r3
 8000baa:	68fa      	ldr	r2, [r7, #12]
 8000bac:	687b      	ldr	r3, [r7, #4]
 8000bae:	1c10      	adds	r0, r2, #0
 8000bb0:	1c19      	adds	r1, r3, #0
 8000bb2:	f000 f9b5 	bl	8000f20 <OC4Config>
 8000bb6:	1c03      	adds	r3, r0, #0
 8000bb8:	7023      	strb	r3, [r4, #0]
 8000bba:	46c0      	nop			; (mov r8, r8)
 8000bbc:	2317      	movs	r3, #23
 8000bbe:	18fb      	adds	r3, r7, r3
 8000bc0:	781b      	ldrb	r3, [r3, #0]
 8000bc2:	1c18      	adds	r0, r3, #0
 8000bc4:	46bd      	mov	sp, r7
 8000bc6:	b007      	add	sp, #28
 8000bc8:	bd90      	pop	{r4, r7, pc}
 8000bca:	46c0      	nop			; (mov r8, r8)

08000bcc <OC1Config>:
 8000bcc:	b580      	push	{r7, lr}
 8000bce:	b086      	sub	sp, #24
 8000bd0:	af00      	add	r7, sp, #0
 8000bd2:	6078      	str	r0, [r7, #4]
 8000bd4:	6039      	str	r1, [r7, #0]
 8000bd6:	2300      	movs	r3, #0
 8000bd8:	60fb      	str	r3, [r7, #12]
 8000bda:	2300      	movs	r3, #0
 8000bdc:	617b      	str	r3, [r7, #20]
 8000bde:	2300      	movs	r3, #0
 8000be0:	613b      	str	r3, [r7, #16]
 8000be2:	687b      	ldr	r3, [r7, #4]
 8000be4:	6a1b      	ldr	r3, [r3, #32]
 8000be6:	2201      	movs	r2, #1
 8000be8:	4393      	bics	r3, r2
 8000bea:	1c1a      	adds	r2, r3, #0
 8000bec:	687b      	ldr	r3, [r7, #4]
 8000bee:	621a      	str	r2, [r3, #32]
 8000bf0:	687b      	ldr	r3, [r7, #4]
 8000bf2:	6a1b      	ldr	r3, [r3, #32]
 8000bf4:	617b      	str	r3, [r7, #20]
 8000bf6:	687b      	ldr	r3, [r7, #4]
 8000bf8:	685b      	ldr	r3, [r3, #4]
 8000bfa:	613b      	str	r3, [r7, #16]
 8000bfc:	687b      	ldr	r3, [r7, #4]
 8000bfe:	699b      	ldr	r3, [r3, #24]
 8000c00:	60fb      	str	r3, [r7, #12]
 8000c02:	68fb      	ldr	r3, [r7, #12]
 8000c04:	2203      	movs	r2, #3
 8000c06:	4393      	bics	r3, r2
 8000c08:	60fb      	str	r3, [r7, #12]
 8000c0a:	68fb      	ldr	r3, [r7, #12]
 8000c0c:	2270      	movs	r2, #112	; 0x70
 8000c0e:	4393      	bics	r3, r2
 8000c10:	1c1a      	adds	r2, r3, #0
 8000c12:	683b      	ldr	r3, [r7, #0]
 8000c14:	681b      	ldr	r3, [r3, #0]
 8000c16:	4313      	orrs	r3, r2
 8000c18:	60fb      	str	r3, [r7, #12]
 8000c1a:	697b      	ldr	r3, [r7, #20]
 8000c1c:	2202      	movs	r2, #2
 8000c1e:	4393      	bics	r3, r2
 8000c20:	1c1a      	adds	r2, r3, #0
 8000c22:	683b      	ldr	r3, [r7, #0]
 8000c24:	691b      	ldr	r3, [r3, #16]
 8000c26:	4313      	orrs	r3, r2
 8000c28:	617b      	str	r3, [r7, #20]
 8000c2a:	697b      	ldr	r3, [r7, #20]
 8000c2c:	2201      	movs	r2, #1
 8000c2e:	4393      	bics	r3, r2
 8000c30:	1c1a      	adds	r2, r3, #0
 8000c32:	683b      	ldr	r3, [r7, #0]
 8000c34:	685b      	ldr	r3, [r3, #4]
 8000c36:	4313      	orrs	r3, r2
 8000c38:	617b      	str	r3, [r7, #20]
 8000c3a:	687b      	ldr	r3, [r7, #4]
 8000c3c:	4a22      	ldr	r2, [pc, #136]	; (8000cc8 <OC1Config+0xfc>)
 8000c3e:	4293      	cmp	r3, r2
 8000c40:	d00b      	beq.n	8000c5a <OC1Config+0x8e>
 8000c42:	687b      	ldr	r3, [r7, #4]
 8000c44:	4a21      	ldr	r2, [pc, #132]	; (8000ccc <OC1Config+0x100>)
 8000c46:	4293      	cmp	r3, r2
 8000c48:	d007      	beq.n	8000c5a <OC1Config+0x8e>
 8000c4a:	687b      	ldr	r3, [r7, #4]
 8000c4c:	4a20      	ldr	r2, [pc, #128]	; (8000cd0 <OC1Config+0x104>)
 8000c4e:	4293      	cmp	r3, r2
 8000c50:	d003      	beq.n	8000c5a <OC1Config+0x8e>
 8000c52:	687b      	ldr	r3, [r7, #4]
 8000c54:	4a1f      	ldr	r2, [pc, #124]	; (8000cd4 <OC1Config+0x108>)
 8000c56:	4293      	cmp	r3, r2
 8000c58:	d120      	bne.n	8000c9c <OC1Config+0xd0>
 8000c5a:	697b      	ldr	r3, [r7, #20]
 8000c5c:	2208      	movs	r2, #8
 8000c5e:	4393      	bics	r3, r2
 8000c60:	1c1a      	adds	r2, r3, #0
 8000c62:	683b      	ldr	r3, [r7, #0]
 8000c64:	695b      	ldr	r3, [r3, #20]
 8000c66:	009b      	lsls	r3, r3, #2
 8000c68:	4313      	orrs	r3, r2
 8000c6a:	617b      	str	r3, [r7, #20]
 8000c6c:	697b      	ldr	r3, [r7, #20]
 8000c6e:	2204      	movs	r2, #4
 8000c70:	4393      	bics	r3, r2
 8000c72:	1c1a      	adds	r2, r3, #0
 8000c74:	683b      	ldr	r3, [r7, #0]
 8000c76:	689b      	ldr	r3, [r3, #8]
 8000c78:	009b      	lsls	r3, r3, #2
 8000c7a:	4313      	orrs	r3, r2
 8000c7c:	617b      	str	r3, [r7, #20]
 8000c7e:	693b      	ldr	r3, [r7, #16]
 8000c80:	4a15      	ldr	r2, [pc, #84]	; (8000cd8 <OC1Config+0x10c>)
 8000c82:	401a      	ands	r2, r3
 8000c84:	683b      	ldr	r3, [r7, #0]
 8000c86:	699b      	ldr	r3, [r3, #24]
 8000c88:	4313      	orrs	r3, r2
 8000c8a:	613b      	str	r3, [r7, #16]
 8000c8c:	693b      	ldr	r3, [r7, #16]
 8000c8e:	4a13      	ldr	r2, [pc, #76]	; (8000cdc <OC1Config+0x110>)
 8000c90:	401a      	ands	r2, r3
 8000c92:	683b      	ldr	r3, [r7, #0]
 8000c94:	69db      	ldr	r3, [r3, #28]
 8000c96:	005b      	lsls	r3, r3, #1
 8000c98:	4313      	orrs	r3, r2
 8000c9a:	613b      	str	r3, [r7, #16]
 8000c9c:	687b      	ldr	r3, [r7, #4]
 8000c9e:	693a      	ldr	r2, [r7, #16]
 8000ca0:	605a      	str	r2, [r3, #4]
 8000ca2:	687b      	ldr	r3, [r7, #4]
 8000ca4:	68fa      	ldr	r2, [r7, #12]
 8000ca6:	619a      	str	r2, [r3, #24]
 8000ca8:	683b      	ldr	r3, [r7, #0]
 8000caa:	68db      	ldr	r3, [r3, #12]
 8000cac:	687a      	ldr	r2, [r7, #4]
 8000cae:	1c10      	adds	r0, r2, #0
 8000cb0:	1c19      	adds	r1, r3, #0
 8000cb2:	f7ff fe5b 	bl	800096c <LL_TIM_OC_SetCompareCH1>
 8000cb6:	687b      	ldr	r3, [r7, #4]
 8000cb8:	697a      	ldr	r2, [r7, #20]
 8000cba:	621a      	str	r2, [r3, #32]
 8000cbc:	2301      	movs	r3, #1
 8000cbe:	1c18      	adds	r0, r3, #0
 8000cc0:	46bd      	mov	sp, r7
 8000cc2:	b006      	add	sp, #24
 8000cc4:	bd80      	pop	{r7, pc}
 8000cc6:	46c0      	nop			; (mov r8, r8)
 8000cc8:	40012c00 	.word	0x40012c00
 8000ccc:	40014000 	.word	0x40014000
 8000cd0:	40014400 	.word	0x40014400
 8000cd4:	40014800 	.word	0x40014800
 8000cd8:	fffffeff 	.word	0xfffffeff
 8000cdc:	fffffdff 	.word	0xfffffdff

08000ce0 <OC2Config>:
 8000ce0:	b580      	push	{r7, lr}
 8000ce2:	b086      	sub	sp, #24
 8000ce4:	af00      	add	r7, sp, #0
 8000ce6:	6078      	str	r0, [r7, #4]
 8000ce8:	6039      	str	r1, [r7, #0]
 8000cea:	2300      	movs	r3, #0
 8000cec:	60fb      	str	r3, [r7, #12]
 8000cee:	2300      	movs	r3, #0
 8000cf0:	617b      	str	r3, [r7, #20]
 8000cf2:	2300      	movs	r3, #0
 8000cf4:	613b      	str	r3, [r7, #16]
 8000cf6:	687b      	ldr	r3, [r7, #4]
 8000cf8:	6a1b      	ldr	r3, [r3, #32]
 8000cfa:	2210      	movs	r2, #16
 8000cfc:	4393      	bics	r3, r2
 8000cfe:	1c1a      	adds	r2, r3, #0
 8000d00:	687b      	ldr	r3, [r7, #4]
 8000d02:	621a      	str	r2, [r3, #32]
 8000d04:	687b      	ldr	r3, [r7, #4]
 8000d06:	6a1b      	ldr	r3, [r3, #32]
 8000d08:	617b      	str	r3, [r7, #20]
 8000d0a:	687b      	ldr	r3, [r7, #4]
 8000d0c:	685b      	ldr	r3, [r3, #4]
 8000d0e:	613b      	str	r3, [r7, #16]
 8000d10:	687b      	ldr	r3, [r7, #4]
 8000d12:	699b      	ldr	r3, [r3, #24]
 8000d14:	60fb      	str	r3, [r7, #12]
 8000d16:	68fb      	ldr	r3, [r7, #12]
 8000d18:	4a31      	ldr	r2, [pc, #196]	; (8000de0 <OC2Config+0x100>)
 8000d1a:	4013      	ands	r3, r2
 8000d1c:	60fb      	str	r3, [r7, #12]
 8000d1e:	68fb      	ldr	r3, [r7, #12]
 8000d20:	4a30      	ldr	r2, [pc, #192]	; (8000de4 <OC2Config+0x104>)
 8000d22:	401a      	ands	r2, r3
 8000d24:	683b      	ldr	r3, [r7, #0]
 8000d26:	681b      	ldr	r3, [r3, #0]
 8000d28:	021b      	lsls	r3, r3, #8
 8000d2a:	4313      	orrs	r3, r2
 8000d2c:	60fb      	str	r3, [r7, #12]
 8000d2e:	697b      	ldr	r3, [r7, #20]
 8000d30:	2220      	movs	r2, #32
 8000d32:	4393      	bics	r3, r2
 8000d34:	1c1a      	adds	r2, r3, #0
 8000d36:	683b      	ldr	r3, [r7, #0]
 8000d38:	691b      	ldr	r3, [r3, #16]
 8000d3a:	011b      	lsls	r3, r3, #4
 8000d3c:	4313      	orrs	r3, r2
 8000d3e:	617b      	str	r3, [r7, #20]
 8000d40:	697b      	ldr	r3, [r7, #20]
 8000d42:	2210      	movs	r2, #16
 8000d44:	4393      	bics	r3, r2
 8000d46:	1c1a      	adds	r2, r3, #0
 8000d48:	683b      	ldr	r3, [r7, #0]
 8000d4a:	685b      	ldr	r3, [r3, #4]
 8000d4c:	011b      	lsls	r3, r3, #4
 8000d4e:	4313      	orrs	r3, r2
 8000d50:	617b      	str	r3, [r7, #20]
 8000d52:	687b      	ldr	r3, [r7, #4]
 8000d54:	4a24      	ldr	r2, [pc, #144]	; (8000de8 <OC2Config+0x108>)
 8000d56:	4293      	cmp	r3, r2
 8000d58:	d00b      	beq.n	8000d72 <OC2Config+0x92>
 8000d5a:	687b      	ldr	r3, [r7, #4]
 8000d5c:	4a23      	ldr	r2, [pc, #140]	; (8000dec <OC2Config+0x10c>)
 8000d5e:	4293      	cmp	r3, r2
 8000d60:	d007      	beq.n	8000d72 <OC2Config+0x92>
 8000d62:	687b      	ldr	r3, [r7, #4]
 8000d64:	4a22      	ldr	r2, [pc, #136]	; (8000df0 <OC2Config+0x110>)
 8000d66:	4293      	cmp	r3, r2
 8000d68:	d003      	beq.n	8000d72 <OC2Config+0x92>
 8000d6a:	687b      	ldr	r3, [r7, #4]
 8000d6c:	4a21      	ldr	r2, [pc, #132]	; (8000df4 <OC2Config+0x114>)
 8000d6e:	4293      	cmp	r3, r2
 8000d70:	d121      	bne.n	8000db6 <OC2Config+0xd6>
 8000d72:	697b      	ldr	r3, [r7, #20]
 8000d74:	2280      	movs	r2, #128	; 0x80
 8000d76:	4393      	bics	r3, r2
 8000d78:	1c1a      	adds	r2, r3, #0
 8000d7a:	683b      	ldr	r3, [r7, #0]
 8000d7c:	695b      	ldr	r3, [r3, #20]
 8000d7e:	019b      	lsls	r3, r3, #6
 8000d80:	4313      	orrs	r3, r2
 8000d82:	617b      	str	r3, [r7, #20]
 8000d84:	697b      	ldr	r3, [r7, #20]
 8000d86:	2240      	movs	r2, #64	; 0x40
 8000d88:	4393      	bics	r3, r2
 8000d8a:	1c1a      	adds	r2, r3, #0
 8000d8c:	683b      	ldr	r3, [r7, #0]
 8000d8e:	689b      	ldr	r3, [r3, #8]
 8000d90:	019b      	lsls	r3, r3, #6
 8000d92:	4313      	orrs	r3, r2
 8000d94:	617b      	str	r3, [r7, #20]
 8000d96:	693b      	ldr	r3, [r7, #16]
 8000d98:	4a17      	ldr	r2, [pc, #92]	; (8000df8 <OC2Config+0x118>)
 8000d9a:	401a      	ands	r2, r3
 8000d9c:	683b      	ldr	r3, [r7, #0]
 8000d9e:	699b      	ldr	r3, [r3, #24]
 8000da0:	009b      	lsls	r3, r3, #2
 8000da2:	4313      	orrs	r3, r2
 8000da4:	613b      	str	r3, [r7, #16]
 8000da6:	693b      	ldr	r3, [r7, #16]
 8000da8:	4a14      	ldr	r2, [pc, #80]	; (8000dfc <OC2Config+0x11c>)
 8000daa:	401a      	ands	r2, r3
 8000dac:	683b      	ldr	r3, [r7, #0]
 8000dae:	69db      	ldr	r3, [r3, #28]
 8000db0:	00db      	lsls	r3, r3, #3
 8000db2:	4313      	orrs	r3, r2
 8000db4:	613b      	str	r3, [r7, #16]
 8000db6:	687b      	ldr	r3, [r7, #4]
 8000db8:	693a      	ldr	r2, [r7, #16]
 8000dba:	605a      	str	r2, [r3, #4]
 8000dbc:	687b      	ldr	r3, [r7, #4]
 8000dbe:	68fa      	ldr	r2, [r7, #12]
 8000dc0:	619a      	str	r2, [r3, #24]
 8000dc2:	683b      	ldr	r3, [r7, #0]
 8000dc4:	68db      	ldr	r3, [r3, #12]
 8000dc6:	687a      	ldr	r2, [r7, #4]
 8000dc8:	1c10      	adds	r0, r2, #0
 8000dca:	1c19      	adds	r1, r3, #0
 8000dcc:	f7ff fdda 	bl	8000984 <LL_TIM_OC_SetCompareCH2>
 8000dd0:	687b      	ldr	r3, [r7, #4]
 8000dd2:	697a      	ldr	r2, [r7, #20]
 8000dd4:	621a      	str	r2, [r3, #32]
 8000dd6:	2301      	movs	r3, #1
 8000dd8:	1c18      	adds	r0, r3, #0
 8000dda:	46bd      	mov	sp, r7
 8000ddc:	b006      	add	sp, #24
 8000dde:	bd80      	pop	{r7, pc}
 8000de0:	fffffcff 	.word	0xfffffcff
 8000de4:	ffff8fff 	.word	0xffff8fff
 8000de8:	40012c00 	.word	0x40012c00
 8000dec:	40014000 	.word	0x40014000
 8000df0:	40014400 	.word	0x40014400
 8000df4:	40014800 	.word	0x40014800
 8000df8:	fffffbff 	.word	0xfffffbff
 8000dfc:	fffff7ff 	.word	0xfffff7ff

08000e00 <OC3Config>:
 8000e00:	b580      	push	{r7, lr}
 8000e02:	b086      	sub	sp, #24
 8000e04:	af00      	add	r7, sp, #0
 8000e06:	6078      	str	r0, [r7, #4]
 8000e08:	6039      	str	r1, [r7, #0]
 8000e0a:	2300      	movs	r3, #0
 8000e0c:	60fb      	str	r3, [r7, #12]
 8000e0e:	2300      	movs	r3, #0
 8000e10:	617b      	str	r3, [r7, #20]
 8000e12:	2300      	movs	r3, #0
 8000e14:	613b      	str	r3, [r7, #16]
 8000e16:	687b      	ldr	r3, [r7, #4]
 8000e18:	6a1b      	ldr	r3, [r3, #32]
 8000e1a:	4a37      	ldr	r2, [pc, #220]	; (8000ef8 <OC3Config+0xf8>)
 8000e1c:	401a      	ands	r2, r3
 8000e1e:	687b      	ldr	r3, [r7, #4]
 8000e20:	621a      	str	r2, [r3, #32]
 8000e22:	687b      	ldr	r3, [r7, #4]
 8000e24:	6a1b      	ldr	r3, [r3, #32]
 8000e26:	617b      	str	r3, [r7, #20]
 8000e28:	687b      	ldr	r3, [r7, #4]
 8000e2a:	685b      	ldr	r3, [r3, #4]
 8000e2c:	613b      	str	r3, [r7, #16]
 8000e2e:	687b      	ldr	r3, [r7, #4]
 8000e30:	69db      	ldr	r3, [r3, #28]
 8000e32:	60fb      	str	r3, [r7, #12]
 8000e34:	68fb      	ldr	r3, [r7, #12]
 8000e36:	2203      	movs	r2, #3
 8000e38:	4393      	bics	r3, r2
 8000e3a:	60fb      	str	r3, [r7, #12]
 8000e3c:	68fb      	ldr	r3, [r7, #12]
 8000e3e:	2270      	movs	r2, #112	; 0x70
 8000e40:	4393      	bics	r3, r2
 8000e42:	1c1a      	adds	r2, r3, #0
 8000e44:	683b      	ldr	r3, [r7, #0]
 8000e46:	681b      	ldr	r3, [r3, #0]
 8000e48:	4313      	orrs	r3, r2
 8000e4a:	60fb      	str	r3, [r7, #12]
 8000e4c:	697b      	ldr	r3, [r7, #20]
 8000e4e:	4a2b      	ldr	r2, [pc, #172]	; (8000efc <OC3Config+0xfc>)
 8000e50:	401a      	ands	r2, r3
 8000e52:	683b      	ldr	r3, [r7, #0]
 8000e54:	691b      	ldr	r3, [r3, #16]
 8000e56:	021b      	lsls	r3, r3, #8
 8000e58:	4313      	orrs	r3, r2
 8000e5a:	617b      	str	r3, [r7, #20]
 8000e5c:	697b      	ldr	r3, [r7, #20]
 8000e5e:	4a26      	ldr	r2, [pc, #152]	; (8000ef8 <OC3Config+0xf8>)
 8000e60:	401a      	ands	r2, r3
 8000e62:	683b      	ldr	r3, [r7, #0]
 8000e64:	685b      	ldr	r3, [r3, #4]
 8000e66:	021b      	lsls	r3, r3, #8
 8000e68:	4313      	orrs	r3, r2
 8000e6a:	617b      	str	r3, [r7, #20]
 8000e6c:	687b      	ldr	r3, [r7, #4]
 8000e6e:	4a24      	ldr	r2, [pc, #144]	; (8000f00 <OC3Config+0x100>)
 8000e70:	4293      	cmp	r3, r2
 8000e72:	d00b      	beq.n	8000e8c <OC3Config+0x8c>
 8000e74:	687b      	ldr	r3, [r7, #4]
 8000e76:	4a23      	ldr	r2, [pc, #140]	; (8000f04 <OC3Config+0x104>)
 8000e78:	4293      	cmp	r3, r2
 8000e7a:	d007      	beq.n	8000e8c <OC3Config+0x8c>
 8000e7c:	687b      	ldr	r3, [r7, #4]
 8000e7e:	4a22      	ldr	r2, [pc, #136]	; (8000f08 <OC3Config+0x108>)
 8000e80:	4293      	cmp	r3, r2
 8000e82:	d003      	beq.n	8000e8c <OC3Config+0x8c>
 8000e84:	687b      	ldr	r3, [r7, #4]
 8000e86:	4a21      	ldr	r2, [pc, #132]	; (8000f0c <OC3Config+0x10c>)
 8000e88:	4293      	cmp	r3, r2
 8000e8a:	d11f      	bne.n	8000ecc <OC3Config+0xcc>
 8000e8c:	697b      	ldr	r3, [r7, #20]
 8000e8e:	4a20      	ldr	r2, [pc, #128]	; (8000f10 <OC3Config+0x110>)
 8000e90:	401a      	ands	r2, r3
 8000e92:	683b      	ldr	r3, [r7, #0]
 8000e94:	695b      	ldr	r3, [r3, #20]
 8000e96:	029b      	lsls	r3, r3, #10
 8000e98:	4313      	orrs	r3, r2
 8000e9a:	617b      	str	r3, [r7, #20]
 8000e9c:	697b      	ldr	r3, [r7, #20]
 8000e9e:	4a1d      	ldr	r2, [pc, #116]	; (8000f14 <OC3Config+0x114>)
 8000ea0:	401a      	ands	r2, r3
 8000ea2:	683b      	ldr	r3, [r7, #0]
 8000ea4:	689b      	ldr	r3, [r3, #8]
 8000ea6:	029b      	lsls	r3, r3, #10
 8000ea8:	4313      	orrs	r3, r2
 8000eaa:	617b      	str	r3, [r7, #20]
 8000eac:	693b      	ldr	r3, [r7, #16]
 8000eae:	4a1a      	ldr	r2, [pc, #104]	; (8000f18 <OC3Config+0x118>)
 8000eb0:	401a      	ands	r2, r3
 8000eb2:	683b      	ldr	r3, [r7, #0]
 8000eb4:	699b      	ldr	r3, [r3, #24]
 8000eb6:	011b      	lsls	r3, r3, #4
 8000eb8:	4313      	orrs	r3, r2
 8000eba:	613b      	str	r3, [r7, #16]
 8000ebc:	693b      	ldr	r3, [r7, #16]
 8000ebe:	4a17      	ldr	r2, [pc, #92]	; (8000f1c <OC3Config+0x11c>)
 8000ec0:	401a      	ands	r2, r3
 8000ec2:	683b      	ldr	r3, [r7, #0]
 8000ec4:	69db      	ldr	r3, [r3, #28]
 8000ec6:	015b      	lsls	r3, r3, #5
 8000ec8:	4313      	orrs	r3, r2
 8000eca:	613b      	str	r3, [r7, #16]
 8000ecc:	687b      	ldr	r3, [r7, #4]
 8000ece:	693a      	ldr	r2, [r7, #16]
 8000ed0:	605a      	str	r2, [r3, #4]
 8000ed2:	687b      	ldr	r3, [r7, #4]
 8000ed4:	68fa      	ldr	r2, [r7, #12]
 8000ed6:	61da      	str	r2, [r3, #28]
 8000ed8:	683b      	ldr	r3, [r7, #0]
 8000eda:	68db      	ldr	r3, [r3, #12]
 8000edc:	687a      	ldr	r2, [r7, #4]
 8000ede:	1c10      	adds	r0, r2, #0
 8000ee0:	1c19      	adds	r1, r3, #0
 8000ee2:	f7ff fd5b 	bl	800099c <LL_TIM_OC_SetCompareCH3>
 8000ee6:	687b      	ldr	r3, [r7, #4]
 8000ee8:	697a      	ldr	r2, [r7, #20]
 8000eea:	621a      	str	r2, [r3, #32]
 8000eec:	2301      	movs	r3, #1
 8000eee:	1c18      	adds	r0, r3, #0
 8000ef0:	46bd      	mov	sp, r7
 8000ef2:	b006      	add	sp, #24
 8000ef4:	bd80      	pop	{r7, pc}
 8000ef6:	46c0      	nop			; (mov r8, r8)
 8000ef8:	fffffeff 	.word	0xfffffeff
 8000efc:	fffffdff 	.word	0xfffffdff
 8000f00:	40012c00 	.word	0x40012c00
 8000f04:	40014000 	.word	0x40014000
 8000f08:	40014400 	.word	0x40014400
 8000f0c:	40014800 	.word	0x40014800
 8000f10:	fffff7ff 	.word	0xfffff7ff
 8000f14:	fffffbff 	.word	0xfffffbff
 8000f18:	ffffefff 	.word	0xffffefff
 8000f1c:	ffffdfff 	.word	0xffffdfff

08000f20 <OC4Config>:
 8000f20:	b580      	push	{r7, lr}
 8000f22:	b086      	sub	sp, #24
 8000f24:	af00      	add	r7, sp, #0
 8000f26:	6078      	str	r0, [r7, #4]
 8000f28:	6039      	str	r1, [r7, #0]
 8000f2a:	2300      	movs	r3, #0
 8000f2c:	613b      	str	r3, [r7, #16]
 8000f2e:	2300      	movs	r3, #0
 8000f30:	60fb      	str	r3, [r7, #12]
 8000f32:	2300      	movs	r3, #0
 8000f34:	617b      	str	r3, [r7, #20]
 8000f36:	687b      	ldr	r3, [r7, #4]
 8000f38:	6a1b      	ldr	r3, [r3, #32]
 8000f3a:	4a2b      	ldr	r2, [pc, #172]	; (8000fe8 <OC4Config+0xc8>)
 8000f3c:	401a      	ands	r2, r3
 8000f3e:	687b      	ldr	r3, [r7, #4]
 8000f40:	621a      	str	r2, [r3, #32]
 8000f42:	687b      	ldr	r3, [r7, #4]
 8000f44:	6a1b      	ldr	r3, [r3, #32]
 8000f46:	60fb      	str	r3, [r7, #12]
 8000f48:	687b      	ldr	r3, [r7, #4]
 8000f4a:	685b      	ldr	r3, [r3, #4]
 8000f4c:	617b      	str	r3, [r7, #20]
 8000f4e:	687b      	ldr	r3, [r7, #4]
 8000f50:	69db      	ldr	r3, [r3, #28]
 8000f52:	613b      	str	r3, [r7, #16]
 8000f54:	693b      	ldr	r3, [r7, #16]
 8000f56:	4a25      	ldr	r2, [pc, #148]	; (8000fec <OC4Config+0xcc>)
 8000f58:	4013      	ands	r3, r2
 8000f5a:	613b      	str	r3, [r7, #16]
 8000f5c:	693b      	ldr	r3, [r7, #16]
 8000f5e:	4a24      	ldr	r2, [pc, #144]	; (8000ff0 <OC4Config+0xd0>)
 8000f60:	401a      	ands	r2, r3
 8000f62:	683b      	ldr	r3, [r7, #0]
 8000f64:	681b      	ldr	r3, [r3, #0]
 8000f66:	021b      	lsls	r3, r3, #8
 8000f68:	4313      	orrs	r3, r2
 8000f6a:	613b      	str	r3, [r7, #16]
 8000f6c:	68fb      	ldr	r3, [r7, #12]
 8000f6e:	4a21      	ldr	r2, [pc, #132]	; (8000ff4 <OC4Config+0xd4>)
 8000f70:	401a      	ands	r2, r3
 8000f72:	683b      	ldr	r3, [r7, #0]
 8000f74:	691b      	ldr	r3, [r3, #16]
 8000f76:	031b      	lsls	r3, r3, #12
 8000f78:	4313      	orrs	r3, r2
 8000f7a:	60fb      	str	r3, [r7, #12]
 8000f7c:	68fb      	ldr	r3, [r7, #12]
 8000f7e:	4a1a      	ldr	r2, [pc, #104]	; (8000fe8 <OC4Config+0xc8>)
 8000f80:	401a      	ands	r2, r3
 8000f82:	683b      	ldr	r3, [r7, #0]
 8000f84:	685b      	ldr	r3, [r3, #4]
 8000f86:	031b      	lsls	r3, r3, #12
 8000f88:	4313      	orrs	r3, r2
 8000f8a:	60fb      	str	r3, [r7, #12]
 8000f8c:	687b      	ldr	r3, [r7, #4]
 8000f8e:	4a1a      	ldr	r2, [pc, #104]	; (8000ff8 <OC4Config+0xd8>)
 8000f90:	4293      	cmp	r3, r2
 8000f92:	d00b      	beq.n	8000fac <OC4Config+0x8c>
 8000f94:	687b      	ldr	r3, [r7, #4]
 8000f96:	4a19      	ldr	r2, [pc, #100]	; (8000ffc <OC4Config+0xdc>)
 8000f98:	4293      	cmp	r3, r2
 8000f9a:	d007      	beq.n	8000fac <OC4Config+0x8c>
 8000f9c:	687b      	ldr	r3, [r7, #4]
 8000f9e:	4a18      	ldr	r2, [pc, #96]	; (8001000 <OC4Config+0xe0>)
 8000fa0:	4293      	cmp	r3, r2
 8000fa2:	d003      	beq.n	8000fac <OC4Config+0x8c>
 8000fa4:	687b      	ldr	r3, [r7, #4]
 8000fa6:	4a17      	ldr	r2, [pc, #92]	; (8001004 <OC4Config+0xe4>)
 8000fa8:	4293      	cmp	r3, r2
 8000faa:	d107      	bne.n	8000fbc <OC4Config+0x9c>
 8000fac:	697b      	ldr	r3, [r7, #20]
 8000fae:	4a16      	ldr	r2, [pc, #88]	; (8001008 <OC4Config+0xe8>)
 8000fb0:	401a      	ands	r2, r3
 8000fb2:	683b      	ldr	r3, [r7, #0]
 8000fb4:	699b      	ldr	r3, [r3, #24]
 8000fb6:	019b      	lsls	r3, r3, #6
 8000fb8:	4313      	orrs	r3, r2
 8000fba:	617b      	str	r3, [r7, #20]
 8000fbc:	687b      	ldr	r3, [r7, #4]
 8000fbe:	697a      	ldr	r2, [r7, #20]
 8000fc0:	605a      	str	r2, [r3, #4]
 8000fc2:	687b      	ldr	r3, [r7, #4]
 8000fc4:	693a      	ldr	r2, [r7, #16]
 8000fc6:	61da      	str	r2, [r3, #28]
 8000fc8:	683b      	ldr	r3, [r7, #0]
 8000fca:	68db      	ldr	r3, [r3, #12]
 8000fcc:	687a      	ldr	r2, [r7, #4]
 8000fce:	1c10      	adds	r0, r2, #0
 8000fd0:	1c19      	adds	r1, r3, #0
 8000fd2:	f7ff fcef 	bl	80009b4 <LL_TIM_OC_SetCompareCH4>
 8000fd6:	687b      	ldr	r3, [r7, #4]
 8000fd8:	68fa      	ldr	r2, [r7, #12]
 8000fda:	621a      	str	r2, [r3, #32]
 8000fdc:	2301      	movs	r3, #1
 8000fde:	1c18      	adds	r0, r3, #0
 8000fe0:	46bd      	mov	sp, r7
 8000fe2:	b006      	add	sp, #24
 8000fe4:	bd80      	pop	{r7, pc}
 8000fe6:	46c0      	nop			; (mov r8, r8)
 8000fe8:	ffffefff 	.word	0xffffefff
 8000fec:	fffffcff 	.word	0xfffffcff
 8000ff0:	ffff8fff 	.word	0xffff8fff
 8000ff4:	ffffdfff 	.word	0xffffdfff
 8000ff8:	40012c00 	.word	0x40012c00
 8000ffc:	40014000 	.word	0x40014000
 8001000:	40014400 	.word	0x40014400
 8001004:	40014800 	.word	0x40014800
 8001008:	ffffbfff 	.word	0xffffbfff

0800100c <atexit>:
 800100c:	b508      	push	{r3, lr}
 800100e:	1c01      	adds	r1, r0, #0
 8001010:	2200      	movs	r2, #0
 8001012:	2000      	movs	r0, #0
 8001014:	2300      	movs	r3, #0
 8001016:	f000 f83f 	bl	8001098 <__register_exitproc>
 800101a:	bd08      	pop	{r3, pc}

0800101c <__libc_fini_array>:
 800101c:	b538      	push	{r3, r4, r5, lr}
 800101e:	4b09      	ldr	r3, [pc, #36]	; (8001044 <__libc_fini_array+0x28>)
 8001020:	4c09      	ldr	r4, [pc, #36]	; (8001048 <__libc_fini_array+0x2c>)
 8001022:	1ae4      	subs	r4, r4, r3
 8001024:	10a4      	asrs	r4, r4, #2
 8001026:	d009      	beq.n	800103c <__libc_fini_array+0x20>
 8001028:	4a08      	ldr	r2, [pc, #32]	; (800104c <__libc_fini_array+0x30>)
 800102a:	18a5      	adds	r5, r4, r2
 800102c:	00ad      	lsls	r5, r5, #2
 800102e:	18ed      	adds	r5, r5, r3
 8001030:	682b      	ldr	r3, [r5, #0]
 8001032:	3c01      	subs	r4, #1
 8001034:	4798      	blx	r3
 8001036:	3d04      	subs	r5, #4
 8001038:	2c00      	cmp	r4, #0
 800103a:	d1f9      	bne.n	8001030 <__libc_fini_array+0x14>
 800103c:	f000 f8a8 	bl	8001190 <_fini>
 8001040:	bd38      	pop	{r3, r4, r5, pc}
 8001042:	46c0      	nop			; (mov r8, r8)
 8001044:	080011ac 	.word	0x080011ac
 8001048:	080011b0 	.word	0x080011b0
 800104c:	3fffffff 	.word	0x3fffffff

08001050 <__libc_init_array>:
 8001050:	b570      	push	{r4, r5, r6, lr}
 8001052:	4e0d      	ldr	r6, [pc, #52]	; (8001088 <__libc_init_array+0x38>)
 8001054:	4d0d      	ldr	r5, [pc, #52]	; (800108c <__libc_init_array+0x3c>)
 8001056:	2400      	movs	r4, #0
 8001058:	1bad      	subs	r5, r5, r6
 800105a:	10ad      	asrs	r5, r5, #2
 800105c:	d005      	beq.n	800106a <__libc_init_array+0x1a>
 800105e:	00a3      	lsls	r3, r4, #2
 8001060:	58f3      	ldr	r3, [r6, r3]
 8001062:	3401      	adds	r4, #1
 8001064:	4798      	blx	r3
 8001066:	42a5      	cmp	r5, r4
 8001068:	d1f9      	bne.n	800105e <__libc_init_array+0xe>
 800106a:	f000 f88b 	bl	8001184 <_init>
 800106e:	4e08      	ldr	r6, [pc, #32]	; (8001090 <__libc_init_array+0x40>)
 8001070:	4d08      	ldr	r5, [pc, #32]	; (8001094 <__libc_init_array+0x44>)
 8001072:	2400      	movs	r4, #0
 8001074:	1bad      	subs	r5, r5, r6
 8001076:	10ad      	asrs	r5, r5, #2
 8001078:	d005      	beq.n	8001086 <__libc_init_array+0x36>
 800107a:	00a3      	lsls	r3, r4, #2
 800107c:	58f3      	ldr	r3, [r6, r3]
 800107e:	3401      	adds	r4, #1
 8001080:	4798      	blx	r3
 8001082:	42a5      	cmp	r5, r4
 8001084:	d1f9      	bne.n	800107a <__libc_init_array+0x2a>
 8001086:	bd70      	pop	{r4, r5, r6, pc}
 8001088:	080011a4 	.word	0x080011a4
 800108c:	080011a4 	.word	0x080011a4
 8001090:	080011a4 	.word	0x080011a4
 8001094:	080011ac 	.word	0x080011ac

08001098 <__register_exitproc>:
 8001098:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800109a:	4644      	mov	r4, r8
 800109c:	465f      	mov	r7, fp
 800109e:	4656      	mov	r6, sl
 80010a0:	464d      	mov	r5, r9
 80010a2:	469b      	mov	fp, r3
 80010a4:	4b2f      	ldr	r3, [pc, #188]	; (8001164 <__register_exitproc+0xcc>)
 80010a6:	b4f0      	push	{r4, r5, r6, r7}
 80010a8:	681c      	ldr	r4, [r3, #0]
 80010aa:	23a4      	movs	r3, #164	; 0xa4
 80010ac:	005b      	lsls	r3, r3, #1
 80010ae:	1c05      	adds	r5, r0, #0
 80010b0:	58e0      	ldr	r0, [r4, r3]
 80010b2:	1c0e      	adds	r6, r1, #0
 80010b4:	4690      	mov	r8, r2
 80010b6:	2800      	cmp	r0, #0
 80010b8:	d04b      	beq.n	8001152 <__register_exitproc+0xba>
 80010ba:	6843      	ldr	r3, [r0, #4]
 80010bc:	2b1f      	cmp	r3, #31
 80010be:	dc0d      	bgt.n	80010dc <__register_exitproc+0x44>
 80010c0:	1c5c      	adds	r4, r3, #1
 80010c2:	2d00      	cmp	r5, #0
 80010c4:	d121      	bne.n	800110a <__register_exitproc+0x72>
 80010c6:	3302      	adds	r3, #2
 80010c8:	009b      	lsls	r3, r3, #2
 80010ca:	6044      	str	r4, [r0, #4]
 80010cc:	501e      	str	r6, [r3, r0]
 80010ce:	2000      	movs	r0, #0
 80010d0:	bc3c      	pop	{r2, r3, r4, r5}
 80010d2:	4690      	mov	r8, r2
 80010d4:	4699      	mov	r9, r3
 80010d6:	46a2      	mov	sl, r4
 80010d8:	46ab      	mov	fp, r5
 80010da:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80010dc:	4b22      	ldr	r3, [pc, #136]	; (8001168 <__register_exitproc+0xd0>)
 80010de:	2b00      	cmp	r3, #0
 80010e0:	d03c      	beq.n	800115c <__register_exitproc+0xc4>
 80010e2:	20c8      	movs	r0, #200	; 0xc8
 80010e4:	0040      	lsls	r0, r0, #1
 80010e6:	e000      	b.n	80010ea <__register_exitproc+0x52>
 80010e8:	bf00      	nop
 80010ea:	2800      	cmp	r0, #0
 80010ec:	d036      	beq.n	800115c <__register_exitproc+0xc4>
 80010ee:	22a4      	movs	r2, #164	; 0xa4
 80010f0:	2300      	movs	r3, #0
 80010f2:	0052      	lsls	r2, r2, #1
 80010f4:	58a1      	ldr	r1, [r4, r2]
 80010f6:	6043      	str	r3, [r0, #4]
 80010f8:	6001      	str	r1, [r0, #0]
 80010fa:	50a0      	str	r0, [r4, r2]
 80010fc:	3240      	adds	r2, #64	; 0x40
 80010fe:	5083      	str	r3, [r0, r2]
 8001100:	3204      	adds	r2, #4
 8001102:	5083      	str	r3, [r0, r2]
 8001104:	2401      	movs	r4, #1
 8001106:	2d00      	cmp	r5, #0
 8001108:	d0dd      	beq.n	80010c6 <__register_exitproc+0x2e>
 800110a:	009a      	lsls	r2, r3, #2
 800110c:	4691      	mov	r9, r2
 800110e:	4481      	add	r9, r0
 8001110:	4642      	mov	r2, r8
 8001112:	2188      	movs	r1, #136	; 0x88
 8001114:	464f      	mov	r7, r9
 8001116:	507a      	str	r2, [r7, r1]
 8001118:	22c4      	movs	r2, #196	; 0xc4
 800111a:	0052      	lsls	r2, r2, #1
 800111c:	4690      	mov	r8, r2
 800111e:	4480      	add	r8, r0
 8001120:	4642      	mov	r2, r8
 8001122:	3987      	subs	r1, #135	; 0x87
 8001124:	4099      	lsls	r1, r3
 8001126:	6812      	ldr	r2, [r2, #0]
 8001128:	468a      	mov	sl, r1
 800112a:	430a      	orrs	r2, r1
 800112c:	4694      	mov	ip, r2
 800112e:	4642      	mov	r2, r8
 8001130:	4661      	mov	r1, ip
 8001132:	6011      	str	r1, [r2, #0]
 8001134:	2284      	movs	r2, #132	; 0x84
 8001136:	4649      	mov	r1, r9
 8001138:	465f      	mov	r7, fp
 800113a:	0052      	lsls	r2, r2, #1
 800113c:	508f      	str	r7, [r1, r2]
 800113e:	2d02      	cmp	r5, #2
 8001140:	d1c1      	bne.n	80010c6 <__register_exitproc+0x2e>
 8001142:	1c02      	adds	r2, r0, #0
 8001144:	4655      	mov	r5, sl
 8001146:	328d      	adds	r2, #141	; 0x8d
 8001148:	32ff      	adds	r2, #255	; 0xff
 800114a:	6811      	ldr	r1, [r2, #0]
 800114c:	430d      	orrs	r5, r1
 800114e:	6015      	str	r5, [r2, #0]
 8001150:	e7b9      	b.n	80010c6 <__register_exitproc+0x2e>
 8001152:	1c20      	adds	r0, r4, #0
 8001154:	304d      	adds	r0, #77	; 0x4d
 8001156:	30ff      	adds	r0, #255	; 0xff
 8001158:	50e0      	str	r0, [r4, r3]
 800115a:	e7ae      	b.n	80010ba <__register_exitproc+0x22>
 800115c:	2001      	movs	r0, #1
 800115e:	4240      	negs	r0, r0
 8001160:	e7b6      	b.n	80010d0 <__register_exitproc+0x38>
 8001162:	46c0      	nop			; (mov r8, r8)
 8001164:	080011a0 	.word	0x080011a0
 8001168:	00000000 	.word	0x00000000

0800116c <register_fini>:
 800116c:	b508      	push	{r3, lr}
 800116e:	4b03      	ldr	r3, [pc, #12]	; (800117c <register_fini+0x10>)
 8001170:	2b00      	cmp	r3, #0
 8001172:	d002      	beq.n	800117a <register_fini+0xe>
 8001174:	4802      	ldr	r0, [pc, #8]	; (8001180 <register_fini+0x14>)
 8001176:	f7ff ff49 	bl	800100c <atexit>
 800117a:	bd08      	pop	{r3, pc}
 800117c:	00000000 	.word	0x00000000
 8001180:	0800101d 	.word	0x0800101d

08001184 <_init>:
 8001184:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001186:	46c0      	nop			; (mov r8, r8)
 8001188:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800118a:	bc08      	pop	{r3}
 800118c:	469e      	mov	lr, r3
 800118e:	4770      	bx	lr

08001190 <_fini>:
 8001190:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001192:	46c0      	nop			; (mov r8, r8)
 8001194:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001196:	bc08      	pop	{r3}
 8001198:	469e      	mov	lr, r3
 800119a:	4770      	bx	lr
