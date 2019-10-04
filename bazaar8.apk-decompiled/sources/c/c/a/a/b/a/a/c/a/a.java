package c.c.a.a.b.a.a.c.a;

import c.e.d.a.c;
import com.crashlytics.android.answers.SessionEventTransform;
import h.f.b.j;

/* compiled from: ActionLogRequestDto.kt */
public final class a {
    @c("androidId")
    public final String androidId;
    @c("cid")
    public final float cid;
    @c("deviceId")
    public final int deviceId;
    @c("deviceModel")
    public final String deviceModel;
    @c("isTable")
    public final boolean isTablet;
    @c("lac")
    public final float lac;

    public a(boolean z, String str, float f2, float f3, int i2, String str2) {
        j.b(str, SessionEventTransform.DEVICE_MODEL_KEY);
        j.b(str2, "androidId");
        this.isTablet = z;
        this.deviceModel = str;
        this.cid = f2;
        this.lac = f3;
        this.deviceId = i2;
        this.androidId = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if ((this.isTablet == aVar.isTablet) && j.a((Object) this.deviceModel, (Object) aVar.deviceModel) && Float.compare(this.cid, aVar.cid) == 0 && Float.compare(this.lac, aVar.lac) == 0) {
                    if (!(this.deviceId == aVar.deviceId) || !j.a((Object) this.androidId, (Object) aVar.androidId)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.isTablet;
        if (z) {
            z = true;
        }
        int i2 = (z ? 1 : 0) * true;
        String str = this.deviceModel;
        int i3 = 0;
        int hashCode = (((((((i2 + (str != null ? str.hashCode() : 0)) * 31) + Float.floatToIntBits(this.cid)) * 31) + Float.floatToIntBits(this.lac)) * 31) + this.deviceId) * 31;
        String str2 = this.androidId;
        if (str2 != null) {
            i3 = str2.hashCode();
        }
        return hashCode + i3;
    }

    public String toString() {
        return "Device(isTablet=" + this.isTablet + ", deviceModel=" + this.deviceModel + ", cid=" + this.cid + ", lac=" + this.lac + ", deviceId=" + this.deviceId + ", androidId=" + this.androidId + ")";
    }
}
