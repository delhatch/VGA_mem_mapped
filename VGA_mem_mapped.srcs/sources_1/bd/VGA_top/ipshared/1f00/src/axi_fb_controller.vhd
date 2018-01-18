----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2015 07:02:18 PM
-- Design Name: 
-- Module Name: axi_fb_controller - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity axi_fb_controller is
    generic (
        C_m_axi_fb_BURST_LEN    : integer    := 256;
        C_m_axi_fb_ID_WIDTH    : integer    := 1;
        C_m_axi_fb_ADDR_WIDTH    : integer    := 32;
        C_m_axi_fb_DATA_WIDTH    : integer    := 64;
        C_m_axi_fb_AWUSER_WIDTH    : integer    := 0;
        C_m_axi_fb_ARUSER_WIDTH    : integer    := 0;
        C_m_axi_fb_WUSER_WIDTH    : integer    := 0;
        C_m_axi_fb_RUSER_WIDTH    : integer    := 0;
        C_m_axi_fb_BUSER_WIDTH    : integer    := 0;
        C_s_axi_config_DATA_WIDTH	: integer	:= 32);
    port (
        -- Synchronization 
        axi_aclk    : in std_logic;
        axi_aresetn    : in std_logic;
        -- Data interface
        enable : in std_logic;
        ready : out std_logic;
        di_ready : out std_logic;
        di_address : in std_logic_vector(C_m_axi_fb_ADDR_WIDTH-1 downto 0);
        di_data : out std_logic_vector(C_m_axi_fb_DATA_WIDTH-1 downto 0);
        error_reg : out std_logic_vector(C_s_axi_config_DATA_WIDTH-1 downto 0);
        -- Ports of Axi Master Bus Interface m_axi_fb
        m_axi_fb_awid    : out std_logic_vector(C_m_axi_fb_ID_WIDTH-1 downto 0);
        m_axi_fb_awaddr    : out std_logic_vector(C_m_axi_fb_ADDR_WIDTH-1 downto 0);
        m_axi_fb_awlen    : out std_logic_vector(7 downto 0);
        m_axi_fb_awsize    : out std_logic_vector(2 downto 0);
        m_axi_fb_awburst    : out std_logic_vector(1 downto 0);
        m_axi_fb_awlock    : out std_logic;
        m_axi_fb_awcache    : out std_logic_vector(3 downto 0);
        m_axi_fb_awprot    : out std_logic_vector(2 downto 0);
        m_axi_fb_awqos    : out std_logic_vector(3 downto 0);
        m_axi_fb_awuser    : out std_logic_vector(C_m_axi_fb_AWUSER_WIDTH-1 downto 0);
        m_axi_fb_awvalid    : out std_logic;
        m_axi_fb_awready    : in std_logic;
        m_axi_fb_wdata    : out std_logic_vector(C_m_axi_fb_DATA_WIDTH-1 downto 0);
        m_axi_fb_wstrb    : out std_logic_vector(C_m_axi_fb_DATA_WIDTH/8-1 downto 0);
        m_axi_fb_wlast    : out std_logic;
        m_axi_fb_wuser    : out std_logic_vector(C_m_axi_fb_WUSER_WIDTH-1 downto 0);
        m_axi_fb_wvalid    : out std_logic;
        m_axi_fb_wready    : in std_logic;
        m_axi_fb_bid    : in std_logic_vector(C_m_axi_fb_ID_WIDTH-1 downto 0);
        m_axi_fb_bresp    : in std_logic_vector(1 downto 0);
        m_axi_fb_buser    : in std_logic_vector(C_m_axi_fb_BUSER_WIDTH-1 downto 0);
        m_axi_fb_bvalid    : in std_logic;
        m_axi_fb_bready    : out std_logic;
        m_axi_fb_arid    : out std_logic_vector(C_m_axi_fb_ID_WIDTH-1 downto 0);
        m_axi_fb_araddr    : out std_logic_vector(C_m_axi_fb_ADDR_WIDTH-1 downto 0);
        m_axi_fb_arlen    : out std_logic_vector(7 downto 0);
        m_axi_fb_arsize    : out std_logic_vector(2 downto 0);
        m_axi_fb_arburst    : out std_logic_vector(1 downto 0);
        m_axi_fb_arlock    : out std_logic;
        m_axi_fb_arcache    : out std_logic_vector(3 downto 0);
        m_axi_fb_arprot    : out std_logic_vector(2 downto 0);
        m_axi_fb_arqos    : out std_logic_vector(3 downto 0);
        m_axi_fb_aruser    : out std_logic_vector(C_m_axi_fb_ARUSER_WIDTH-1 downto 0);
        m_axi_fb_arvalid    : out std_logic;
        m_axi_fb_arready    : in std_logic;
        m_axi_fb_rid    : in std_logic_vector(C_m_axi_fb_ID_WIDTH-1 downto 0);
        m_axi_fb_rdata    : in std_logic_vector(C_m_axi_fb_DATA_WIDTH-1 downto 0);
        m_axi_fb_rresp    : in std_logic_vector(1 downto 0);
        m_axi_fb_rlast    : in std_logic;
        m_axi_fb_ruser    : in std_logic_vector(C_m_axi_fb_RUSER_WIDTH-1 downto 0);
        m_axi_fb_rvalid    : in std_logic;
        m_axi_fb_rready    : out std_logic);
end axi_fb_controller;

architecture Behavioral of axi_fb_controller is

    -- This function was automatically generated by Xilinx Vivado's IP
    -- Packager
    function clogb2 (bit_depth : integer) return integer is            
        variable depth  : integer := bit_depth;                               
        variable count  : integer := 1;                                       
    begin                                                                   
        for clogb2 in 1 to bit_depth loop  -- Works for up to 32 bit integers
            if (bit_depth <= 2) then                                           
                count := 1;                                                      
            else                                                               
                if(depth <= 1) then                                              
                    count := count;                                                
                else                                                             
                    depth := depth / 2;                                            
                    count := count + 1;                                            
                end if;                                                          
            end if;                                                            
        end loop;                                                             
        return(count);        	                                              
    end;          
    
    type m_axi_fb_state_type is (M_AXI_FB_S_ENABLE,M_AXI_FB_S_AR,
        M_AXI_FB_S_R,M_AXI_FB_S_READY,M_AXI_FB_S_ERR);
    signal m_axi_fb_state : m_axi_fb_state_type := M_AXI_FB_S_ENABLE;
    
    signal ready_buff : std_logic;
    signal m_axi_fb_araddr_buff : std_logic_vector(C_m_axi_fb_ADDR_WIDTH-1 downto 0);
    signal m_axi_fb_arvalid_buff : std_logic;
    signal m_axi_fb_rready_buff : std_logic;
    signal error_reg_buff : std_logic_vector(C_s_axi_config_DATA_WIDTH-1 downto 0);

begin

    -- Master AXI4 Full Write Assignments
    m_axi_fb_awid <= (others => '0');
    m_axi_fb_awaddr <= (others => '0');  
    m_axi_fb_awlen <= (others => '0');  
    m_axi_fb_awsize <= (others => '0');  
    m_axi_fb_awburst <= (others => '0');  
    m_axi_fb_awlock <= '0';
    m_axi_fb_awcache <= (others => '0');  
    m_axi_fb_awprot <= (others => '0');  
    m_axi_fb_awqos <= (others => '0');  
    m_axi_fb_awuser <= (others => '0');  
    m_axi_fb_awvalid <= '0';
    m_axi_fb_wdata <= (others => '0');  
    m_axi_fb_wstrb <= (others => '0');  
    m_axi_fb_wlast <= '0';
    m_axi_fb_wuser <= (others => '0');  
    m_axi_fb_wvalid <= '0';
    m_axi_fb_bready <= '0';

    -- Master AXI4 Full Read Assignments
    m_axi_fb_arid <= (others => '0');
    m_axi_fb_araddr <= m_axi_fb_araddr_buff;
    m_axi_fb_arlen <= std_logic_vector(to_unsigned(C_m_axi_fb_BURST_LEN-1,m_axi_fb_arlen'length));
    m_axi_fb_arsize <= std_logic_vector(to_unsigned(clogb2((C_m_axi_fb_DATA_WIDTH/8)-1),m_axi_fb_arsize'length));
    m_axi_fb_arburst <= "01";
    m_axi_fb_arlock <= '0';
    -- Device Bufferable, according to AXI4 TRM
    -- Setting this to "0011" causes the device to request
    -- coherency from SCU if connected through ACP.
    m_axi_fb_arcache <= "0010";
    m_axi_fb_arprot <= "000";
    m_axi_fb_arqos <= x"0";
    m_axi_fb_aruser <= (others => '1');
    m_axi_fb_arvalid <= m_axi_fb_arvalid_buff;
    m_axi_fb_rready <= m_axi_fb_rready_buff;

    -- Master AXI4 Full Read Operation
    di_data <= m_axi_fb_rdata;
    di_ready <= m_axi_fb_rready_buff and m_axi_fb_rvalid;
    error_reg <= error_reg_buff;
    ready <= ready_buff;
    process (axi_aclk)
    begin
        if (rising_edge(axi_aclk)) then
            if (axi_aresetn='0') then
                m_axi_fb_state <= M_AXI_FB_S_ENABLE;
                ready_buff <= '0';
                m_axi_fb_araddr_buff <= (others => '0');
                m_axi_fb_arvalid_buff <= '0';
                m_axi_fb_rready_buff <= '0';
                error_reg_buff <= (others => '0');
            else
                case m_axi_fb_state is
                    when M_AXI_FB_S_ENABLE =>
                        ready_buff <= '0';
                        if (enable='1') then
                            m_axi_fb_araddr_buff <= di_address;
                            m_axi_fb_state <= M_AXI_FB_S_AR;
                        end if;
                    when M_AXI_FB_S_AR =>
                        if (m_axi_fb_arvalid_buff='1' and m_axi_fb_arready='1') then
                            m_axi_fb_state <= M_AXI_FB_S_R;
                            m_axi_fb_arvalid_buff <= '0';
                        else
                            m_axi_fb_arvalid_buff <= '1';
                        end if;
                    when M_AXI_FB_S_R =>
                        if (m_axi_fb_rready_buff='1' and m_axi_fb_rvalid='1') then
                            if (m_axi_fb_rlast='1') then
                                -- For simplicity, we'll assume the only acceptable
                                -- response is OKAY for normal access success
                                if (m_axi_fb_rresp="00") then
                                    m_axi_fb_state <= M_AXI_FB_S_READY;
                                -- Any other response is assumed as an error
                                else
                                    m_axi_fb_state <= M_AXI_FB_S_ERR;
                                end if;
                                m_axi_fb_rready_buff <= '0';
                            end if;
                        else
                            m_axi_fb_rready_buff <= '1';
                        end if;
                    when M_AXI_FB_S_READY =>
                        ready_buff <= '1';
                        if (enable='0') then
                            m_axi_fb_state <= M_AXI_FB_S_ENABLE;
                        end if;
                    -- Remain in the error state. The user can read the error
                    -- from the config interface if necessary.
                    when M_AXI_FB_S_ERR =>
                        error_reg_buff(m_axi_fb_rresp'high downto 
                            m_axi_fb_rresp'low) <= m_axi_fb_rresp;
                    when others =>
                        m_axi_fb_state <= M_AXI_FB_S_ENABLE;
                end case;
            end if;
        end if;
    end process;

end Behavioral;
