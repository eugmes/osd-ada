package AVR.Interrupts is
   pragma Pure;

   procedure Enable;
   pragma Import (Intrinsic, Enable, "__builtin_avr_sei");

   procedure Disable;
   pragma Import (Intrinsic, Disable, "__builtin_avr_cli");
end AVR.Interrupts;
