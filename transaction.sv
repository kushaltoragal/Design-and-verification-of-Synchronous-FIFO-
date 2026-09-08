class transaction; 
  rand bit oper;          
  bit rd, wr;            
  bit [7:0] data_in;      
  bit full, empty;        // Flags for full and empty status
  bit [7:0] data_out;     
  
  constraint oper_ctrl {  
    oper dist {1 :/ 50 , 0 :/ 50};  // Constraint to randomize 'oper' with 50% probability of 1 and 50% probability of 0
  }
  
endclass
