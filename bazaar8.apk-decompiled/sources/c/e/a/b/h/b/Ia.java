package c.e.a.b.h.b;

public final class Ia implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f10656a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f10657b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f10658c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ long f10659d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Fa f10660e;

    public Ia(Fa fa, String str, String str2, Object obj, long j2) {
        this.f10660e = fa;
        this.f10656a = str;
        this.f10657b = str2;
        this.f10658c = obj;
        this.f10659d = j2;
    }

    public final void run() {
        this.f10660e.a(this.f10656a, this.f10657b, this.f10658c, this.f10659d);
    }
}
