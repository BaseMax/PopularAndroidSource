package c.c.a.n.b.d;

import com.farsitel.bazaar.common.model.ui.EntityState;

public final /* synthetic */ class b {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6241a = new int[EntityState.values().length];

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f6242b = new int[EntityState.values().length];

    static {
        f6241a[EntityState.FAILED.ordinal()] = 1;
        f6241a[EntityState.FAILED_STORAGE.ordinal()] = 2;
        f6241a[EntityState.UPDATE_NEEDED.ordinal()] = 3;
        f6241a[EntityState.NONE.ordinal()] = 4;
        f6241a[EntityState.FILE_EXISTS.ordinal()] = 5;
        f6241a[EntityState.INSTALLED.ordinal()] = 6;
        f6242b[EntityState.UNDEFINED.ordinal()] = 1;
        f6242b[EntityState.NONE.ordinal()] = 2;
        f6242b[EntityState.UPDATE_NEEDED.ordinal()] = 3;
        f6242b[EntityState.PAUSE_BY_SYSTEM.ordinal()] = 4;
        f6242b[EntityState.PAUSE.ordinal()] = 5;
        f6242b[EntityState.INCOMPATIBLE.ordinal()] = 6;
        f6242b[EntityState.FAILED.ordinal()] = 7;
        f6242b[EntityState.DOWNLOADING.ordinal()] = 8;
        f6242b[EntityState.PREPARING.ordinal()] = 9;
        f6242b[EntityState.CHECKING.ordinal()] = 10;
        f6242b[EntityState.COMPLETED.ordinal()] = 11;
        f6242b[EntityState.FAILED_STORAGE.ordinal()] = 12;
        f6242b[EntityState.FILE_EXISTS.ordinal()] = 13;
        f6242b[EntityState.INSTALLED.ordinal()] = 14;
        f6242b[EntityState.IN_QUEUE.ordinal()] = 15;
        f6242b[EntityState.MALICIOUS_APP.ordinal()] = 16;
    }
}
