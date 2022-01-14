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

char str1[] = "Hello";
char str2[] = "World";
TaskHandle_t handler1;
TaskHandle_t handler2;

void Task1(void* var) {


    char *ptr = (char *) var;
    while (1) {
        UART_str(ptr);
        UART_send('\r');
        vTaskDelay(1);
        
    }


    vTaskDelete(NULL);

}

void Task2(void* var) {


    char *ptr = (char *) var;
    while (1) {
        UART_str(ptr);
        UART_send('\r');
        vTaskDelay(1);
    }

}



int main() {
    DDRA = 0xFF;
    init_UART(9600);


    char data1 = 'A';
    char data2 = 'B';
    xTaskCreate(Task1, "T1", 100, str1, 1, NULL);
    xTaskCreate(Task2, "T2", 100, str2, 1, &handler2);

    vTaskStartScheduler();

    while (1);
    return 0;
}

