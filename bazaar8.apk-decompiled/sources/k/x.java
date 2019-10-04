package k;

/* compiled from: SegmentPool */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public static w f15774a;

    /* renamed from: b  reason: collision with root package name */
    public static long f15775b;

    public static w a() {
        synchronized (x.class) {
            if (f15774a == null) {
                return new w();
            }
            w wVar = f15774a;
            f15774a = wVar.f15772f;
            wVar.f15772f = null;
            f15775b -= 8192;
            return wVar;
        }
    }

    public static void a(w wVar) {
        if (wVar.f15772f != null || wVar.f15773g != null) {
            throw new IllegalArgumentException();
        } else if (!wVar.f15770d) {
            synchronized (x.class) {
                if (f15775b + 8192 <= 65536) {
                    f15775b += 8192;
                    wVar.f15772f = f15774a;
                    wVar.f15769c = 0;
                    wVar.f15768b = 0;
                    f15774a = wVar;
                }
            }
        }
    }
}
