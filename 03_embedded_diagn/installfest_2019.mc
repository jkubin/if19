# 2019/02/24 Josef Kubin
#
# Source Code Generators
# installfest 2019
#
# monitoring of electronic components
CAPT([hardware])

# A/D (Analog to Digital converter)
ITEM([AD_OFFLINE],		[AD offline])
ITEM([AD_WATCHDOG],		[AD watchdog])

# RTC https://en.wikipedia.org/wiki/Real-time_clock
ITEM([RTC_OFFLINE],		[RTC offline])
ITEM([RTC_NO_SQW],		[no SQW to RTC signal])

# MCU https://en.wikipedia.org/wiki/Microcontroller
ITEM([MCU_WDT],			[MCU watchdog])

# ETH transceiver
ITEM([ETH_TRANSC_OFFLINE],	[ETH transceiver offline])
ITEM([ETH_BUS_ERROR],		[ETH bus integrity error])

# external memory
CAPT([memory])

# DataFlash https://www.adestotech.com/products/data-flash/
ITEM([DFLASH_OFFLINE],		[DataFlash offline])
ITEM([DFLASH_ERASE_WRITE],	[DataFlash erase or write error])

# FRAM https://en.wikipedia.org/wiki/Ferroelectric_RAM
ITEM([FRAM_OFFLINE],		[FRAM offline])
ITEM([FRAM_WRITE],		[FRAM can not write])

# SRAM https://en.wikipedia.org/wiki/Static_random-access_memory
ITEM([SRAM_OFFLINE],		[SRAM offline])
ITEM([SRAM_WRITE],		[SRAM can not write])

# configuration data integrity error (CRC)
CAPT([conf])

ITEM([AD_CONFIG],		[AD config])
ITEM([MAIN_CONFIG],		[main config])
ITEM([UART_A],			[UART A: changed address|speed|parity])
ITEM([UART_B],			[UART B: changed address|speed|parity])
ITEM([UART_C],			[UART C: changed address|speed|parity])
ITEM([UART_D],			[UART D: changed address|speed|parity])

# industry protocols settings
CAPT([proto])

ITEM([MBUS_A],			[M-Bus A: settings changed])
ITEM([MBUS_B],			[M-Bus B: settings changed])
ITEM([MBUS_C],			[M-Bus C: settings changed])
ITEM([MBUS_D],			[M-Bus D: settings changed])
ITEM([MODBUS_A],		[MODBUS A: settings changed])
ITEM([MODBUS_B],		[MODBUS B: settings changed])
ITEM([MODBUS_C],		[MODBUS C: settings changed])
ITEM([MODBUS_D],		[MODBUS D: settings changed])

# tracking user activity
# what the user has changed or attempted to change
CAPT([usr])

ITEM([MESSAGE],			[změna konfigurace chybových zpráv])

ITEM([MAIN_CONFIG],		[hlavní konfigurace])
ITEM([MSG_FLAGS],		[vymazání chybových zpráv + uložení])
ITEM([USE_PASSWD],		[uživatelské heslo])
ITEM([USR_CONST],		[uživatelské konstanty])

# time changes (user edited time)
#CAPT([time])

ITEM([LAST_KNOWN_TIME],		[nastaven poslední známý čas])
ITEM([NEW_TIME],		[nově nastavený čas])
ITEM([PREV_TIME],		[předchozí čas])
ITEM([SUMMER_TO_WINTER],	[změna času: léto-zima])
ITEM([WINTER_TO_SUMMER],	[změna času: zima-léto])

# monitors off and on times
CAPT([on_off])

ITEM([START_TIME],		[čas zapnutí])
ITEM([SHUTDOWN_TIME],		[čas vypnutí])
