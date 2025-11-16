module eg;
  bit[0:2][0:1][0:7]m_data;
  initial begin
    m_data=48'hcafe_face_0708;
    foreach(m_data[i])begin
      $display("m_data[%0d]=%0h",i,m_data[i]);
      foreach(m_data[i,j])begin
        $display("m_data[%0d][%0d]=%0h",i,j,m_data[i][j]);
      end
    end
  end
endmodule
