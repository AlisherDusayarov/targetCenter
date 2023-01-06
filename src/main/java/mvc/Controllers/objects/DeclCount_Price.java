package mvc.Controllers.objects;

import com.google.gson.annotations.SerializedName;

public class DeclCount_Price {
    @SerializedName("date")
    private String date;
    @SerializedName("amount")
    private int amount;
    @SerializedName("price")
    private double price;

    public DeclCount_Price(String date, int amount, double price) {
        this.date = date;
        this.amount = amount;
        this.price = price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}