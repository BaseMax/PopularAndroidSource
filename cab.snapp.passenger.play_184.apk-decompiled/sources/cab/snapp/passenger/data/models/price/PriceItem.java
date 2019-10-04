package cab.snapp.passenger.data.models.price;

import com.google.gson.a.c;

public class PriceItem {
    @c("name")
    private String name;
    @c("type")
    private int type;
    @c("value")
    private double value;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public double getValue() {
        return this.value;
    }

    public void setValue(double d) {
        this.value = d;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }
}
