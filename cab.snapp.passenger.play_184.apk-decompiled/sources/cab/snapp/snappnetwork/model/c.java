package cab.snapp.snappnetwork.model;

public class c extends f {
    @com.google.gson.a.c("status")

    /* renamed from: a  reason: collision with root package name */
    private int f1540a;
    @com.google.gson.a.c("access_token")

    /* renamed from: b  reason: collision with root package name */
    private String f1541b;
    @com.google.gson.a.c("token_type")
    private String c;
    @com.google.gson.a.c("expires_in")
    private int d;
    @com.google.gson.a.c("refresh_token")
    private String e;
    @com.google.gson.a.c("email")
    private String f;
    @com.google.gson.a.c("fullname")
    private String g;
    @com.google.gson.a.c("is_new_user")
    private boolean h;

    public String getAccessToken() {
        return this.f1541b;
    }

    public void setAccessToken(String str) {
        this.f1541b = str;
    }

    public String getTokenType() {
        return this.c;
    }

    public void setTokenType(String str) {
        this.c = str;
    }

    public int getExpiresIn() {
        return this.d;
    }

    public void setExpiresIn(int i) {
        this.d = i;
    }

    public String getRefreshToken() {
        return this.e;
    }

    public void setRefreshToken(String str) {
        this.e = str;
    }

    public String getEmail() {
        return this.f;
    }

    public void setEmail(String str) {
        this.f = str;
    }

    public String getFullname() {
        return this.g;
    }

    public void setFullname(String str) {
        this.g = str;
    }

    public int getStatus() {
        return this.f1540a;
    }

    public void setStatus(int i) {
        this.f1540a = i;
    }

    public boolean isNewUser() {
        return this.h;
    }

    public void setNewUser(boolean z) {
        this.h = z;
    }

    public String toString() {
        return "SnappGrantResponseModel{status=" + this.f1540a + ", accessToken='" + this.f1541b + '\'' + ", tokenType='" + this.c + '\'' + ", expiresIn=" + this.d + ", refreshToken='" + this.e + '\'' + ", email='" + this.f + '\'' + ", fullname='" + this.g + '\'' + ", isNewUser=" + this.h + '}';
    }
}
