package mvc.Controllers.objects;

import com.google.gson.annotations.SerializedName;

public class Post_Country_Percent {
    @SerializedName("order")
    private int order;
    @SerializedName("post_code")
    private String post_code;
    @SerializedName("post_name")
    private String post_name;
    @SerializedName("country")
    private String country;
    @SerializedName("flag")
    private String flag;
    @SerializedName("direct_count")
    private int direct_count;
    @SerializedName("percent")
    private double percent;

    public Post_Country_Percent(int order, String post_code, String post_name, String country, String flag, int direct_count, double percent) {
        this.order = order;
        this.post_code = post_code;
        this.post_name = post_name;
        this.country = country;
        this.flag = flag;
        this.direct_count = direct_count;
        this.percent = percent;
    }
}