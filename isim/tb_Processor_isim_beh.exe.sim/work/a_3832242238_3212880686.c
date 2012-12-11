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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/Documentos/Electronica/Processor/DataMem_module.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3832242238_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 1)
        goto LAB8;

LAB9:    t6 = (unsigned char)0;

LAB10:    t1 = t6;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB13;

LAB14:    t1 = (unsigned char)0;

LAB15:    if (t1 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB18;

LAB19:    t1 = (unsigned char)0;

LAB20:    if (t1 != 0)
        goto LAB16;

LAB17:
LAB3:    t2 = (t0 + 3472);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t2 = xsi_get_transient_memory(32U);
    memset(t2, 0, 32U);
    t13 = t2;
    memset(t13, (unsigned char)2, 32U);
    t14 = (t0 + 3552);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t2, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (t0 + 1192U);
    t10 = *((char **)t2);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)2);
    t6 = t12;
    goto LAB10;

LAB11:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1512U);
    t10 = *((char **)t2);
    t2 = (t0 + 1672U);
    t13 = *((char **)t2);
    t2 = (t0 + 5916U);
    t19 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t2);
    t20 = (t19 - 0);
    t21 = (t20 * 1);
    t22 = (32U * t21);
    t23 = (0U + t22);
    t14 = (t0 + 3616);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t10, 32U);
    xsi_driver_first_trans_delta(t14, t23, 32U, 0LL);
    goto LAB3;

LAB13:    t2 = (t0 + 1192U);
    t7 = *((char **)t2);
    t6 = *((unsigned char *)t7);
    t8 = (t6 == (unsigned char)2);
    t1 = t8;
    goto LAB15;

LAB16:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1992U);
    t10 = *((char **)t2);
    t2 = (t0 + 1672U);
    t13 = *((char **)t2);
    t2 = (t0 + 5916U);
    t19 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t2);
    t20 = (t19 - 0);
    t21 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t19);
    t22 = (32U * t21);
    t23 = (0 + t22);
    t14 = (t10 + t23);
    t15 = (t0 + 3552);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t24 = *((char **)t18);
    memcpy(t24, t14, 32U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB3;

LAB18:    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t6 = *((unsigned char *)t7);
    t8 = (t6 == (unsigned char)2);
    t1 = t8;
    goto LAB20;

}


extern void work_a_3832242238_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3832242238_3212880686_p_0};
	xsi_register_didat("work_a_3832242238_3212880686", "isim/tb_Processor_isim_beh.exe.sim/work/a_3832242238_3212880686.didat");
	xsi_register_executes(pe);
}
