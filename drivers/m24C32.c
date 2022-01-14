#include "config.h"
#include "m24C32.h"
#include <avr/io.h>
#include "mTWI.h"

void writeTo_eeprom(char data, int locationAddress){
    char hightByte, lowByte;
    lowByte = (char) locationAddress;
    hightByte = (char) (locationAddress>>8);
    
    if(TWI_start(EEPROM_Address)){
        TWI_write(hightByte);
        TWI_write(lowByte);
        TWI_write(data);
        // Finished !!
        // send Stop Condition
        TWI_stop();
    }
}
char readFrom_eeprom(int locationAddress){
    char hightByte, lowByte, data = 0;
    lowByte = (char) locationAddress;
    hightByte = (char) (locationAddress>>8);
    
    if(TWI_start(EEPROM_Address)){
        TWI_write(hightByte);
        TWI_write(lowByte);       
    }
    if(TWI_repeatedStart(EEPROM_Address|1)==1){
        data = TWI_read();
        TWI_stop();
    }
    return data;
}
