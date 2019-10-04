package c.e.a.b.h.b;

/* renamed from: c.e.a.b.h.b.ta  reason: case insensitive filesystem */
public final class C0958ta implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f11055a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f11056b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f11057c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ long f11058d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0905ba f11059e;

    public C0958ta(C0905ba baVar, String str, String str2, String str3, long j2) {
        this.f11059e = baVar;
        this.f11055a = str;
        this.f11056b = str2;
        this.f11057c = str3;
        this.f11058d = j2;
    }

    public final void run() {
        String str = this.f11055a;
        if (str == null) {
            this.f11059e.f10827a.B().E().a(this.f11056b, (C0909cb) null);
            return;
        }
        this.f11059e.f10827a.B().E().a(this.f11056b, new C0909cb(this.f11057c, str, this.f11058d));
    }
}
