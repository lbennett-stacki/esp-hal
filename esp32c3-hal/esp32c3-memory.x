MEMORY
{
    /* 400K of on soc RAM, 16K reserved for cache */
    ICACHE : ORIGIN = 0x4037C000,          LENGTH = 0x4000
    IRAM   : ORIGIN = 0x4037C000 + 0x4000, LENGTH = 400K - 0x4000
    /* 384K of on soc ROM */
    IROM   : ORIGIN = 0x42000020,          LENGTH = 0x60000
}

REGION_ALIAS("REGION_TEXT",   IRAM);
REGION_ALIAS("REGION_RODATA", IRAM);
REGION_ALIAS("REGION_DATA",   IRAM);
REGION_ALIAS("REGION_BSS",    IRAM);
REGION_ALIAS("REGION_HEAP",   IRAM);
REGION_ALIAS("REGION_STACK",  IRAM);
