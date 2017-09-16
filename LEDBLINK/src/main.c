/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32f4xx.h"
#include "stm32f4_discovery.h"
GPIO_InitTypeDef GPIO_LED1;

void sleep(long wait_time);

//This is a sleep function that just increments for a given amount of time
//this is a simple way to simulate a sleep function while the micro waits to
//switch the led on and off.
void sleep(long wait_time) {
	for(int x = 0; x < wait_time; x++);
}




int main(void)
{
	//this initializes the peripheral clock. Without a clock the input/output (IO)
	//won't work. So initialize it here, more clock tutorials later...
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD, ENABLE);

	//before you can turn on an led you must initialize the pin
	//GPIO_LED1 was defined with the data type GPIO_InitTypeDef. In order to initialize the
	//attributes of this structure must be filled out. To see what attributes there are right
	//click the GPIO_InitTypeDef once it has been highlighted and go to open declaration.

	//Start Initialization Section
	//Use the user manual to see what pin it should be
	GPIO_LED1.GPIO_Pin = GPIO_Pin_12;			//Sets what pin is being used to light the led
	//Choose how fast you want it to be running at
	GPIO_LED1.GPIO_Speed = GPIO_Speed_50MHz;
	//what type of output it is
	GPIO_LED1.GPIO_OType = GPIO_OType_PP;
	GPIO_LED1.GPIO_PuPd = GPIO_PuPd_NOPULL;
	//select if its an input or an output, clearly an output in this case because we want to turn on the
	//led
	GPIO_LED1.GPIO_Mode = GPIO_Mode_OUT;
	//actually initialize the LED now that everything is set
	GPIO_Init(GPIOD, &GPIO_LED1);
	//End Initialization Section


	//now that you have initialized one led can use a helpful function that is already made for you
	STM_EVAL_LEDInit(LED3); //initialize led 3 (pd13)	orange
	STM_EVAL_LEDInit(LED5);	//initialize led 5 (pd14)	red
	STM_EVAL_LEDInit(LED6); //initialize led 6 (pd15)	blue



	//Blinking
	for(;;) {
		//Turns the LED on
			GPIO_WriteBit(GPIOD, GPIO_Pin_12, Bit_SET);
			GPIO_WriteBit(GPIOD, GPIO_Pin_13, Bit_SET);
			GPIO_WriteBit(GPIOD, GPIO_Pin_14, Bit_SET);
			GPIO_WriteBit(GPIOD, GPIO_Pin_15, Bit_SET);
			sleep(10000000);	//makes the mcu wait for a bit before switching
			//Turns the LED off
			GPIO_WriteBit(GPIOD, GPIO_Pin_12, Bit_RESET);
			GPIO_WriteBit(GPIOD, GPIO_Pin_13, Bit_RESET);
			GPIO_WriteBit(GPIOD, GPIO_Pin_14, Bit_RESET);
			GPIO_WriteBit(GPIOD, GPIO_Pin_15, Bit_RESET);
			sleep(10000000);
	}


}
