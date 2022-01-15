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

#define MOTOR_SPEED   10
#define OIL_TEMP      11


char str1[] = "Received = ";
char str2[] = " km/hour";
char str3[] = " 'C";
char error1[] = " QUEUE is FULL !!\r";
char error2[] = " QUEUE is Empty !!\r";

TaskHandle_t handler1;
TaskHandle_t handler2;

QueueHandle_t Q_handler;

typedef struct {
    int iValue;
    int iMeaning;

} myData;

void senderTask(void* var) {



    BaseType_t feedBack;

    while (1) {

        feedBack = xQueueSendToFront(Q_handler, &var, 10);
        
        if(feedBack == errQUEUE_FULL){
            UART_str(error1);
        }

    }




}

void receiverTask(void* var) {


    myData* pData = NULL;
    BaseType_t feedBack;
    while (1) {

        feedBack = xQueueReceive(Q_handler, &pData, 10);
        
        if(feedBack == errQUEUE_EMPTY){
            UART_str(error2);
        }
        else{
            UART_str(str1);
        UART_NUM(pData->iValue);

        if (pData->iMeaning == MOTOR_SPEED) {
            UART_str(str2);
        } else {
            UART_str(str3);
        }

        UART_send('\r');
        }

        
    }

}
myData data1, data2;

myData* pData1, *pData2;

int main() {
    DDRA = 0xFF;
    init_UART(9600);



    pData1 = &data1;
    pData2 = &data2;

    data1.iValue = 50;
    data1.iMeaning = MOTOR_SPEED;

    data2.iValue = 60;
    data2.iMeaning = OIL_TEMP;





    Q_handler = xQueueCreate(1, sizeof (int));


    // Two Sender Tasks
    xTaskCreate(senderTask, "T1toSend", 100, pData1, 1, NULL);
    xTaskCreate(senderTask, "T2toSend", 100, pData2, 1, NULL);

    // Receiver Task
    xTaskCreate(receiverTask, "T3toReceive", 100, NULL, 2, &handler2);

    vTaskStartScheduler();

    while (1);
    return 0;
}

