package mvc.Controllers.objects;

import com.google.gson.annotations.SerializedName;

public class AutoDecl_NoStandatd {
    @SerializedName("date")
    private String date;
    @SerializedName("risk8")
    private int risk8;
    @SerializedName("risk9")
    private int risk9;
    @SerializedName("risk10")
    private int risk10;
    @SerializedName("risk14")
    private int risk14;
    @SerializedName("risk17")
    private int risk17;
    @SerializedName("risk27")
    private int risk27;

    public AutoDecl_NoStandatd(String date, int risk8, int risk9, int risk10, int risk14, int risk17, int risk27) {
        this.date = date;
        this.risk8 = risk8;
        this.risk9 = risk9;
        this.risk10 = risk10;
        this.risk14 = risk14;
        this.risk17 = risk17;
        this.risk27 = risk27;
    }
}