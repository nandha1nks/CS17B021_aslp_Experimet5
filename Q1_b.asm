main:
	addi $sp,$sp,-16
	sw $s4,12($sp)
	sw $s0,8($sp)
	sw $s1,4($sp)
	sw $s2,0($sp)
	
	li $s0,5
	li $s1,5

	mult $s0,$s1
	mfhi $s2
	mflo $s3
	
  lw $s4,12($sp)
	lw $s0,8($sp)
	lw $s1,4($sp)
	lw $s2,0($sp)
	j $31
