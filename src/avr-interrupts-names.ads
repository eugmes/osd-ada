package AVR.Interrupts.Names is
   pragma Pure;

   INT0         : constant String := "__vector_1";
   INT1         : constant String := "__vector_2";
   PCINT0       : constant String := "__vector_3";
   PCINT1       : constant String := "__vector_4";
   PCINT2       : constant String := "__vector_5";
   WDT          : constant String := "__vector_6";
   TIMER2_COMPA : constant String := "__vector_7";
   TIMER2_COMPB : constant String := "__vector_8";
   TIMER2_OVF   : constant String := "__vector_9";
   TIMER1_CAPT  : constant String := "__vector_10";
   TIMER1_COMPA : constant String := "__vector_11";
   TIMER1_COMPB : constant String := "__vector_12";
   TIMER1_OVF   : constant String := "__vector_13";
   TIMER0_COMPA : constant String := "__vector_14";
   TIMER0_COMPB : constant String := "__vector_15";
   TIMER0_OVF   : constant String := "__vector_16";
   SPI_STC      : constant String := "__vector_17";
   USART_RX     : constant String := "__vector_18";
   USART_UDRE   : constant String := "__vector_19";
   USART_TX     : constant String := "__vector_20";
   ADC          : constant String := "__vector_21";
   EE_READY     : constant String := "__vector_22";
   ANALOG_COMP  : constant String := "__vector_23";
   TWI          : constant String := "__vector_24";
   SPM_READY    : constant String := "__vector_25";
end AVR.Interrupts.Names;
