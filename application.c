/* 
 * File:   application.c
 * Author: hossa
 *
 * Created on January 8, 2022, 11:36 AM
 */

#include <stdio.h>
#include <stdlib.h>
#include "FREERTOSFILES/FreeRTOSConfig.h"
#include "FREERTOSFILES/FreeRTOS.h"
#include "FREERTOSFILES/task.h"
#include "drivers/mUART.h"
#include "FREERTOSFILES/queue.h"
#include "FREERTOSFILES/semphr.h"

#define MOTOR_SPEED   10
#define OIL_TEMP      11


char str1[] = "T1 = ";
char str2[] = "T2 = ";
char str3[] = " 'C";
char error1[] = " QUEUE is FULL !!\r";
char error2[] = " QUEUE is Empty !!\r";


int counter = 0;
xSemaphoreHandle handler;

void FirstTask(void* var) {

    while (1) {

        xSemaphoreTake(handler, 10);
        counter++;
        UART_str(str1);
        UART_NUM(counter);
        UART_send('\r');

        xSemaphoreGive(handler);
        vTaskDelay(5);
    }


}

void SecondTask(void* var) {


    while (1) {


        xSemaphoreTake(handler, 10);
        counter++;
        UART_str(str2);
        UART_NUM(counter);
        UART_send('\r');
        xSemaphoreGive(handler);

        vTaskDelay(5);

    }

}

int main() {
    DDRA = 0xFF;
    init_UART(9600);



    handler = xSemaphoreCreateBinary();

    // Two Sender Tasks
    xTaskCreate(FirstTask, "T1toSend", 100, NULL, 1, NULL);
    xTaskCreate(SecondTask, "T2toSend", 100, NULL, 1, NULL);


    vTaskStartScheduler();

    while (1);
    return 0;
}

