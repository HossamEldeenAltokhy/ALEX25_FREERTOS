/* 
 * File:   m24C32.h
 * Author: hossa
 *
 * Created on November 6, 2021, 12:39 PM
 */

#ifndef M24C32_H
#define	M24C32_H

#define EEPROM_Address 0xA0

void writeTo_eeprom(char data, int locationAddress);
char readFrom_eeprom(int locationAddress);

#endif	/* M24C32_H */

