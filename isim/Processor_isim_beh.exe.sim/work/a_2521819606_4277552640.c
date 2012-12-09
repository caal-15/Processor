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
static const char *ng0 = "F:/Documentos/Arquitectura/Processor/PSRModifier.vhd";



static void work_a_2521819606_4277552640_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned char t45;
    unsigned char t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5441);
    t3 = 1;
    if (32U == 32U)
        goto LAB8;

LAB9:    t3 = 0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 3392);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB6:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5473);
    t4 = 1;
    if (8U == 8U)
        goto LAB20;

LAB21:    t4 = 0;

LAB22:    if (t4 == 1)
        goto LAB17;

LAB18:    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t8 = (t0 + 5481);
    t14 = 1;
    if (8U == 8U)
        goto LAB26;

LAB27:    t14 = 0;

LAB28:    t3 = t14;

LAB19:    if (t3 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5489);
    t4 = 1;
    if (8U == 8U)
        goto LAB44;

LAB45:    t4 = 0;

LAB46:    if (t4 == 1)
        goto LAB41;

LAB42:    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t8 = (t0 + 5497);
    t14 = 1;
    if (8U == 8U)
        goto LAB50;

LAB51:    t14 = 0;

LAB52:    t3 = t14;

LAB43:    if (t3 != 0)
        goto LAB38;

LAB40:
LAB39:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 5437);
    t6 = (t0 + 3392);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(41, ng0);
    t8 = (t0 + 3392);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);
    goto LAB6;

LAB8:    t11 = 0;

LAB11:    if (t11 < 32U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t6 = (t2 + t11);
    t7 = (t1 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB9;

LAB13:    t11 = (t11 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(46, ng0);
    t17 = (t0 + 1192U);
    t18 = *((char **)t17);
    t19 = (31 - 31);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t17 = (t18 + t22);
    t23 = *((unsigned char *)t17);
    t24 = (t0 + 1352U);
    t25 = *((char **)t24);
    t26 = (31 - 31);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t24 = (t25 + t29);
    t30 = *((unsigned char *)t24);
    t31 = (t23 == t30);
    if (t31 == 1)
        goto LAB35;

LAB36:    t16 = (unsigned char)0;

LAB37:    if (t16 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3392);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3392);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);

LAB33:    goto LAB15;

LAB17:    t3 = (unsigned char)1;
    goto LAB19;

LAB20:    t11 = 0;

LAB23:    if (t11 < 8U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t6 = (t2 + t11);
    t7 = (t1 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB21;

LAB25:    t11 = (t11 + 1);
    goto LAB23;

LAB26:    t15 = 0;

LAB29:    if (t15 < 8U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t12 = (t9 + t15);
    t13 = (t8 + t15);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB27;

LAB31:    t15 = (t15 + 1);
    goto LAB29;

LAB32:    xsi_set_current_line(47, ng0);
    t47 = (t0 + 3392);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    *((unsigned char *)t51) = (unsigned char)3;
    xsi_driver_first_trans_delta(t47, 2U, 1, 0LL);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3392);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    goto LAB33;

LAB35:    t32 = (t0 + 1192U);
    t33 = *((char **)t32);
    t34 = (31 - 31);
    t35 = (t34 * -1);
    t36 = (1U * t35);
    t37 = (0 + t36);
    t32 = (t33 + t37);
    t38 = *((unsigned char *)t32);
    t39 = (t0 + 1672U);
    t40 = *((char **)t39);
    t41 = (31 - 31);
    t42 = (t41 * -1);
    t43 = (1U * t42);
    t44 = (0 + t43);
    t39 = (t40 + t44);
    t45 = *((unsigned char *)t39);
    t46 = (t38 != t45);
    t16 = t46;
    goto LAB37;

LAB38:    xsi_set_current_line(55, ng0);
    t17 = (t0 + 1192U);
    t18 = *((char **)t17);
    t19 = (31 - 31);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t17 = (t18 + t22);
    t23 = *((unsigned char *)t17);
    t24 = (t0 + 1352U);
    t25 = *((char **)t24);
    t26 = (31 - 31);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t24 = (t25 + t29);
    t30 = *((unsigned char *)t24);
    t31 = (t23 != t30);
    if (t31 == 1)
        goto LAB59;

LAB60:    t16 = (unsigned char)0;

LAB61:    if (t16 != 0)
        goto LAB56;

LAB58:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3392);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3392);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);

LAB57:    goto LAB39;

LAB41:    t3 = (unsigned char)1;
    goto LAB43;

LAB44:    t11 = 0;

LAB47:    if (t11 < 8U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t6 = (t2 + t11);
    t7 = (t1 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB45;

LAB49:    t11 = (t11 + 1);
    goto LAB47;

LAB50:    t15 = 0;

LAB53:    if (t15 < 8U)
        goto LAB54;
    else
        goto LAB52;

LAB54:    t12 = (t9 + t15);
    t13 = (t8 + t15);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB51;

LAB55:    t15 = (t15 + 1);
    goto LAB53;

LAB56:    xsi_set_current_line(56, ng0);
    t47 = (t0 + 3392);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    *((unsigned char *)t51) = (unsigned char)3;
    xsi_driver_first_trans_delta(t47, 2U, 1, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3392);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    goto LAB57;

LAB59:    t32 = (t0 + 1192U);
    t33 = *((char **)t32);
    t34 = (31 - 31);
    t35 = (t34 * -1);
    t36 = (1U * t35);
    t37 = (0 + t36);
    t32 = (t33 + t37);
    t38 = *((unsigned char *)t32);
    t39 = (t0 + 1672U);
    t40 = *((char **)t39);
    t41 = (31 - 31);
    t42 = (t41 * -1);
    t43 = (1U * t42);
    t44 = (0 + t43);
    t39 = (t40 + t44);
    t45 = *((unsigned char *)t39);
    t46 = (t38 != t45);
    t16 = t46;
    goto LAB61;

}


extern void work_a_2521819606_4277552640_init()
{
	static char *pe[] = {(void *)work_a_2521819606_4277552640_p_0};
	xsi_register_didat("work_a_2521819606_4277552640", "isim/Processor_isim_beh.exe.sim/work/a_2521819606_4277552640.didat");
	xsi_register_executes(pe);
}
