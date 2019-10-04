package c.c.a.n.c.c.a.a.a;

import com.farsitel.bazaar.common.model.ui.EntityState;

public final /* synthetic */ class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6294a = new int[EntityState.values().length];

    static {
        f6294a[EntityState.UNDEFINED.ordinal()] = 1;
        f6294a[EntityState.NONE.ordinal()] = 2;
        f6294a[EntityState.UPDATE_NEEDED.ordinal()] = 3;
        f6294a[EntityState.PAUSE_BY_SYSTEM.ordinal()] = 4;
        f6294a[EntityState.PAUSE.ordinal()] = 5;
        f6294a[EntityState.INCOMPATIBLE.ordinal()] = 6;
        f6294a[EntityState.FAILED.ordinal()] = 7;
        f6294a[EntityState.DOWNLOADING.ordinal()] = 8;
        f6294a[EntityState.PREPARING.ordinal()] = 9;
        f6294a[EntityState.CHECKING.ordinal()] = 10;
        f6294a[EntityState.FAILED_STORAGE.ordinal()] = 11;
        f6294a[EntityState.FILE_EXISTS.ordinal()] = 12;
        f6294a[EntityState.COMPLETED.ordinal()] = 13;
        f6294a[EntityState.INSTALLED.ordinal()] = 14;
        f6294a[EntityState.IN_QUEUE.ordinal()] = 15;
        f6294a[EntityState.MALICIOUS_APP.ordinal()] = 16;
    }
}
