package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class SnappUssd {
    @c("is_enabled")
    private boolean isEnabled;
    @c("mci_text")
    private String mciText;
    @c("none_mci_text")
    private String noneMciText;
    @c("pattern")
    private String pattern;
    @c("ussd_text")
    private String ussdText;

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    public String getPattern() {
        return this.pattern;
    }

    public void setPattern(String str) {
        this.pattern = str;
    }

    public String getMciText() {
        return this.mciText;
    }

    public void setMciText(String str) {
        this.mciText = str;
    }

    public String getNoneMciText() {
        return this.noneMciText;
    }

    public void setNoneMciText(String str) {
        this.noneMciText = str;
    }

    public String getUssdText() {
        return this.ussdText;
    }

    public void setUssdText(String str) {
        this.ussdText = str;
    }

    public String toString() {
        return "SnappUssd{isEnabled=" + this.isEnabled + ", pattern='" + this.pattern + '\'' + ", mciText='" + this.mciText + '\'' + ", noneMciText='" + this.noneMciText + '\'' + '}';
    }
}
