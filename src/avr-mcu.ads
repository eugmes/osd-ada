-- Definitions for atmega88pa

package AVR.MCU is
   pragma Preelaborate;

   PINB_Addr : constant := 16#23#;
   type PINB_Type is mod 256;
   PINB : PINB_Type;
   for PINB'Address use PINB_Addr;
   pragma Volatile (PINB);
   PINB0 : constant PINB_Type := 2**0;
   PINB1 : constant PINB_Type := 2**1;
   PINB2 : constant PINB_Type := 2**2;
   PINB3 : constant PINB_Type := 2**3;
   PINB4 : constant PINB_Type := 2**4;
   PINB5 : constant PINB_Type := 2**5;
   PINB6 : constant PINB_Type := 2**6;
   PINB7 : constant PINB_Type := 2**7;

   DDRB_Addr : constant := 16#24#;
   type DDRB_Type is mod 256;
   DDRB : DDRB_Type;
   for DDRB'Address use DDRB_Addr;
   pragma Volatile (DDRB);
   DDB0 : constant DDRB_Type := 2**0;
   DDB1 : constant DDRB_Type := 2**1;
   DDB2 : constant DDRB_Type := 2**2;
   DDB3 : constant DDRB_Type := 2**3;
   DDB4 : constant DDRB_Type := 2**4;
   DDB5 : constant DDRB_Type := 2**5;
   DDB6 : constant DDRB_Type := 2**6;
   DDB7 : constant DDRB_Type := 2**7;

   PORTB_Addr : constant := 16#25#;
   type PORTB_Type is mod 256;
   PORTB : PORTB_Type;
   for PORTB'Address use PORTB_Addr;
   pragma Volatile (PORTB);
   PORTB0 : constant PORTB_Type := 2**0;
   PORTB1 : constant PORTB_Type := 2**1;
   PORTB2 : constant PORTB_Type := 2**2;
   PORTB3 : constant PORTB_Type := 2**3;
   PORTB4 : constant PORTB_Type := 2**4;
   PORTB5 : constant PORTB_Type := 2**5;
   PORTB6 : constant PORTB_Type := 2**6;
   PORTB7 : constant PORTB_Type := 2**7;

   PINC_Addr : constant := 16#26#;
   type PINC_Type is mod 256;
   PINC : PINC_Type;
   for PINC'Address use PINC_Addr;
   pragma Volatile (PINC);
   PINC0 : constant PINC_Type := 2**0;
   PINC1 : constant PINC_Type := 2**1;
   PINC2 : constant PINC_Type := 2**2;
   PINC3 : constant PINC_Type := 2**3;
   PINC4 : constant PINC_Type := 2**4;
   PINC5 : constant PINC_Type := 2**5;
   PINC6 : constant PINC_Type := 2**6;

   DDRC_Addr : constant := 16#27#;
   type DDRC_Type is mod 256;
   DDRC : DDRC_Type;
   for DDRC'Address use DDRC_Addr;
   pragma Volatile (DDRC);
   DDC0 : constant DDRC_Type := 2**0;
   DDC1 : constant DDRC_Type := 2**1;
   DDC2 : constant DDRC_Type := 2**2;
   DDC3 : constant DDRC_Type := 2**3;
   DDC4 : constant DDRC_Type := 2**4;
   DDC5 : constant DDRC_Type := 2**5;
   DDC6 : constant DDRC_Type := 2**6;

   PORTC_Addr : constant := 16#28#;
   type PORTC_Type is mod 256;
   PORTC : PORTC_Type;
   for PORTC'Address use PORTC_Addr;
   pragma Volatile (PORTC);
   PORTC0 : constant PORTC_Type := 2**0;
   PORTC1 : constant PORTC_Type := 2**1;
   PORTC2 : constant PORTC_Type := 2**2;
   PORTC3 : constant PORTC_Type := 2**3;
   PORTC4 : constant PORTC_Type := 2**4;
   PORTC5 : constant PORTC_Type := 2**5;
   PORTC6 : constant PORTC_Type := 2**6;

   PIND_Addr : constant := 16#29#;
   type PIND_Type is mod 256;
   PIND : PIND_Type;
   for PIND'Address use PIND_Addr;
   pragma Volatile (PIND);
   PIND0 : constant PIND_Type := 2**0;
   PIND1 : constant PIND_Type := 2**1;
   PIND2 : constant PIND_Type := 2**2;
   PIND3 : constant PIND_Type := 2**3;
   PIND4 : constant PIND_Type := 2**4;
   PIND5 : constant PIND_Type := 2**5;
   PIND6 : constant PIND_Type := 2**6;
   PIND7 : constant PIND_Type := 2**7;

   DDRD_Addr : constant := 16#2A#;
   type DDRD_Type is mod 256;
   DDRD : DDRD_Type;
   for DDRD'Address use DDRD_Addr;
   pragma Volatile (DDRD);
   DDD0 : constant DDRD_Type := 2**0;
   DDD1 : constant DDRD_Type := 2**1;
   DDD2 : constant DDRD_Type := 2**2;
   DDD3 : constant DDRD_Type := 2**3;
   DDD4 : constant DDRD_Type := 2**4;
   DDD5 : constant DDRD_Type := 2**5;
   DDD6 : constant DDRD_Type := 2**6;
   DDD7 : constant DDRD_Type := 2**7;

   PORTD_Addr : constant := 16#2B#;
   type PORTD_Type is mod 256;
   PORTD : PORTD_Type;
   for PORTD'Address use PORTD_Addr;
   pragma Volatile (PORTD);
   PORTD0 : constant PORTD_Type := 2**0;
   PORTD1 : constant PORTD_Type := 2**1;
   PORTD2 : constant PORTD_Type := 2**2;
   PORTD3 : constant PORTD_Type := 2**3;
   PORTD4 : constant PORTD_Type := 2**4;
   PORTD5 : constant PORTD_Type := 2**5;
   PORTD6 : constant PORTD_Type := 2**6;
   PORTD7 : constant PORTD_Type := 2**7;

   TIFR0_Addr : constant := 16#35#;
   type TIFR0_Type is mod 256;
   TIFR0 : TIFR0_Type;
   for TIFR0'Address use TIFR0_Addr;
   pragma Volatile (TIFR0);
   TOV0 : constant TIFR0_Type := 2**0;
   OCF0A : constant TIFR0_Type := 2**1;
   OCF0B : constant TIFR0_Type := 2**2;

   TIFR1_Addr : constant := 16#36#;
   type TIFR1_Type is mod 256;
   TIFR1 : TIFR1_Type;
   for TIFR1'Address use TIFR1_Addr;
   pragma Volatile (TIFR1);
   TOV1 : constant TIFR1_Type := 2**0;
   OCF1A : constant TIFR1_Type := 2**1;
   OCF1B : constant TIFR1_Type := 2**2;
   ICF1 : constant TIFR1_Type := 2**5;

   TIFR2_Addr : constant := 16#37#;
   type TIFR2_Type is mod 256;
   TIFR2 : TIFR2_Type;
   for TIFR2'Address use TIFR2_Addr;
   pragma Volatile (TIFR2);
   TOV2 : constant TIFR2_Type := 2**0;
   OCF2A : constant TIFR2_Type := 2**1;
   OCF2B : constant TIFR2_Type := 2**2;

   PCIFR_Addr : constant := 16#3B#;
   type PCIFR_Type is mod 256;
   PCIFR : PCIFR_Type;
   for PCIFR'Address use PCIFR_Addr;
   pragma Volatile (PCIFR);
   PCIF0 : constant PCIFR_Type := 2**0;
   PCIF1 : constant PCIFR_Type := 2**1;
   PCIF2 : constant PCIFR_Type := 2**2;

   EIFR_Addr : constant := 16#3C#;
   type EIFR_Type is mod 256;
   EIFR : EIFR_Type;
   for EIFR'Address use EIFR_Addr;
   pragma Volatile (EIFR);
   INTF0 : constant EIFR_Type := 2**0;
   INTF1 : constant EIFR_Type := 2**1;

   EIMSK_Addr : constant := 16#3D#;
   type EIMSK_Type is mod 256;
   EIMSK : EIMSK_Type;
   for EIMSK'Address use EIMSK_Addr;
   pragma Volatile (EIMSK);
   INT0 : constant EIMSK_Type := 2**0;
   INT1 : constant EIMSK_Type := 2**1;

   GPIOR0_Addr : constant := 16#3E#;
   type GPIOR0_Type is mod 256;
   GPIOR0 : GPIOR0_Type;
   for GPIOR0'Address use GPIOR0_Addr;
   pragma Volatile (GPIOR0);
   GPIOR00 : constant GPIOR0_Type := 2**0;
   GPIOR01 : constant GPIOR0_Type := 2**1;
   GPIOR02 : constant GPIOR0_Type := 2**2;
   GPIOR03 : constant GPIOR0_Type := 2**3;
   GPIOR04 : constant GPIOR0_Type := 2**4;
   GPIOR05 : constant GPIOR0_Type := 2**5;
   GPIOR06 : constant GPIOR0_Type := 2**6;
   GPIOR07 : constant GPIOR0_Type := 2**7;

   EECR_Addr : constant := 16#3F#;
   type EECR_Type is mod 256;
   EECR : EECR_Type;
   for EECR'Address use EECR_Addr;
   pragma Volatile (EECR);
   EERE : constant EECR_Type := 2**0;
   EEPE : constant EECR_Type := 2**1;
   EEMPE : constant EECR_Type := 2**2;
   EERIE : constant EECR_Type := 2**3;
   EEPM0 : constant EECR_Type := 2**4;
   EEPM1 : constant EECR_Type := 2**5;

   EEDR_Addr : constant := 16#40#;
   type EEDR_Type is mod 256;
   EEDR : EEDR_Type;
   for EEDR'Address use EEDR_Addr;
   pragma Volatile (EEDR);
   EEDR0 : constant EEDR_Type := 2**0;
   EEDR1 : constant EEDR_Type := 2**1;
   EEDR2 : constant EEDR_Type := 2**2;
   EEDR3 : constant EEDR_Type := 2**3;
   EEDR4 : constant EEDR_Type := 2**4;
   EEDR5 : constant EEDR_Type := 2**5;
   EEDR6 : constant EEDR_Type := 2**6;
   EEDR7 : constant EEDR_Type := 2**7;

   EEAR_Addr : constant := 16#41#;
   EEARL_Addr : constant := 16#41#;
   type EEARL_Type is mod 256;
   EEARL : EEARL_Type;
   for EEARL'Address use EEARL_Addr;
   pragma Volatile (EEARL);
   EEAR0 : constant EEARL_Type := 2**0;
   EEAR1 : constant EEARL_Type := 2**1;
   EEAR2 : constant EEARL_Type := 2**2;
   EEAR3 : constant EEARL_Type := 2**3;
   EEAR4 : constant EEARL_Type := 2**4;
   EEAR5 : constant EEARL_Type := 2**5;
   EEAR6 : constant EEARL_Type := 2**6;
   EEAR7 : constant EEARL_Type := 2**7;

   EEARH_Addr : constant := 16#42#;
   type EEARH_Type is mod 256;
   EEARH : EEARH_Type;
   for EEARH'Address use EEARH_Addr;
   pragma Volatile (EEARH);
   EEAR8 : constant EEARH_Type := 2**0;

   GTCCR_Addr : constant := 16#43#;
   type GTCCR_Type is mod 256;
   GTCCR : GTCCR_Type;
   for GTCCR'Address use GTCCR_Addr;
   pragma Volatile (GTCCR);
   PSRSYNC : constant GTCCR_Type := 2**0;
   PSRASY : constant GTCCR_Type := 2**1;
   TSM : constant GTCCR_Type := 2**7;

   TCCR0A_Addr : constant := 16#44#;
   type TCCR0A_Type is mod 256;
   TCCR0A : TCCR0A_Type;
   for TCCR0A'Address use TCCR0A_Addr;
   pragma Volatile (TCCR0A);
   WGM00 : constant TCCR0A_Type := 2**0;
   WGM01 : constant TCCR0A_Type := 2**1;
   COM0B0 : constant TCCR0A_Type := 2**4;
   COM0B1 : constant TCCR0A_Type := 2**5;
   COM0A0 : constant TCCR0A_Type := 2**6;
   COM0A1 : constant TCCR0A_Type := 2**7;

   TCCR0B_Addr : constant := 16#45#;
   type TCCR0B_Type is mod 256;
   TCCR0B : TCCR0B_Type;
   for TCCR0B'Address use TCCR0B_Addr;
   pragma Volatile (TCCR0B);
   CS00 : constant TCCR0B_Type := 2**0;
   CS01 : constant TCCR0B_Type := 2**1;
   CS02 : constant TCCR0B_Type := 2**2;
   WGM02 : constant TCCR0B_Type := 2**3;
   FOC0B : constant TCCR0B_Type := 2**6;
   FOC0A : constant TCCR0B_Type := 2**7;

   TCNT0_Addr : constant := 16#46#;
   type TCNT0_Type is mod 256;
   TCNT0 : TCNT0_Type;
   for TCNT0'Address use TCNT0_Addr;
   pragma Volatile (TCNT0);
   TCNT0_0 : constant TCNT0_Type := 2**0;
   TCNT0_1 : constant TCNT0_Type := 2**1;
   TCNT0_2 : constant TCNT0_Type := 2**2;
   TCNT0_3 : constant TCNT0_Type := 2**3;
   TCNT0_4 : constant TCNT0_Type := 2**4;
   TCNT0_5 : constant TCNT0_Type := 2**5;
   TCNT0_6 : constant TCNT0_Type := 2**6;
   TCNT0_7 : constant TCNT0_Type := 2**7;

   OCR0A_Addr : constant := 16#47#;
   type OCR0A_Type is mod 256;
   OCR0A : OCR0A_Type;
   for OCR0A'Address use OCR0A_Addr;
   pragma Volatile (OCR0A);
   OCR0A_0 : constant OCR0A_Type := 2**0;
   OCR0A_1 : constant OCR0A_Type := 2**1;
   OCR0A_2 : constant OCR0A_Type := 2**2;
   OCR0A_3 : constant OCR0A_Type := 2**3;
   OCR0A_4 : constant OCR0A_Type := 2**4;
   OCR0A_5 : constant OCR0A_Type := 2**5;
   OCR0A_6 : constant OCR0A_Type := 2**6;
   OCR0A_7 : constant OCR0A_Type := 2**7;

   OCR0B_Addr : constant := 16#48#;
   type OCR0B_Type is mod 256;
   OCR0B : OCR0B_Type;
   for OCR0B'Address use OCR0B_Addr;
   pragma Volatile (OCR0B);
   OCR0B_0 : constant OCR0B_Type := 2**0;
   OCR0B_1 : constant OCR0B_Type := 2**1;
   OCR0B_2 : constant OCR0B_Type := 2**2;
   OCR0B_3 : constant OCR0B_Type := 2**3;
   OCR0B_4 : constant OCR0B_Type := 2**4;
   OCR0B_5 : constant OCR0B_Type := 2**5;
   OCR0B_6 : constant OCR0B_Type := 2**6;
   OCR0B_7 : constant OCR0B_Type := 2**7;

   GPIOR1_Addr : constant := 16#4A#;
   type GPIOR1_Type is mod 256;
   GPIOR1 : GPIOR1_Type;
   for GPIOR1'Address use GPIOR1_Addr;
   pragma Volatile (GPIOR1);
   GPIOR10 : constant GPIOR1_Type := 2**0;
   GPIOR11 : constant GPIOR1_Type := 2**1;
   GPIOR12 : constant GPIOR1_Type := 2**2;
   GPIOR13 : constant GPIOR1_Type := 2**3;
   GPIOR14 : constant GPIOR1_Type := 2**4;
   GPIOR15 : constant GPIOR1_Type := 2**5;
   GPIOR16 : constant GPIOR1_Type := 2**6;
   GPIOR17 : constant GPIOR1_Type := 2**7;

   GPIOR2_Addr : constant := 16#4B#;
   type GPIOR2_Type is mod 256;
   GPIOR2 : GPIOR2_Type;
   for GPIOR2'Address use GPIOR2_Addr;
   pragma Volatile (GPIOR2);
   GPIOR20 : constant GPIOR2_Type := 2**0;
   GPIOR21 : constant GPIOR2_Type := 2**1;
   GPIOR22 : constant GPIOR2_Type := 2**2;
   GPIOR23 : constant GPIOR2_Type := 2**3;
   GPIOR24 : constant GPIOR2_Type := 2**4;
   GPIOR25 : constant GPIOR2_Type := 2**5;
   GPIOR26 : constant GPIOR2_Type := 2**6;
   GPIOR27 : constant GPIOR2_Type := 2**7;

   SPCR_Addr : constant := 16#4C#;
   type SPCR_Type is mod 256;
   SPCR : SPCR_Type;
   for SPCR'Address use SPCR_Addr;
   pragma Volatile (SPCR);
   SPR0 : constant SPCR_Type := 2**0;
   SPR1 : constant SPCR_Type := 2**1;
   CPHA : constant SPCR_Type := 2**2;
   CPOL : constant SPCR_Type := 2**3;
   MSTR : constant SPCR_Type := 2**4;
   DORD : constant SPCR_Type := 2**5;
   SPE : constant SPCR_Type := 2**6;
   SPIE : constant SPCR_Type := 2**7;

   SPSR_Addr : constant := 16#4D#;
   type SPSR_Type is mod 256;
   SPSR : SPSR_Type;
   for SPSR'Address use SPSR_Addr;
   pragma Volatile (SPSR);
   SPI2X : constant SPSR_Type := 2**0;
   WCOL : constant SPSR_Type := 2**6;
   SPIF : constant SPSR_Type := 2**7;

   SPDR_Addr : constant := 16#4E#;
   type SPDR_Type is mod 256;
   SPDR : SPDR_Type;
   for SPDR'Address use SPDR_Addr;
   pragma Volatile (SPDR);
   SPDR0 : constant SPDR_Type := 2**0;
   SPDR1 : constant SPDR_Type := 2**1;
   SPDR2 : constant SPDR_Type := 2**2;
   SPDR3 : constant SPDR_Type := 2**3;
   SPDR4 : constant SPDR_Type := 2**4;
   SPDR5 : constant SPDR_Type := 2**5;
   SPDR6 : constant SPDR_Type := 2**6;
   SPDR7 : constant SPDR_Type := 2**7;

   ACSR_Addr : constant := 16#50#;
   type ACSR_Type is mod 256;
   ACSR : ACSR_Type;
   for ACSR'Address use ACSR_Addr;
   pragma Volatile (ACSR);
   ACIS0 : constant ACSR_Type := 2**0;
   ACIS1 : constant ACSR_Type := 2**1;
   ACIC : constant ACSR_Type := 2**2;
   ACIE : constant ACSR_Type := 2**3;
   ACI : constant ACSR_Type := 2**4;
   ACO : constant ACSR_Type := 2**5;
   ACBG : constant ACSR_Type := 2**6;
   ACD : constant ACSR_Type := 2**7;

   SMCR_Addr : constant := 16#53#;
   type SMCR_Type is mod 256;
   SMCR : SMCR_Type;
   for SMCR'Address use SMCR_Addr;
   pragma Volatile (SMCR);
   SE : constant SMCR_Type := 2**0;
   SM0 : constant SMCR_Type := 2**1;
   SM1 : constant SMCR_Type := 2**2;
   SM2 : constant SMCR_Type := 2**3;

   MCUSR_Addr : constant := 16#54#;
   type MCUSR_Type is mod 256;
   MCUSR : MCUSR_Type;
   for MCUSR'Address use MCUSR_Addr;
   pragma Volatile (MCUSR);
   PORF : constant MCUSR_Type := 2**0;
   EXTRF : constant MCUSR_Type := 2**1;
   BORF : constant MCUSR_Type := 2**2;
   WDRF : constant MCUSR_Type := 2**3;

   MCUCR_Addr : constant := 16#55#;
   type MCUCR_Type is mod 256;
   MCUCR : MCUCR_Type;
   for MCUCR'Address use MCUCR_Addr;
   pragma Volatile (MCUCR);
   IVCE : constant MCUCR_Type := 2**0;
   IVSEL : constant MCUCR_Type := 2**1;
   PUD : constant MCUCR_Type := 2**4;
   BODSE : constant MCUCR_Type := 2**5;
   BODS : constant MCUCR_Type := 2**6;

   SPMCSR_Addr : constant := 16#57#;
   type SPMCSR_Type is mod 256;
   SPMCSR : SPMCSR_Type;
   for SPMCSR'Address use SPMCSR_Addr;
   pragma Volatile (SPMCSR);
   SELFPRGEN : constant SPMCSR_Type := 2**0;
   PGERS : constant SPMCSR_Type := 2**1;
   PGWRT : constant SPMCSR_Type := 2**2;
   BLBSET : constant SPMCSR_Type := 2**3;
   RWWSRE : constant SPMCSR_Type := 2**4;
   RWWSB : constant SPMCSR_Type := 2**6;
   SPMIE : constant SPMCSR_Type := 2**7;

   WDTCSR_Addr : constant := 16#60#;
   type WDTCSR_Type is mod 256;
   WDTCSR : WDTCSR_Type;
   for WDTCSR'Address use WDTCSR_Addr;
   pragma Volatile (WDTCSR);
   WDP0 : constant WDTCSR_Type := 2**0;
   WDP1 : constant WDTCSR_Type := 2**1;
   WDP2 : constant WDTCSR_Type := 2**2;
   WDE : constant WDTCSR_Type := 2**3;
   WDCE : constant WDTCSR_Type := 2**4;
   WDP3 : constant WDTCSR_Type := 2**5;
   WDIE : constant WDTCSR_Type := 2**6;
   WDIF : constant WDTCSR_Type := 2**7;

   CLKPR_Addr : constant := 16#61#;
   type CLKPR_Type is mod 256;
   CLKPR : CLKPR_Type;
   for CLKPR'Address use CLKPR_Addr;
   pragma Volatile (CLKPR);
   CLKPS0 : constant CLKPR_Type := 2**0;
   CLKPS1 : constant CLKPR_Type := 2**1;
   CLKPS2 : constant CLKPR_Type := 2**2;
   CLKPS3 : constant CLKPR_Type := 2**3;
   CLKPCE : constant CLKPR_Type := 2**7;

   PRR_Addr : constant := 16#64#;
   type PRR_Type is mod 256;
   PRR : PRR_Type;
   for PRR'Address use PRR_Addr;
   pragma Volatile (PRR);
   PRADC : constant PRR_Type := 2**0;
   PRUSART0 : constant PRR_Type := 2**1;
   PRSPI : constant PRR_Type := 2**2;
   PRTIM1 : constant PRR_Type := 2**3;
   PRTIM0 : constant PRR_Type := 2**5;
   PRTIM2 : constant PRR_Type := 2**6;
   PRTWI : constant PRR_Type := 2**7;

   OSCCAL_Addr : constant := 16#66#;
   type OSCCAL_Type is mod 256;
   OSCCAL : OSCCAL_Type;
   for OSCCAL'Address use OSCCAL_Addr;
   pragma Volatile (OSCCAL);
   CAL0 : constant OSCCAL_Type := 2**0;
   CAL1 : constant OSCCAL_Type := 2**1;
   CAL2 : constant OSCCAL_Type := 2**2;
   CAL3 : constant OSCCAL_Type := 2**3;
   CAL4 : constant OSCCAL_Type := 2**4;
   CAL5 : constant OSCCAL_Type := 2**5;
   CAL6 : constant OSCCAL_Type := 2**6;
   CAL7 : constant OSCCAL_Type := 2**7;

   PCICR_Addr : constant := 16#68#;
   type PCICR_Type is mod 256;
   PCICR : PCICR_Type;
   for PCICR'Address use PCICR_Addr;
   pragma Volatile (PCICR);
   PCIE0 : constant PCICR_Type := 2**0;
   PCIE1 : constant PCICR_Type := 2**1;
   PCIE2 : constant PCICR_Type := 2**2;

   EICRA_Addr : constant := 16#69#;
   type EICRA_Type is mod 256;
   EICRA : EICRA_Type;
   for EICRA'Address use EICRA_Addr;
   pragma Volatile (EICRA);
   ISC00 : constant EICRA_Type := 2**0;
   ISC01 : constant EICRA_Type := 2**1;
   ISC10 : constant EICRA_Type := 2**2;
   ISC11 : constant EICRA_Type := 2**3;

   PCMSK0_Addr : constant := 16#6B#;
   type PCMSK0_Type is mod 256;
   PCMSK0 : PCMSK0_Type;
   for PCMSK0'Address use PCMSK0_Addr;
   pragma Volatile (PCMSK0);
   PCINT0 : constant PCMSK0_Type := 2**0;
   PCINT1 : constant PCMSK0_Type := 2**1;
   PCINT2 : constant PCMSK0_Type := 2**2;
   PCINT3 : constant PCMSK0_Type := 2**3;
   PCINT4 : constant PCMSK0_Type := 2**4;
   PCINT5 : constant PCMSK0_Type := 2**5;
   PCINT6 : constant PCMSK0_Type := 2**6;
   PCINT7 : constant PCMSK0_Type := 2**7;

   PCMSK1_Addr : constant := 16#6C#;
   type PCMSK1_Type is mod 256;
   PCMSK1 : PCMSK1_Type;
   for PCMSK1'Address use PCMSK1_Addr;
   pragma Volatile (PCMSK1);
   PCINT8 : constant PCMSK1_Type := 2**0;
   PCINT9 : constant PCMSK1_Type := 2**1;
   PCINT10 : constant PCMSK1_Type := 2**2;
   PCINT11 : constant PCMSK1_Type := 2**3;
   PCINT12 : constant PCMSK1_Type := 2**4;
   PCINT13 : constant PCMSK1_Type := 2**5;
   PCINT14 : constant PCMSK1_Type := 2**6;

   PCMSK2_Addr : constant := 16#6D#;
   type PCMSK2_Type is mod 256;
   PCMSK2 : PCMSK2_Type;
   for PCMSK2'Address use PCMSK2_Addr;
   pragma Volatile (PCMSK2);
   PCINT16 : constant PCMSK2_Type := 2**0;
   PCINT17 : constant PCMSK2_Type := 2**1;
   PCINT18 : constant PCMSK2_Type := 2**2;
   PCINT19 : constant PCMSK2_Type := 2**3;
   PCINT20 : constant PCMSK2_Type := 2**4;
   PCINT21 : constant PCMSK2_Type := 2**5;
   PCINT22 : constant PCMSK2_Type := 2**6;
   PCINT23 : constant PCMSK2_Type := 2**7;

   TIMSK0_Addr : constant := 16#6E#;
   type TIMSK0_Type is mod 256;
   TIMSK0 : TIMSK0_Type;
   for TIMSK0'Address use TIMSK0_Addr;
   pragma Volatile (TIMSK0);
   TOIE0 : constant TIMSK0_Type := 2**0;
   OCIE0A : constant TIMSK0_Type := 2**1;
   OCIE0B : constant TIMSK0_Type := 2**2;

   TIMSK1_Addr : constant := 16#6F#;
   type TIMSK1_Type is mod 256;
   TIMSK1 : TIMSK1_Type;
   for TIMSK1'Address use TIMSK1_Addr;
   pragma Volatile (TIMSK1);
   TOIE1 : constant TIMSK1_Type := 2**0;
   OCIE1A : constant TIMSK1_Type := 2**1;
   OCIE1B : constant TIMSK1_Type := 2**2;
   ICIE1 : constant TIMSK1_Type := 2**5;

   TIMSK2_Addr : constant := 16#70#;
   type TIMSK2_Type is mod 256;
   TIMSK2 : TIMSK2_Type;
   for TIMSK2'Address use TIMSK2_Addr;
   pragma Volatile (TIMSK2);
   TOIE2 : constant TIMSK2_Type := 2**0;
   OCIE2A : constant TIMSK2_Type := 2**1;
   OCIE2B : constant TIMSK2_Type := 2**2;

   ADC_Addr : constant := 16#78#;
   ADCL_Addr : constant := 16#78#;
   type ADCL_Type is mod 256;
   ADCL : ADCL_Type;
   for ADCL'Address use ADCL_Addr;
   pragma Volatile (ADCL);
   ADCL0 : constant ADCL_Type := 2**0;
   ADCL1 : constant ADCL_Type := 2**1;
   ADCL2 : constant ADCL_Type := 2**2;
   ADCL3 : constant ADCL_Type := 2**3;
   ADCL4 : constant ADCL_Type := 2**4;
   ADCL5 : constant ADCL_Type := 2**5;
   ADCL6 : constant ADCL_Type := 2**6;
   ADCL7 : constant ADCL_Type := 2**7;

   ADCH_Addr : constant := 16#79#;
   type ADCH_Type is mod 256;
   ADCH : ADCH_Type;
   for ADCH'Address use ADCH_Addr;
   pragma Volatile (ADCH);
   ADCH0 : constant ADCH_Type := 2**0;
   ADCH1 : constant ADCH_Type := 2**1;
   ADCH2 : constant ADCH_Type := 2**2;
   ADCH3 : constant ADCH_Type := 2**3;
   ADCH4 : constant ADCH_Type := 2**4;
   ADCH5 : constant ADCH_Type := 2**5;
   ADCH6 : constant ADCH_Type := 2**6;
   ADCH7 : constant ADCH_Type := 2**7;

   ADCSRA_Addr : constant := 16#7A#;
   type ADCSRA_Type is mod 256;
   ADCSRA : ADCSRA_Type;
   for ADCSRA'Address use ADCSRA_Addr;
   pragma Volatile (ADCSRA);
   ADPS0 : constant ADCSRA_Type := 2**0;
   ADPS1 : constant ADCSRA_Type := 2**1;
   ADPS2 : constant ADCSRA_Type := 2**2;
   ADIE : constant ADCSRA_Type := 2**3;
   ADIF : constant ADCSRA_Type := 2**4;
   ADATE : constant ADCSRA_Type := 2**5;
   ADSC : constant ADCSRA_Type := 2**6;
   ADEN : constant ADCSRA_Type := 2**7;

   ADCSRB_Addr : constant := 16#7B#;
   type ADCSRB_Type is mod 256;
   ADCSRB : ADCSRB_Type;
   for ADCSRB'Address use ADCSRB_Addr;
   pragma Volatile (ADCSRB);
   ADTS0 : constant ADCSRB_Type := 2**0;
   ADTS1 : constant ADCSRB_Type := 2**1;
   ADTS2 : constant ADCSRB_Type := 2**2;
   ACME : constant ADCSRB_Type := 2**6;

   ADMUX_Addr : constant := 16#7C#;
   type ADMUX_Type is mod 256;
   ADMUX : ADMUX_Type;
   for ADMUX'Address use ADMUX_Addr;
   pragma Volatile (ADMUX);
   MUX0 : constant ADMUX_Type := 2**0;
   MUX1 : constant ADMUX_Type := 2**1;
   MUX2 : constant ADMUX_Type := 2**2;
   MUX3 : constant ADMUX_Type := 2**3;
   ADLAR : constant ADMUX_Type := 2**5;
   REFS0 : constant ADMUX_Type := 2**6;
   REFS1 : constant ADMUX_Type := 2**7;

   DIDR0_Addr : constant := 16#7E#;
   type DIDR0_Type is mod 256;
   DIDR0 : DIDR0_Type;
   for DIDR0'Address use DIDR0_Addr;
   pragma Volatile (DIDR0);
   ADC0D : constant DIDR0_Type := 2**0;
   ADC1D : constant DIDR0_Type := 2**1;
   ADC2D : constant DIDR0_Type := 2**2;
   ADC3D : constant DIDR0_Type := 2**3;
   ADC4D : constant DIDR0_Type := 2**4;
   ADC5D : constant DIDR0_Type := 2**5;

   DIDR1_Addr : constant := 16#7F#;
   type DIDR1_Type is mod 256;
   DIDR1 : DIDR1_Type;
   for DIDR1'Address use DIDR1_Addr;
   pragma Volatile (DIDR1);
   AIN0D : constant DIDR1_Type := 2**0;
   AIN1D : constant DIDR1_Type := 2**1;

   TCCR1A_Addr : constant := 16#80#;
   type TCCR1A_Type is mod 256;
   TCCR1A : TCCR1A_Type;
   for TCCR1A'Address use TCCR1A_Addr;
   pragma Volatile (TCCR1A);
   WGM10 : constant TCCR1A_Type := 2**0;
   WGM11 : constant TCCR1A_Type := 2**1;
   COM1B0 : constant TCCR1A_Type := 2**4;
   COM1B1 : constant TCCR1A_Type := 2**5;
   COM1A0 : constant TCCR1A_Type := 2**6;
   COM1A1 : constant TCCR1A_Type := 2**7;

   TCCR1B_Addr : constant := 16#81#;
   type TCCR1B_Type is mod 256;
   TCCR1B : TCCR1B_Type;
   for TCCR1B'Address use TCCR1B_Addr;
   pragma Volatile (TCCR1B);
   CS10 : constant TCCR1B_Type := 2**0;
   CS11 : constant TCCR1B_Type := 2**1;
   CS12 : constant TCCR1B_Type := 2**2;
   WGM12 : constant TCCR1B_Type := 2**3;
   WGM13 : constant TCCR1B_Type := 2**4;
   ICES1 : constant TCCR1B_Type := 2**6;
   ICNC1 : constant TCCR1B_Type := 2**7;

   TCCR1C_Addr : constant := 16#82#;
   type TCCR1C_Type is mod 256;
   TCCR1C : TCCR1C_Type;
   for TCCR1C'Address use TCCR1C_Addr;
   pragma Volatile (TCCR1C);
   FOC1B : constant TCCR1C_Type := 2**6;
   FOC1A : constant TCCR1C_Type := 2**7;

   TCNT1_Addr : constant := 16#84#;
   TCNT1L_Addr : constant := 16#84#;
   type TCNT1L_Type is mod 256;
   TCNT1L : TCNT1L_Type;
   for TCNT1L'Address use TCNT1L_Addr;
   pragma Volatile (TCNT1L);
   TCNT1L0 : constant TCNT1L_Type := 2**0;
   TCNT1L1 : constant TCNT1L_Type := 2**1;
   TCNT1L2 : constant TCNT1L_Type := 2**2;
   TCNT1L3 : constant TCNT1L_Type := 2**3;
   TCNT1L4 : constant TCNT1L_Type := 2**4;
   TCNT1L5 : constant TCNT1L_Type := 2**5;
   TCNT1L6 : constant TCNT1L_Type := 2**6;
   TCNT1L7 : constant TCNT1L_Type := 2**7;

   TCNT1H_Addr : constant := 16#85#;
   type TCNT1H_Type is mod 256;
   TCNT1H : TCNT1H_Type;
   for TCNT1H'Address use TCNT1H_Addr;
   pragma Volatile (TCNT1H);
   TCNT1H0 : constant TCNT1H_Type := 2**0;
   TCNT1H1 : constant TCNT1H_Type := 2**1;
   TCNT1H2 : constant TCNT1H_Type := 2**2;
   TCNT1H3 : constant TCNT1H_Type := 2**3;
   TCNT1H4 : constant TCNT1H_Type := 2**4;
   TCNT1H5 : constant TCNT1H_Type := 2**5;
   TCNT1H6 : constant TCNT1H_Type := 2**6;
   TCNT1H7 : constant TCNT1H_Type := 2**7;

   ICR1_Addr : constant := 16#86#;
   ICR1L_Addr : constant := 16#86#;
   type ICR1L_Type is mod 256;
   ICR1L : ICR1L_Type;
   for ICR1L'Address use ICR1L_Addr;
   pragma Volatile (ICR1L);
   ICR1L0 : constant ICR1L_Type := 2**0;
   ICR1L1 : constant ICR1L_Type := 2**1;
   ICR1L2 : constant ICR1L_Type := 2**2;
   ICR1L3 : constant ICR1L_Type := 2**3;
   ICR1L4 : constant ICR1L_Type := 2**4;
   ICR1L5 : constant ICR1L_Type := 2**5;
   ICR1L6 : constant ICR1L_Type := 2**6;
   ICR1L7 : constant ICR1L_Type := 2**7;

   ICR1H_Addr : constant := 16#87#;
   type ICR1H_Type is mod 256;
   ICR1H : ICR1H_Type;
   for ICR1H'Address use ICR1H_Addr;
   pragma Volatile (ICR1H);
   ICR1H0 : constant ICR1H_Type := 2**0;
   ICR1H1 : constant ICR1H_Type := 2**1;
   ICR1H2 : constant ICR1H_Type := 2**2;
   ICR1H3 : constant ICR1H_Type := 2**3;
   ICR1H4 : constant ICR1H_Type := 2**4;
   ICR1H5 : constant ICR1H_Type := 2**5;
   ICR1H6 : constant ICR1H_Type := 2**6;
   ICR1H7 : constant ICR1H_Type := 2**7;

   OCR1A_Addr : constant := 16#88#;
   OCR1AL_Addr : constant := 16#88#;
   type OCR1AL_Type is mod 256;
   OCR1AL : OCR1AL_Type;
   for OCR1AL'Address use OCR1AL_Addr;
   pragma Volatile (OCR1AL);
   OCR1AL0 : constant OCR1AL_Type := 2**0;
   OCR1AL1 : constant OCR1AL_Type := 2**1;
   OCR1AL2 : constant OCR1AL_Type := 2**2;
   OCR1AL3 : constant OCR1AL_Type := 2**3;
   OCR1AL4 : constant OCR1AL_Type := 2**4;
   OCR1AL5 : constant OCR1AL_Type := 2**5;
   OCR1AL6 : constant OCR1AL_Type := 2**6;
   OCR1AL7 : constant OCR1AL_Type := 2**7;

   OCR1AH_Addr : constant := 16#89#;
   type OCR1AH_Type is mod 256;
   OCR1AH : OCR1AH_Type;
   for OCR1AH'Address use OCR1AH_Addr;
   pragma Volatile (OCR1AH);
   OCR1AH0 : constant OCR1AH_Type := 2**0;
   OCR1AH1 : constant OCR1AH_Type := 2**1;
   OCR1AH2 : constant OCR1AH_Type := 2**2;
   OCR1AH3 : constant OCR1AH_Type := 2**3;
   OCR1AH4 : constant OCR1AH_Type := 2**4;
   OCR1AH5 : constant OCR1AH_Type := 2**5;
   OCR1AH6 : constant OCR1AH_Type := 2**6;
   OCR1AH7 : constant OCR1AH_Type := 2**7;

   OCR1B_Addr : constant := 16#8A#;
   OCR1BL_Addr : constant := 16#8A#;
   type OCR1BL_Type is mod 256;
   OCR1BL : OCR1BL_Type;
   for OCR1BL'Address use OCR1BL_Addr;
   pragma Volatile (OCR1BL);
   OCR1BL0 : constant OCR1BL_Type := 2**0;
   OCR1BL1 : constant OCR1BL_Type := 2**1;
   OCR1BL2 : constant OCR1BL_Type := 2**2;
   OCR1BL3 : constant OCR1BL_Type := 2**3;
   OCR1BL4 : constant OCR1BL_Type := 2**4;
   OCR1BL5 : constant OCR1BL_Type := 2**5;
   OCR1BL6 : constant OCR1BL_Type := 2**6;
   OCR1BL7 : constant OCR1BL_Type := 2**7;

   OCR1BH_Addr : constant := 16#8B#;
   type OCR1BH_Type is mod 256;
   OCR1BH : OCR1BH_Type;
   for OCR1BH'Address use OCR1BH_Addr;
   pragma Volatile (OCR1BH);
   OCR1BH0 : constant OCR1BH_Type := 2**0;
   OCR1BH1 : constant OCR1BH_Type := 2**1;
   OCR1BH2 : constant OCR1BH_Type := 2**2;
   OCR1BH3 : constant OCR1BH_Type := 2**3;
   OCR1BH4 : constant OCR1BH_Type := 2**4;
   OCR1BH5 : constant OCR1BH_Type := 2**5;
   OCR1BH6 : constant OCR1BH_Type := 2**6;
   OCR1BH7 : constant OCR1BH_Type := 2**7;

   TCCR2A_Addr : constant := 16#B0#;
   type TCCR2A_Type is mod 256;
   TCCR2A : TCCR2A_Type;
   for TCCR2A'Address use TCCR2A_Addr;
   pragma Volatile (TCCR2A);
   WGM20 : constant TCCR2A_Type := 2**0;
   WGM21 : constant TCCR2A_Type := 2**1;
   COM2B0 : constant TCCR2A_Type := 2**4;
   COM2B1 : constant TCCR2A_Type := 2**5;
   COM2A0 : constant TCCR2A_Type := 2**6;
   COM2A1 : constant TCCR2A_Type := 2**7;

   TCCR2B_Addr : constant := 16#B1#;
   type TCCR2B_Type is mod 256;
   TCCR2B : TCCR2B_Type;
   for TCCR2B'Address use TCCR2B_Addr;
   pragma Volatile (TCCR2B);
   CS20 : constant TCCR2B_Type := 2**0;
   CS21 : constant TCCR2B_Type := 2**1;
   CS22 : constant TCCR2B_Type := 2**2;
   WGM22 : constant TCCR2B_Type := 2**3;
   FOC2B : constant TCCR2B_Type := 2**6;
   FOC2A : constant TCCR2B_Type := 2**7;

   TCNT2_Addr : constant := 16#B2#;
   type TCNT2_Type is mod 256;
   TCNT2 : TCNT2_Type;
   for TCNT2'Address use TCNT2_Addr;
   pragma Volatile (TCNT2);
   TCNT2_0 : constant TCNT2_Type := 2**0;
   TCNT2_1 : constant TCNT2_Type := 2**1;
   TCNT2_2 : constant TCNT2_Type := 2**2;
   TCNT2_3 : constant TCNT2_Type := 2**3;
   TCNT2_4 : constant TCNT2_Type := 2**4;
   TCNT2_5 : constant TCNT2_Type := 2**5;
   TCNT2_6 : constant TCNT2_Type := 2**6;
   TCNT2_7 : constant TCNT2_Type := 2**7;

   OCR2A_Addr : constant := 16#B3#;
   type OCR2A_Type is mod 256;
   OCR2A : OCR2A_Type;
   for OCR2A'Address use OCR2A_Addr;
   pragma Volatile (OCR2A);
   OCR2A_0 : constant OCR2A_Type := 2**0;
   OCR2A_1 : constant OCR2A_Type := 2**1;
   OCR2A_2 : constant OCR2A_Type := 2**2;
   OCR2A_3 : constant OCR2A_Type := 2**3;
   OCR2A_4 : constant OCR2A_Type := 2**4;
   OCR2A_5 : constant OCR2A_Type := 2**5;
   OCR2A_6 : constant OCR2A_Type := 2**6;
   OCR2A_7 : constant OCR2A_Type := 2**7;

   OCR2B_Addr : constant := 16#B4#;
   type OCR2B_Type is mod 256;
   OCR2B : OCR2B_Type;
   for OCR2B'Address use OCR2B_Addr;
   pragma Volatile (OCR2B);
   OCR2B_0 : constant OCR2B_Type := 2**0;
   OCR2B_1 : constant OCR2B_Type := 2**1;
   OCR2B_2 : constant OCR2B_Type := 2**2;
   OCR2B_3 : constant OCR2B_Type := 2**3;
   OCR2B_4 : constant OCR2B_Type := 2**4;
   OCR2B_5 : constant OCR2B_Type := 2**5;
   OCR2B_6 : constant OCR2B_Type := 2**6;
   OCR2B_7 : constant OCR2B_Type := 2**7;

   ASSR_Addr : constant := 16#B6#;
   type ASSR_Type is mod 256;
   ASSR : ASSR_Type;
   for ASSR'Address use ASSR_Addr;
   pragma Volatile (ASSR);
   TCR2BUB : constant ASSR_Type := 2**0;
   TCR2AUB : constant ASSR_Type := 2**1;
   OCR2BUB : constant ASSR_Type := 2**2;
   OCR2AUB : constant ASSR_Type := 2**3;
   TCN2UB : constant ASSR_Type := 2**4;
   AS2 : constant ASSR_Type := 2**5;
   EXCLK : constant ASSR_Type := 2**6;

   TWBR_Addr : constant := 16#B8#;
   type TWBR_Type is mod 256;
   TWBR : TWBR_Type;
   for TWBR'Address use TWBR_Addr;
   pragma Volatile (TWBR);
   TWBR0 : constant TWBR_Type := 2**0;
   TWBR1 : constant TWBR_Type := 2**1;
   TWBR2 : constant TWBR_Type := 2**2;
   TWBR3 : constant TWBR_Type := 2**3;
   TWBR4 : constant TWBR_Type := 2**4;
   TWBR5 : constant TWBR_Type := 2**5;
   TWBR6 : constant TWBR_Type := 2**6;
   TWBR7 : constant TWBR_Type := 2**7;

   TWSR_Addr : constant := 16#B9#;
   type TWSR_Type is mod 256;
   TWSR : TWSR_Type;
   for TWSR'Address use TWSR_Addr;
   pragma Volatile (TWSR);
   TWPS0 : constant TWSR_Type := 2**0;
   TWPS1 : constant TWSR_Type := 2**1;
   TWS3 : constant TWSR_Type := 2**3;
   TWS4 : constant TWSR_Type := 2**4;
   TWS5 : constant TWSR_Type := 2**5;
   TWS6 : constant TWSR_Type := 2**6;
   TWS7 : constant TWSR_Type := 2**7;

   TWAR_Addr : constant := 16#BA#;
   type TWAR_Type is mod 256;
   TWAR : TWAR_Type;
   for TWAR'Address use TWAR_Addr;
   pragma Volatile (TWAR);
   TWGCE : constant TWAR_Type := 2**0;
   TWA0 : constant TWAR_Type := 2**1;
   TWA1 : constant TWAR_Type := 2**2;
   TWA2 : constant TWAR_Type := 2**3;
   TWA3 : constant TWAR_Type := 2**4;
   TWA4 : constant TWAR_Type := 2**5;
   TWA5 : constant TWAR_Type := 2**6;
   TWA6 : constant TWAR_Type := 2**7;

   TWDR_Addr : constant := 16#BB#;
   type TWDR_Type is mod 256;
   TWDR : TWDR_Type;
   for TWDR'Address use TWDR_Addr;
   pragma Volatile (TWDR);
   TWD0 : constant TWDR_Type := 2**0;
   TWD1 : constant TWDR_Type := 2**1;
   TWD2 : constant TWDR_Type := 2**2;
   TWD3 : constant TWDR_Type := 2**3;
   TWD4 : constant TWDR_Type := 2**4;
   TWD5 : constant TWDR_Type := 2**5;
   TWD6 : constant TWDR_Type := 2**6;
   TWD7 : constant TWDR_Type := 2**7;

   TWCR_Addr : constant := 16#BC#;
   type TWCR_Type is mod 256;
   TWCR : TWCR_Type;
   for TWCR'Address use TWCR_Addr;
   pragma Volatile (TWCR);
   TWIE : constant TWCR_Type := 2**0;
   TWEN : constant TWCR_Type := 2**2;
   TWWC : constant TWCR_Type := 2**3;
   TWSTO : constant TWCR_Type := 2**4;
   TWSTA : constant TWCR_Type := 2**5;
   TWEA : constant TWCR_Type := 2**6;
   TWINT : constant TWCR_Type := 2**7;

   TWAMR_Addr : constant := 16#BD#;
   type TWAMR_Type is mod 256;
   TWAMR : TWAMR_Type;
   for TWAMR'Address use TWAMR_Addr;
   pragma Volatile (TWAMR);
   TWAM0 : constant TWAMR_Type := 2**1;
   TWAM1 : constant TWAMR_Type := 2**2;
   TWAM2 : constant TWAMR_Type := 2**3;
   TWAM3 : constant TWAMR_Type := 2**4;
   TWAM4 : constant TWAMR_Type := 2**5;
   TWAM5 : constant TWAMR_Type := 2**6;
   TWAM6 : constant TWAMR_Type := 2**7;

   UCSR0A_Addr : constant := 16#C0#;
   type UCSR0A_Type is mod 256;
   UCSR0A : UCSR0A_Type;
   for UCSR0A'Address use UCSR0A_Addr;
   pragma Volatile (UCSR0A);
   MPCM0 : constant UCSR0A_Type := 2**0;
   U2X0 : constant UCSR0A_Type := 2**1;
   UPE0 : constant UCSR0A_Type := 2**2;
   DOR0 : constant UCSR0A_Type := 2**3;
   FE0 : constant UCSR0A_Type := 2**4;
   UDRE0 : constant UCSR0A_Type := 2**5;
   TXC0 : constant UCSR0A_Type := 2**6;
   RXC0 : constant UCSR0A_Type := 2**7;

   UCSR0B_Addr : constant := 16#C1#;
   type UCSR0B_Type is mod 256;
   UCSR0B : UCSR0B_Type;
   for UCSR0B'Address use UCSR0B_Addr;
   pragma Volatile (UCSR0B);
   TXB80 : constant UCSR0B_Type := 2**0;
   RXB80 : constant UCSR0B_Type := 2**1;
   UCSZ02 : constant UCSR0B_Type := 2**2;
   TXEN0 : constant UCSR0B_Type := 2**3;
   RXEN0 : constant UCSR0B_Type := 2**4;
   UDRIE0 : constant UCSR0B_Type := 2**5;
   TXCIE0 : constant UCSR0B_Type := 2**6;
   RXCIE0 : constant UCSR0B_Type := 2**7;

   UCSR0C_Addr : constant := 16#C2#;
   type UCSR0C_Type is mod 256;
   UCSR0C : UCSR0C_Type;
   for UCSR0C'Address use UCSR0C_Addr;
   pragma Volatile (UCSR0C);
   UCPOL0 : constant UCSR0C_Type := 2**0;
   UCSZ00 : constant UCSR0C_Type := 2**1;
   UCSZ01 : constant UCSR0C_Type := 2**2;
   USBS0 : constant UCSR0C_Type := 2**3;
   UPM00 : constant UCSR0C_Type := 2**4;
   UPM01 : constant UCSR0C_Type := 2**5;
   UMSEL00 : constant UCSR0C_Type := 2**6;
   UMSEL01 : constant UCSR0C_Type := 2**7;

   UBRR0_Addr : constant := 16#C4#;
   UBRR0L_Addr : constant := 16#C4#;
   type UBRR0L_Type is mod 256;
   UBRR0L : UBRR0L_Type;
   for UBRR0L'Address use UBRR0L_Addr;
   pragma Volatile (UBRR0L);
   B_UBRR0 : constant UBRR0L_Type := 2**0;
   B_UBRR1 : constant UBRR0L_Type := 2**1;
   UBRR2 : constant UBRR0L_Type := 2**2;
   UBRR3 : constant UBRR0L_Type := 2**3;
   UBRR4 : constant UBRR0L_Type := 2**4;
   UBRR5 : constant UBRR0L_Type := 2**5;
   UBRR6 : constant UBRR0L_Type := 2**6;
   UBRR7 : constant UBRR0L_Type := 2**7;

   UBRR0H_Addr : constant := 16#C5#;
   type UBRR0H_Type is mod 256;
   UBRR0H : UBRR0H_Type;
   for UBRR0H'Address use UBRR0H_Addr;
   pragma Volatile (UBRR0H);
   UBRR8 : constant UBRR0H_Type := 2**0;
   UBRR9 : constant UBRR0H_Type := 2**1;
   UBRR10 : constant UBRR0H_Type := 2**2;
   UBRR11 : constant UBRR0H_Type := 2**3;

   UDR0_Addr : constant := 16#C6#;
   type UDR0_Type is mod 256;
   UDR0 : UDR0_Type;
   for UDR0'Address use UDR0_Addr;
   pragma Volatile (UDR0);
   UDR0_0 : constant UDR0_Type := 2**0;
   UDR0_1 : constant UDR0_Type := 2**1;
   UDR0_2 : constant UDR0_Type := 2**2;
   UDR0_3 : constant UDR0_Type := 2**3;
   UDR0_4 : constant UDR0_Type := 2**4;
   UDR0_5 : constant UDR0_Type := 2**5;
   UDR0_6 : constant UDR0_Type := 2**6;
   UDR0_7 : constant UDR0_Type := 2**7;

end AVR.MCU;