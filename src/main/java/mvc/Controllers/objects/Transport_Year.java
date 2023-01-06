package mvc.Controllers.objects;

import com.google.gson.annotations.SerializedName;

public class Transport_Year {
    @SerializedName("months")
    private String months;
    @SerializedName("cargo")
    private int cargo;
    @SerializedName("empty")
    private int empty;
    @SerializedName("car")
    private int car;

    public Transport_Year(String months, int cargo, int empty, int car) {
        this.months = months;
        this.cargo = cargo;
        this.empty = empty;
        this.car = car;
    }

    public String getMonths() {
        return months;
    }

    public void setMonths(String months) {
        this.months = months;
    }

    public int getCargo() {
        return cargo;
    }

    public void setCargo(int cargo) {
        this.cargo = cargo;
    }

    public int getEmpty() {
        return empty;
    }

    public void setEmpty(int empty) {
        this.empty = empty;
    }

    public int getCar() {
        return car;
    }

    public void setCar(int car) {
        this.car = car;
    }
}