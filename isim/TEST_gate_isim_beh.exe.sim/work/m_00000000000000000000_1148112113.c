/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Things/Programming/uni/LogicCircuits/LabFour.v";
static const char *ng1 = "\n\nMy String\n\n";



static void Initial_7_0(char *t0)
{

LAB0:    xsi_set_current_line(7, ng0);

LAB2:    xsi_set_current_line(8, ng0);
    xsi_vlogfile_write(1, 0, 0, ng1, 1, t0);

LAB1:    return;
}


extern void work_m_00000000000000000000_1148112113_init()
{
	static char *pe[] = {(void *)Initial_7_0};
	xsi_register_didat("work_m_00000000000000000000_1148112113", "isim/TEST_gate_isim_beh.exe.sim/work/m_00000000000000000000_1148112113.didat");
	xsi_register_executes(pe);
}
