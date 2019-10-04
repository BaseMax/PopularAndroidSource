package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class RatingOption {
    @c("text")
    private String option;
    @c("id")
    private int optionType;

    public int getOptionType() {
        return this.optionType;
    }

    public void setOptionType(int i) {
        this.optionType = i;
    }

    public String getOption() {
        return this.option;
    }

    public void setOption(String str) {
        this.option = str;
    }

    public String toString() {
        return "RatingOption{optionType=" + this.optionType + ", option='" + this.option + '\'' + '}';
    }
}
