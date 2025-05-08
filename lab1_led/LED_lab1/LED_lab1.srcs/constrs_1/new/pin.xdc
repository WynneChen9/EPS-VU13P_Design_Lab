# CLK
set_property PACKAGE_PIN K18 [get_ports gclk_100m_clk_p]

##指定 CLK 作為 100MHz (週期 10ns) 的時鐘信號。
create_clock -period 10 [get_ports gclk_100m_clk_p]

##設置 gclk_100m_clk_p 為 LVDS (低壓差分信號) 標準。
set_property IOSTANDARD LVDS [get_ports gclk_100m_clk_p]

##移除 gclk_100m_clk_p 和 gclk_100m_clk_n 的均衡 (Equalization) 設置，可能用於避免額外的信號調整。
##可加可不加
set_property EQUALIZATION "" [get_ports {gclk_100m_clk_p}]
set_property EQUALIZATION "" [get_ports {gclk_100m_clk_n}]

set_property PACKAGE_PIN C18 [get_ports led0]
set_property IOSTANDARD LVCMOS18 [get_ports led0]

set_property PACKAGE_PIN D18 [get_ports led1]
set_property IOSTANDARD LVCMOS18 [get_ports led1]

set_property PACKAGE_PIN B21 [get_ports led2]
set_property IOSTANDARD LVCMOS18 [get_ports led2]

set_property PACKAGE_PIN C21 [get_ports led3]
set_property IOSTANDARD LVCMOS18 [get_ports led3]
