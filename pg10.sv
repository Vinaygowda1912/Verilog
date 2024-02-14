module tri_st(en,i,o);
  input en,i;
  output o;
  asssign o=(~en)?i:1'bz;
endmodule
