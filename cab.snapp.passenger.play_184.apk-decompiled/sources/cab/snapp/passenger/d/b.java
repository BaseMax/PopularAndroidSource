package cab.snapp.passenger.d;

import com.raizlabs.android.dbflow.structure.BaseModel;

public class b extends BaseModel {

    /* renamed from: a  reason: collision with root package name */
    private String f468a;

    /* renamed from: b  reason: collision with root package name */
    private int f469b;
    private String c;
    private long d;

    public String getKey() {
        return this.f468a;
    }

    public void setKey(String str) {
        this.f468a = str;
    }

    public int getType() {
        return this.f469b;
    }

    public void setType(int i) {
        this.f469b = i;
    }

    public String getJsonString() {
        return this.c;
    }

    public void setJsonString(String str) {
        this.c = str;
    }

    public long getLastModificationTimestamp() {
        return this.d;
    }

    public void setLastModificationTimestamp(long j) {
        this.d = j;
    }
}
