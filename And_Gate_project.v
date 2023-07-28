module And_Gate_Project( i_Switch_1, i_Switch_2, i_Switch_3, i_Switch_4, o_LED_1, o_LED_2);
    input i_Switch_1, i_Switch_2, i_Switch_3, i_Switch_4;
    output o_LED_1, o_LED_2;

    assign o_LED_1 = i_Switch_1 || i_Switch_2;
    assign o_LED_2 = i_Switch_3 && i_Switch_4;


    endmodule
    