package i.a.e;

import kotlinx.coroutines.scheduling.CoroutineScheduler;

public final /* synthetic */ class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f14790a = new int[CoroutineScheduler.WorkerState.values().length];

    static {
        f14790a[CoroutineScheduler.WorkerState.PARKING.ordinal()] = 1;
        f14790a[CoroutineScheduler.WorkerState.BLOCKING.ordinal()] = 2;
        f14790a[CoroutineScheduler.WorkerState.CPU_ACQUIRED.ordinal()] = 3;
        f14790a[CoroutineScheduler.WorkerState.RETIRING.ordinal()] = 4;
        f14790a[CoroutineScheduler.WorkerState.TERMINATED.ordinal()] = 5;
    }
}
