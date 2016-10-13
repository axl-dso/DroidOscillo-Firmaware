#ifndef MC_SHARED_MEM_H
#define MC_SHARED_MEM_H

// Multiple core shared variables

#include "lpc_types.h"


//	M4 External code ->  0x10000000 - 0x10010000 64KB
//	M0 External code ->  0x10010000 - 0x10020000 64KB
#define M4_EXCODE_ADDR		0x10000000
#define M4_EXCODE_SIZE		0x10000
#define M0_EXCODE_ADDR		0x10010000
#define M0_EXCODE_SIZE		0x10000

typedef enum {
	DATA_REQUEST					= 1,
 	DATA_RECEIVED					= 2,
 	UPDATE_FLAG_HORIZON_TRIGGER		= 3,
 	UPDATE_FLAG_VERTICAL_TRIGGER	= 4,
 	UPDATE_FLAG_BIAS_VOLTAGE		= 5,
	UPDATE_FLAG_TIMESCALE			= 6,
 	UPDATE_FLAG_VOLTAGE_SCALE		= 7,
	UPDATE_FLAG_TRIGGER_MODE		= 8,
	UPDATE_FLAG_RUNNING_MODE		= 9,
	UPDATE_FLAG_DC_CUT				= 10,
	UPDATE_FLAG_TRIGGER_EDGE		= 11,
	MESSAGE_EEPROM_PAGE_WRITE		= 12,
	MESSAGE_EEPROM_SEQ_READ			= 13,
	MESSAGE_DEVICE_INIT				= 255		// デバイス初期化
} MESSAGE_TYPES;


typedef enum {
	TGMODE_UP,
	TGMODE_DOWN,
	TGMODE_BI
}TRIGMODE_TYPES;

typedef enum {
	RUNMODE_STOP =		0,
	RUNMODE_NORMAL =	1,
	RUNMODE_FREE =		2
}RUNMODE_TYPES;

#define MCV_BUFFER_SAMPLE_LENGTH 	800
#define MCV_BUFFER_SIZE_BYTE		(MCV_BUFFER_SAMPLE_LENGTH*2)

#define USB_FREQ				480000000
#define CRYSTAL_FREQ			12000000

#define TRIGGER_EDGE_UP		0
#define TRIGGER_EDGE_DOWN	1

typedef struct {
	uint16_t Buffer[MCV_BUFFER_SAMPLE_LENGTH];
	int16_t HTrigger;		// Horizontal Trigger Position グラフの中心が０　グラフの左端　-サンプル長/2 　グラフの右端→サンプル長/2
	uint16_t VTrigger;		// Vertical Trigger Position
	uint16_t BiasVoltage;	// bias Voltage
	uint16_t SampleLength;
	uint8_t UpdateFlags; 	// Update Flag
	uint8_t Timescale;
	uint8_t VoltageScale;
	uint8_t RoleModeOn;
	uint8_t TriggerEdge;
	Bool DCCut;
	Bool OneShotMode;
	Bool BufferIsPending;
	TRIGMODE_TYPES TriggerMode;
	RUNMODE_TYPES RunningMode;
} MULTICORE_VARIABLE_T;

#define SHARED_MEM0_ADDR 0x2000C000
#define SHARED_MEM0_SIZE 0x3F00
#define MCV ((MULTICORE_VARIABLE_T*) SHARED_MEM0_ADDR)
#define M0_FLASH_ADDR			0x14010000

#endif
