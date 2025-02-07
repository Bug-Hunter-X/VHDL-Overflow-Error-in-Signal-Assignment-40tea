```vhdl
entity bad_process is
  port (clk : in std_logic;
data : in std_logic_vector(7 downto 0);
       result : out std_logic_vector(7 downto 0));
end entity;

architecture behavioral of bad_process is
  signal internal_data : std_logic_vector(7 downto 0) := x"00";
begin
  process (clk)
  begin
    if rising_edge(clk) then
      internal_data <= data;
      result <= internal_data + x"01"; -- potential bug here
    end if;
  end process;
end architecture;
```