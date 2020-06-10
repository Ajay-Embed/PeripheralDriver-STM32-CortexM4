/*
We'll be developing a gpio driver for a bare metal application in assembly
*/


.cpu cortex-m4
.syntax unified

.equ GPIO_BASE, 0x40020000
.equ GPIO_MODER_OFFSET, 0x00
.equ GPIO_ODR_OFFSET, 0x14

.equ GPIOA_MODER, GPIO_BASE + GPIO_MODER_OFFSET
.equ GPIOA_ODR, GPIO_BASE + GPIO_ODR_OFFSET

.equ RCC_BASE, 0x40023800
.equ RCC_AHB1ENR_OFFSET, 0x30
.equ RCC_AHB1ENR, RCC_BASE + RCC_AHB1ENR_OFFSET

.equ GPIOA_EN, 1<<0
.equ MODER5_OUT, 1<<10
.equ LED_ON, 1<<5

		.section .text
		.globl main

main:
  		BL		GPIO_init



GPIO_init:

		LDR		R0,=RCC_AHB1ENR

		LDR 	R1,[R0]

		ORR 	R1,#GPIOA_EN

		STR		R1,[R0]



		//GPIOA->MODER  |= MODER5_OUT
		LDR		R0,=GPIOA_MODER
		LDR		R1,[R0]
		ORR		R1,#MODER5_OUT
		STR		R1,[R0]


		//GPIOA->ODR |= LED_ON
		LDR		R0,=GPIOA_ODR
		LDR		R1,=LED_ON
		STR		R1,[R0]

		BX		LR

		.end
