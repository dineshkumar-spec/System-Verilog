// Check string is a palindrome
module palindrome;
  string s = "Dineshkumar";
  string rev = "";
  int i;
  initial begin
    for(i=s.len()-1;i>=0;i--)begin
      rev = {rev,s[i]};
    end
    $display("Given string :%s\n Reversed string:%s",s,rev);
    if(rev==s)$display("Its a palindrome ");
    else $display("Its not a palindrome");
  end
endmodule
