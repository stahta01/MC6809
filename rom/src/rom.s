RAM1	equ	$2000

	global	vector_illegal_opcode
	global	vector_swi3
	global	vector_swi2
	global	vector_firq
	global	vector_irq
	global	vector_swi
	global	vector_nmi
	global	vector_reset

	section	TEXT

vector_illegal_opcode:

vector_swi3:
	rti

vector_swi2:

vector_firq:

vector_irq:

vector_swi:
	rti

vector_nmi:

vector_reset:
	; set stackpointers
	lds	#$1000
	ldu	#$0800

	ldd	#$fffd
.1	cmpd	#$0002
	bgt	.2
	addd	#$0001
	bra	.1
.2	ldx	#$dead
	ldy	#$beef
