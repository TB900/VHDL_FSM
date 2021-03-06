library ieee;
use ieee.std_logic_1164.all;

entity my_fsm_tb is
end my_fsm_tb;

architecture test of my_fsm_tb is
	component my_fsm
		port
		(
			WAIT_SIG, RESET, CLK : in std_logic;

			RD, WR : out std_logic_vector(31 downto 0);
			Y : out std_logic_vector(0 downto 0)
		);
	end component;

	signal WAIT_SIG, RESET, CLK : std_logic;
	signal Y : std_logic_vector(0 downto 0);
	signal , RD, WR : std_logic_vector(31 downto 0);

begin
	FSM : my_fsm port map (WAIT_SIG => WAIT_SIG, RESET => RESET, CLK => CLK, Y => Y, RD => RD, WR => WR, );

	CLK_ticks : process
	begin
		loop
			CLK <= '1';
			wait for 5 ns;
			CLK <= '0';
			wait for 5 ns;
		end loop;
	end process;

	Inputs: process
	begin
		WAIT_SIG <= '0' after 0 ns,
		
		assert false report "Reached end of text";
		wait;

	end process;
end test;