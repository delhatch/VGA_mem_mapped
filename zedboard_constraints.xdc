# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"
# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN T22 [get_ports {LD[0]}];  # "LD0"
#set_property PACKAGE_PIN T21 [get_ports {LD[1]}];  # "LD1"
#set_property PACKAGE_PIN U22 [get_ports {LD[2]}];  # "LD2"
#set_property PACKAGE_PIN U21 [get_ports {LD[3]}];  # "LD3"
#set_property PACKAGE_PIN V22 [get_ports {LD[4]}];  # "LD4"
#set_property PACKAGE_PIN W22 [get_ports {LD[5]}];  # "LD5"
#set_property PACKAGE_PIN U19 [get_ports {LD[6]}];  # "LD6"
#set_property PACKAGE_PIN U14 [get_ports {LD[7]}];  # "LD7"
# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN P16 [get_ports {fire}];  # "BTNC"
#set_property PACKAGE_PIN R16 [get_ports {rst}];  # "BTND"
#set_property PACKAGE_PIN N15 [get_ports {btnL}];  # "BTNL"
#set_property PACKAGE_PIN R18 [get_ports {btnR}];  # "BTNR"
#set_property PACKAGE_PIN T18 [get_ports {startbtn}];  # "BTNU"
# ----------------------------------------------------------------------------
# VGA Output - Bank 33
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN Y21 [get_ports {VGA_B[0]}]
set_property PACKAGE_PIN Y20 [get_ports {VGA_B[1]}]
set_property PACKAGE_PIN AB20 [get_ports {VGA_B[2]}]
set_property PACKAGE_PIN AB19 [get_ports {VGA_B[3]}]
set_property PACKAGE_PIN AB22 [get_ports {VGA_G[0]}]
set_property PACKAGE_PIN AA22 [get_ports {VGA_G[1]}]
set_property PACKAGE_PIN AB21 [get_ports {VGA_G[2]}]
set_property PACKAGE_PIN AA21 [get_ports {VGA_G[3]}]
set_property PACKAGE_PIN AA19 [get_ports VGA_hSync]
set_property PACKAGE_PIN V20 [get_ports {VGA_R[0]}]
set_property PACKAGE_PIN U20 [get_ports {VGA_R[1]}]
set_property PACKAGE_PIN V19 [get_ports {VGA_R[2]}]
set_property PACKAGE_PIN V18 [get_ports {VGA_R[3]}]
set_property PACKAGE_PIN Y19 [get_ports VGA_vSync]
# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ----------------------------------------------------------------------------
#set_property PACKAGE_PIN T22 [get_ports {speaker}];  # "LD0"


# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard.
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]]

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard.
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];








