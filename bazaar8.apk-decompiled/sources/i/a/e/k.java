package i.a.e;

import h.h.g;
import i.a.c.w;
import i.a.c.y;
import java.util.concurrent.TimeUnit;

/* compiled from: Tasks.kt */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final long f14809a = y.a("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, (Object) null);

    /* renamed from: b  reason: collision with root package name */
    public static final int f14810b = y.a("kotlinx.coroutines.scheduler.offload.threshold", 96, 0, 128, 4, (Object) null);

    /* renamed from: c  reason: collision with root package name */
    public static final int f14811c = y.a("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12, (Object) null);

    /* renamed from: d  reason: collision with root package name */
    public static final int f14812d = y.a("kotlinx.coroutines.scheduler.core.pool.size", g.a(w.a(), 2), 1, 0, 8, (Object) null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f14813e = y.a("kotlinx.coroutines.scheduler.max.pool.size", g.a(w.a() * 128, f14812d, 2097150), 0, 2097150, 4, (Object) null);

    /* renamed from: f  reason: collision with root package name */
    public static final long f14814f = TimeUnit.SECONDS.toNanos(y.a("kotlinx.coroutines.scheduler.keep.alive.sec", 5, 0, 0, 12, (Object) null));

    /* renamed from: g  reason: collision with root package name */
    public static l f14815g = f.f14803a;
}
