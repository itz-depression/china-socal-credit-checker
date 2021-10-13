#include <stdio.h>
#include <psp2/ctrl.h>
#include "debugScreen.h"

#define printf psvDebugScreenPrintf

int main(int argc, char *argv[]) {

SceCtrlData pad;
uint32_t old_buttons, current_buttons, pressed_buttons;
int enter_button;
int sel;

psvDebugScreenInit();
psvDebugScreenSetFgColor(COLOR_WHITE);

sel = 0;
old_buttons = 0, current_buttons = 0, pressed_buttons = 0;


printf("Welcome to Scoal Credit Check.\n");
printf("Answer The Question To Determan Your Score:\n");
printf("\n");
printf("Is Taiwan A Contry.\n");
printf("press X for yes or O for no.\n");

  while (1) {
    sceCtrlPeekBufferPositive(0, &pad, 1);

    old_buttons = current_buttons;
    current_buttons = pad.buttons;
    pressed_buttons = current_buttons & ~old_buttons;

   if (pressed_buttons & SCE_CTRL_CROSS) { printf("SOCAL CREDIT SCORE NOW -999999.\n"); }
   if (pressed_buttons & SCE_CTRL_CIRCLE) { printf("SOCAL CREDIT SCORE NOW 999999.\n"); }
   if (pressed_buttons & SCE_CTRL_SQUARE) { psvDebugScreenClear(0x00000000); }

   sel = 0;
   sceKernelDelayThread(10 * 1000);
  }

}

