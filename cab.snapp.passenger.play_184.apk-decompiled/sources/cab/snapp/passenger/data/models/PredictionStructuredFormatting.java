package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class PredictionStructuredFormatting {
    @c("main_text")
    private String primaryText;
    @c("secondary_text")
    private String secondaryText;

    public String getPrimaryText() {
        return this.primaryText;
    }

    public void setPrimaryText(String str) {
        this.primaryText = str;
    }

    public String getSecondaryText() {
        return this.secondaryText;
    }

    public void setSecondaryText(String str) {
        this.secondaryText = str;
    }

    public String toString() {
        return "PredictionStructuredFormatting{primaryText='" + this.primaryText + '\'' + ", secondaryText='" + this.secondaryText + '\'' + '}';
    }
}
