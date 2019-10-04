package c.c.a.n.c.c;

import com.farsitel.bazaar.common.model.ui.EntityState;

public final /* synthetic */ class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6293a = new int[EntityState.values().length];

    static {
        f6293a[EntityState.FAILED.ordinal()] = 1;
        f6293a[EntityState.FAILED_STORAGE.ordinal()] = 2;
        f6293a[EntityState.UPDATE_NEEDED.ordinal()] = 3;
        f6293a[EntityState.NONE.ordinal()] = 4;
        f6293a[EntityState.PAUSE_BY_SYSTEM.ordinal()] = 5;
        f6293a[EntityState.DOWNLOADING.ordinal()] = 6;
        f6293a[EntityState.PREPARING.ordinal()] = 7;
        f6293a[EntityState.IN_QUEUE.ordinal()] = 8;
        f6293a[EntityState.FILE_EXISTS.ordinal()] = 9;
        f6293a[EntityState.INSTALLED.ordinal()] = 10;
        f6293a[EntityState.MALICIOUS_APP.ordinal()] = 11;
    }
}
