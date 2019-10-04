package i.a.g;

import i.a.c.v;

/* compiled from: Mutex.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final v f14834a = new v("LOCK_FAIL");

    /* renamed from: b  reason: collision with root package name */
    public static final v f14835b = new v("ENQUEUE_FAIL");

    /* renamed from: c  reason: collision with root package name */
    public static final v f14836c = new v("UNLOCK_FAIL");

    /* renamed from: d  reason: collision with root package name */
    public static final v f14837d = new v("SELECT_SUCCESS");

    /* renamed from: e  reason: collision with root package name */
    public static final v f14838e = new v("LOCKED");

    /* renamed from: f  reason: collision with root package name */
    public static final v f14839f = new v("UNLOCKED");

    /* renamed from: g  reason: collision with root package name */
    public static final a f14840g = new a(f14838e);

    /* renamed from: h  reason: collision with root package name */
    public static final a f14841h = new a(f14839f);

    public static /* synthetic */ b a(boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        return a(z);
    }

    public static final b a(boolean z) {
        return new c(z);
    }
}
