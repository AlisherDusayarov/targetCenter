package mvc.Controllers.objects;

import com.google.gson.annotations.SerializedName;

public class Object_Modals {
    @SerializedName("order")
    private int order;
    @SerializedName("post_name")
    private String post_name;
    @SerializedName("decl_number")
    private String decl_number;
    @SerializedName("start_country")
    private String start_country;
    @SerializedName("end_country")
    private String end_country;
    @SerializedName("channel_way")
    private String channel_way;
    @SerializedName("auto_number")
    private String auto_number;
    @SerializedName("goods_name")
    private String goods_name;

    public Object_Modals(int order, String post_name, String decl_number, String start_country, String end_country, String channel_way, String auto_number, String goods_name) {
        this.order = order;
        this.post_name = post_name;
        this.decl_number = decl_number;
        this.start_country = start_country;
        this.end_country = end_country;
        this.channel_way = channel_way;
        this.auto_number = auto_number;
        this.goods_name = goods_name;
    }
}