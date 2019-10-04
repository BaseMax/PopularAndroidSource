package cab.snapp.snappnetwork.model;

import com.google.gson.a.c;

public class e {
    @c("status")

    /* renamed from: a  reason: collision with root package name */
    private int f1542a;
    @c("data")

    /* renamed from: b  reason: collision with root package name */
    private f f1543b;

    public int getSnappApiStatus() {
        return this.f1542a;
    }

    public void setSnappApiStatus(int i) {
        this.f1542a = i;
    }

    public f getSnappResponseModel() {
        return this.f1543b;
    }

    public void setSnappResponseModel(f fVar) {
        this.f1543b = fVar;
    }

    public String toString() {
        return "SnappNetworkResponseGeneralModel{snappApiStatus=" + this.f1542a + ", snappResponseModel=" + this.f1543b + '}';
    }
}
