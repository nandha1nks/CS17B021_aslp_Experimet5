main:
	addi $s0,$zero,4
	addi $s1,$zero,2
	addi $s2,$zero,0
	addi $t0,$zero,31

L1:
	slt $t1,$s1,0
	sll $s2,$s2,1
	sll $s1,$s1,1
	add $s2,$s2,$t1
	sub $s2,$s2,$s0
	slt $t2,$s2,0
	add $s1,$s1,$t2
	beq $t2,1,restore
rcomp:	addi $t0,$t0,-1
	bne $t0,0,L1
	j $31

restore:
	add $s2,$s2,$s0
	j rcomp
