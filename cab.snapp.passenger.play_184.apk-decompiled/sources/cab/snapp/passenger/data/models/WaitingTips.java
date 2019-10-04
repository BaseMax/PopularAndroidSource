package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class WaitingTips {
    @c("desc")
    private String desc;
    @c("title")
    private String title;

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public String toString() {
        return "WaitingTips{title='" + this.title + '\'' + ", desc='" + this.desc + '\'' + '}';
    }
}
