package b.w;

import android.os.Bundle;

/* renamed from: b.w.e  reason: case insensitive filesystem */
/* compiled from: NavAction */
public final class C0308e {

    /* renamed from: a  reason: collision with root package name */
    public final int f3276a;

    /* renamed from: b  reason: collision with root package name */
    public w f3277b;

    /* renamed from: c  reason: collision with root package name */
    public Bundle f3278c;

    public C0308e(int i2) {
        this(i2, null);
    }

    public void a(w wVar) {
        this.f3277b = wVar;
    }

    public int b() {
        return this.f3276a;
    }

    public w c() {
        return this.f3277b;
    }

    public C0308e(int i2, w wVar) {
        this(i2, wVar, null);
    }

    public Bundle a() {
        return this.f3278c;
    }

    public C0308e(int i2, w wVar, Bundle bundle) {
        this.f3276a = i2;
        this.f3277b = wVar;
        this.f3278c = bundle;
    }

    public void a(Bundle bundle) {
        this.f3278c = bundle;
    }
}
