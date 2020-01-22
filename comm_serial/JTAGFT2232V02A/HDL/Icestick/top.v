(* IOSTANDARD = "LVCMOS33" *)
module top_block(FT_SCK, FT_SI, FT_SO, FT_SS, FT_CREST,
                 FT_CDONE, SI, SO, SCK, SS, NRST,
                 RX, TX, FT_B_RX, FT_B_TX, LED);
    input FT_SCK;
    input FT_SI;
    output FT_SO;
    input FT_SS;
    input FT_CREST;
    output FT_CDONE;

    output SI;
    input SO;
    output SCK;
    output NRST;
    output SS;

    assign SI = FT_CREST ? 1'bz : FT_SI;
    assign FT_SO = SO;
    assign FT_CDONE = 1'b0;
    assign SCK = FT_CREST ? 1'bz : FT_SCK;

	 output LED;
	 assign LED = ~FT_SS;

    assign SS = FT_SS ? 1'bz : 1'b0;
    assign NRST = FT_CREST ? 1'bz: 1'b0;

    output FT_B_RX;
    input FT_B_TX;
    output TX;
    input RX;
    assign TX = FT_B_TX;
    assign FT_B_RX = RX;
endmodule
