library ieee;
use ieee.std_logic_1164.all;

entity FSM_tb is
end FSM_tb;

architecture test of FSM_tb is
	component my_fsm
		port
		(
			WAIT_SIG, RESET, CLK : in std_logic;

			RD, WR : out std_logic_vector(31 downto 0);
			Y : out std_logic_vector(3 downto 0)
		);
	end component;

	signal WAIT_SIG, RESET, CLK : std_logic;
	signal Y : std_logic_vector(3 downto 0);
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
		'1' after 10 ns,
		'0' after 20 ns,
		'1' after 30 ns,
		'0' after 40 ns,
		'1' after 50 ns,
		'0' after 60 ns,
		'1' after 70 ns,
		'0' after 80 ns,
		'1' after 90 ns,
		'0' after 100 ns,
		'1' after 110 ns,
		'0' after 120 ns;
		
		assert false report "Reached end of text";
		wait;

	end process;
end test;