package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class CedarBB {
    @c("ne")
    private String ne;
    @c("sw")
    private String sw;

    public String getNe() {
        return this.ne;
    }

    public void setNe(String str) {
        this.ne = str;
    }

    public String getSw() {
        return this.sw;
    }

    public void setSw(String str) {
        this.sw = str;
    }

    public String toString() {
        return "CedarBB{ne='" + this.ne + '\'' + ", sw='" + this.sw + '\'' + '}';
    }
}
