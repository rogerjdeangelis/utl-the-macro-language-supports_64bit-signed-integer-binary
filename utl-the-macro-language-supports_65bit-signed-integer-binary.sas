It looks like the macro language supports 65bit signed integer binary                       
                                                                                            
I have two  64bit integers with 19 digits. The difference between these numbers can         
be represented exactly in a SAS 64bit float. The difference is an index into a SAS array.   
                                                                                            
PROBLEM                                                                                     
                                                                                            
                                                                                            
%let pgm=utl sas macro language supports 64bit signed integer binary;                       
                                                                                            
INPUT (19 digits)                                                                           
=================                                                                           
                                                                                            
    8223372036854775900                                                                     
   -8223372036854775420                                                                     
   --------------------                                                                     
                    480                                                                     
                                                                                            
Problem                                                                                     
=======                                                                                     
                                                                                            
   data want;                                                                               
     dif = 8223372036854775900 - 8223372036854775420;                                       
     put dif=;                                                                              
   run;quit;                                                                                
                                                                                            
   DIF=2048                                                                                 
                                                                                            
SOLUTION                                                                                    
========                                                                                    
                                                                                            
   %put dif = %eval(8223372036854775900 - 8223372036854775420);                             
                                                                                            
   dif = 480                                                                                
                                                                                            
