package b.i.b.a;

import android.graphics.Typeface;
import b.i.b.a.h;

/* compiled from: ResourcesCompat */
class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Typeface f2615a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ h.a f2616b;

    public f(h.a aVar, Typeface typeface) {
        this.f2616b = aVar;
        this.f2615a = typeface;
    }

    public void run() {
        this.f2616b.a(this.f2615a);
    }
}
