package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class AppmetricaEventParamsModel {
    @c("action")
    private String action;
    @c("category")
    private String category;
    @c("label")
    private String label;
    @c("value")
    private String value;

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public String getAction() {
        return this.action;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }
}
