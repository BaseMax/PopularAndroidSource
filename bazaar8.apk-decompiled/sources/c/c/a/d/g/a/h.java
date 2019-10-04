package c.c.a.d.g.a;

import android.content.Context;
import b.i.a.n;
import b.i.a.q;

/* compiled from: ImageLoader.kt */
final class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f4804a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f4805b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f4806c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f4807d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ n.d f4808e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f4809f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ q f4810g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ int f4811h;

    public h(Context context, String str, String str2, String str3, n.d dVar, String str4, q qVar, int i2) {
        this.f4804a = context;
        this.f4805b = str;
        this.f4806c = str2;
        this.f4807d = str3;
        this.f4808e = dVar;
        this.f4809f = str4;
        this.f4810g = qVar;
        this.f4811h = i2;
    }

    public final void run() {
        c.a(this.f4804a).c().a(this.f4805b).b(new g(this)).b();
    }
}
