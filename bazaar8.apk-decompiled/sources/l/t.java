package l;

import j.C1142i;
import j.C1143j;
import j.P;
import java.io.IOException;

/* compiled from: OkHttpCall */
class t implements C1143j {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1160d f15936a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ v f15937b;

    public t(v vVar, C1160d dVar) {
        this.f15937b = vVar;
        this.f15936a = dVar;
    }

    public void a(C1142i iVar, P p) {
        try {
            try {
                this.f15936a.a(this.f15937b, this.f15937b.a(p));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            H.a(th2);
            a(th2);
        }
    }

    public void a(C1142i iVar, IOException iOException) {
        a(iOException);
    }

    public final void a(Throwable th) {
        try {
            this.f15936a.a(this.f15937b, th);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
