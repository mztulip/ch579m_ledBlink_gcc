
extern unsigned long _sidata;   
extern unsigned long _sdata;   
extern unsigned long _edata;   
extern unsigned long _sbss;    
extern unsigned long _ebss;     
extern unsigned long _estack; 

int main(void);


static void Default_Handler(void) {
  for (;;);
}

static void Reset_Handler(void) {
  unsigned long *src, *dst;

  for (dst = &_sdata, src = &_sidata; dst < &_edata; ++dst, ++src)
    *dst = *src;
 
  for (dst = &_sbss; dst < &_ebss; ++dst)
    *dst = 0;
  main();
  for (;;);
}

#define WEAK __attribute__ ((weak, alias("Default_Handler")))

WEAK void NMI_Handler(void);
WEAK void HardFault_Handler(void);
WEAK void MemManage_Handler(void);
WEAK void BusFault_Handler(void);
WEAK void UsageFault_Handler(void);
WEAK void SVC_Handler(void);
WEAK void DebugMon_Handler(void);
WEAK void PendSV_Handler(void);
WEAK void SysTick_Handler(void);

__attribute__ ((section(".isr_vector")))
void (* const interrupt_vectors[])(void) = {
  (void*)&_estack,
  Reset_Handler,
  NMI_Handler,
  HardFault_Handler,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  SVC_Handler,
  0,
  0,
  PendSV_Handler,
  SysTick_Handler,
  TMR0_IRQHandler,
  GPIO_IRQHandler,
  SLAVE_IRQHandler,
  SPI0_IRQHandler,
  BB_IRQHandler,
  LLE_IRQHandler,
  USB_IRQHandler,
  ETH_IRQHandler,
  TMR1_IRQHandler,
  TMR2_IRQHandler,
  UART0_IRQHandler,
  UART1_IRQHandler,
  RTC_IRQHandler,
  ADC_IRQHandler,
  SPI1_IRQHandler,
  LED_IRQHandler,
  TMR3_IRQHandler,
  UART2_IRQHandler,
  UART3_IRQHandler,
  WDT_IRQHandler,
};


