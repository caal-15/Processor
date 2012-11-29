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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *STD_TEXTIO;
char *IEEE_P_3039841270;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    ieee_p_3039841270_init();
    std_textio_init();
    work_a_1848479689_3212880686_init();
    work_a_1988079931_3212880686_init();
    work_a_1605830089_3212880686_init();
    work_a_4057961560_3212880686_init();
    work_a_0597915860_3212880686_init();
    work_a_1446531093_3212880686_init();
    work_a_3832242238_3212880686_init();
    work_a_1567521128_3212880686_init();
    work_a_1601861438_3212880686_init();
    work_a_1991427020_3212880686_init();
    work_a_3638186589_3212880686_init();
    work_a_0623094312_3212880686_init();
    work_a_2806367638_3212880686_init();
    work_a_2521819606_4277552640_init();
    work_a_3464020208_3212880686_init();
    work_a_1501097378_3212880686_init();
    work_a_1768082322_3212880686_init();
    work_a_1585446616_3121716285_init();
    work_a_1640669797_3212880686_init();
    work_a_2905102280_2372691052_init();


    xsi_register_tops("work_a_2905102280_2372691052");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3039841270 = xsi_get_engine_memory("ieee_p_3039841270");

    return xsi_run_simulation(argc, argv);

}
