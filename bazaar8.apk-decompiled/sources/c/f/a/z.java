package c.f.a;

import android.content.Context;
import j.C1139f;
import j.C1142i;
import j.I;
import j.L;
import j.P;
import java.io.File;

/* compiled from: OkHttp3Downloader */
public final class z implements r {

    /* renamed from: a  reason: collision with root package name */
    public final C1142i.a f12027a;

    /* renamed from: b  reason: collision with root package name */
    public final C1139f f12028b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f12029c;

    public z(Context context) {
        this(P.b(context));
    }

    public P a(L l2) {
        return this.f12027a.a(l2).execute();
    }

    public z(File file) {
        this(file, P.a(file));
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public z(java.io.File r3, long r4) {
        /*
            r2 = this;
            j.I$a r0 = new j.I$a
            r0.<init>()
            j.f r1 = new j.f
            r1.<init>(r3, r4)
            r0.a((j.C1139f) r1)
            j.I r3 = r0.a()
            r2.<init>((j.I) r3)
            r3 = 0
            r2.f12029c = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.a.z.<init>(java.io.File, long):void");
    }

    public z(I i2) {
        this.f12029c = true;
        this.f12027a = i2;
        this.f12028b = i2.b();
    }
}
