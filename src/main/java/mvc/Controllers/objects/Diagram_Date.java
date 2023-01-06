package mvc.Controllers.objects;

import com.google.gson.annotations.SerializedName;

public class Diagram_Date {
    @SerializedName("date")
    private String date;
    @SerializedName("amount")
    private int amount;

    public Diagram_Date(String date, int amount) {
        this.date = date;
        this.amount = amount;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
