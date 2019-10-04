package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class OptionalConfig {
    public static final String TYPE_BOTH = "11";
    public static final String TYPE_IN_RIDE = "01";
    public static final String TYPE_MAIN_SCREEN = "10";
    public static final String TYPE_NONE = "00";
    @c("changes")
    private String changes;
    @c("visible_in")
    private String showType;
    @c("number")
    private String versionName;

    public String getChanges() {
        return this.changes;
    }

    public void setChanges(String str) {
        this.changes = str;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    public String getShowType() {
        return this.showType;
    }

    public void setShowType(String str) {
        this.showType = str;
    }

    public String toString() {
        return "OptionalConfig{changes='" + this.changes + '\'' + ", versionName=" + this.versionName + ", showType='" + this.showType + '\'' + '}';
    }
}
