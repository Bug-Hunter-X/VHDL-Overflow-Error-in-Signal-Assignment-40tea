```vhdl
entity good_process is
  port (clk : in std_logic;
data : in std_logic_vector(7 downto 0);
       result : out std_logic_vector(7 downto 0));
end entity;

architecture behavioral of good_process is
  signal internal_data : std_logic_vector(7 downto 0) := x"00";
begin
  process (clk)
  begin
    if rising_edge(clk) then
      internal_data <= data;
      if internal_data = x"FF" then
        result <= x"FF";
      else
        result <= internal_data + x"01";
      end if;
    end if;
  end process;
end architecture;
```