/* Następujące zmienne są zdefiniowane w skrypcie konsolidatora. */
extern unsigned long _sidata;   /* pierwsze 4 bajty danych
                                   inicjowanych w FLASH */
extern unsigned long _sdata;    /* pierwsze 4 bajty danych
                                   inicjowanych w RAM */
extern unsigned long _edata;    /* 4 bajty tuż za danymi
                                   inicjowanymi w RAM */
extern unsigned long _sbss;     /* pierwsze 4 bajty danych
                                   nieinicjowanych w RAM */
extern unsigned long _ebss;     /* 4 bajty tuż za danymi
                                   nieinicjowanymi w RAM */
extern unsigned long _estack;   /* początkowy wierzchołek stosu */

/* Deklaracja głównej funkcji programu */
int main(void);

/* Domyślna procedura obsługi przerwania - nieoczekiwane
   przerwanie zawiesza mikrokontroler. */
static void Default_Handler(void) {
  for (;;);
}

/* Procedura wołana po wyzerowaniu mikrokontrolera */
static void Reset_Handler(void) {
  unsigned long *src, *dst;
  /* Kopiuj dane inicjowane z FLASH do RAM. */
  for (dst = &_sdata, src = &_sidata; dst < &_edata; ++dst, ++src)
    *dst = *src;
  /* Zeruj dane nieinicjowane. */
  for (dst = &_sbss; dst < &_ebss; ++dst)
    *dst = 0;
  /* Wołaj główną funkcję programu - zwykle nigdy nie wraca. */
  main();
  /* Gdyby jednak nastąpił powrót, kręć się w kółko. */
  for (;;);
}


#define WEAK __attribute__ ((weak, alias("Default_Handler")))

/* Interrupt handler declarations */
WEAK void NMI_Handler(void);
WEAK void HardFault_Handler(void);
WEAK void MemManage_Handler(void);
WEAK void BusFault_Handler(void);
WEAK void UsageFault_Handler(void);
WEAK void SVC_Handler(void);
WEAK void DebugMon_Handler(void);
WEAK void PendSV_Handler(void);
WEAK void SysTick_Handler(void);

/* Interrupt table */
__attribute__ ((section(".isr_vector")))
void (* const g_pfnVectors[])(void) = {
  (void*)&_estack,
  Reset_Handler,
  NMI_Handler,
  HardFault_Handler,
  MemManage_Handler,
  BusFault_Handler,
  UsageFault_Handler,
  0,
  0,
  0,
  0,
  SVC_Handler,
  DebugMon_Handler,
  0,
  PendSV_Handler,
  SysTick_Handler,
};


