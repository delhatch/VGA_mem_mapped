
 add_fsm_encoding \
       {VGA_controller.gat_state} \
       { }  \
       {{00 00} {01 01} {10 10} {11 11} }

 add_fsm_encoding \
       {axi_fb_controller.m_axi_fb_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 101} {111 100} }
