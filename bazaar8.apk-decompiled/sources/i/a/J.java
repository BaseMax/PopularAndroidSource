package i.a;

import kotlinx.coroutines.CoroutineStart;

public final /* synthetic */ class J {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f14641a = new int[CoroutineStart.values().length];

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f14642b = new int[CoroutineStart.values().length];

    static {
        f14641a[CoroutineStart.DEFAULT.ordinal()] = 1;
        f14641a[CoroutineStart.ATOMIC.ordinal()] = 2;
        f14641a[CoroutineStart.UNDISPATCHED.ordinal()] = 3;
        f14641a[CoroutineStart.LAZY.ordinal()] = 4;
        f14642b[CoroutineStart.DEFAULT.ordinal()] = 1;
        f14642b[CoroutineStart.ATOMIC.ordinal()] = 2;
        f14642b[CoroutineStart.UNDISPATCHED.ordinal()] = 3;
        f14642b[CoroutineStart.LAZY.ordinal()] = 4;
    }
}
