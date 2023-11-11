module decoder_2x4(en,a0,a1,y);
   input en,a0,a1;
   output reg [3:0]y;
   always @(en,a0,a1)
     begin
       if(en==1)
         begin
           if(a0==1'b0 & a1==1'b0) y=4'b0001;
           else if(a0==1'b0 & a1==1'b1) y=4'b0010;
           else if(a0==1'b1 & a1==1'b0) y=4'b0100;
           else if(a0==1'b1 & a1==1'b1) y=4'b1000;
           else y=4'bxxxx;
         end
       else
        y=4'b0000;
     end
endmodule
