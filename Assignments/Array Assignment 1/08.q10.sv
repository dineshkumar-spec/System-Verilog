module string_eg;
  //a. declare a string data type and assign it to“SystemVerilog”
  string s1 = "SystemVerilog";string s2;int ascii;
  initial begin
    //b. use the getc() method to display the ASCII value of the first character of this string
    ascii = s1.getc(0);$display("Ascii value is %0d",ascii);
    //c. use toupper() method to display the string in capital letter
    $display("%s",s1.toupper());
    //d. concatenate the string with string “3.1a” and display
    s1={s1,"3.1a"}; $display(s1);
    //e. replace the last character in the string with character ‘b’ using len() method and display
    s1.putc(s1.len()-1,"b");$display(s1);
    //f. use substr() method to display substring from 2nd to 5th character
    $display(s1.substr(2,5));
  end
endmodule
