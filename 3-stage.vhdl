process(clk)
begin
    if rising_edge(clk) then
        if rst = '1' then
            mul_reg1 <= (others => '0');
            mul_out  <= (others => '0');
        else
            mul_reg1 <= std_logic_vector(signed(operand_a) * signed(operand_b));
            mul_out  <= mul_reg1; -- Double-registered for DSP48 block inference
        end if;
    end if;
end process;
