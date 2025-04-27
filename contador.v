module Contador (
    input  wire clk,
    input  wire rst_n,

    input  wire acrescer,
    input  wire decrecer,

    output reg [7:0] saida
);

    always @(posedge clk) begin
        if(!rst_n) begin // Se reset = 0, reinicia o contador no valor 106
            saida = 8'h6A; // 106 em hexadecimal
        end 
        else if(acrescer && !decrecer) saida = saida + 1; // Se acrescer = 1 e decrecer = 0, soma 1 ao contador
        else if(!acrescer && decrecer) saida = saida - 1; // Se acrescer = 0 e decrecer = 1, subtrai 1 do contador
        else saida = saida;
    end

endmodule
