package mvc.Controllers.objects;

import com.google.gson.annotations.SerializedName;

public class Region_Info {
    @SerializedName("border_name")
    private String border_name;
    @SerializedName("common_count")
    private int common_count;
    @SerializedName("worker_count")
    private int worker_count;
    @SerializedName("IKM_name")
    private String IKM_name;
    @SerializedName("autoscale_name")
    private String autoscale_name;
    @SerializedName("waiting_import")
    private String waiting_import;

    public Region_Info(String border_name, int common_count, int worker_count, String IKM_name, String autoscale_name, String waiting_import) {
        this.border_name = border_name;
        this.common_count = common_count;
        this.worker_count = worker_count;
        this.IKM_name = IKM_name;
        this.autoscale_name = autoscale_name;
        this.waiting_import = waiting_import;
    }

    public String getBorder_name() {
        return border_name;
    }

    public void setBorder_name(String border_name) {
        this.border_name = border_name;
    }

    public int getCommon_count() {
        return common_count;
    }

    public void setCommon_count(int common_count) {
        this.common_count = common_count;
    }

    public int getWorker_count() {
        return worker_count;
    }

    public void setWorker_count(int worker_count) {
        this.worker_count = worker_count;
    }

    public String getIKM_name() {
        return IKM_name;
    }

    public void setIKM_name(String IKM_name) {
        this.IKM_name = IKM_name;
    }

    public String getAutoscale_name() {
        return autoscale_name;
    }

    public void setAutoscale_name(String autoscale_name) {
        this.autoscale_name = autoscale_name;
    }

    public String getWaiting_import() {
        return waiting_import;
    }

    public void setWaiting_import(String waiting_import) {
        this.waiting_import = waiting_import;
    }
}