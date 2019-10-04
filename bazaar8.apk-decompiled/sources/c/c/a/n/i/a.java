package c.c.a.n.i;

import com.farsitel.bazaar.common.model.ui.EntityState;

public final /* synthetic */ class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6422a = new int[EntityState.values().length];

    static {
        f6422a[EntityState.UNDEFINED.ordinal()] = 1;
        f6422a[EntityState.NONE.ordinal()] = 2;
        f6422a[EntityState.PAUSE_BY_SYSTEM.ordinal()] = 3;
        f6422a[EntityState.PAUSE.ordinal()] = 4;
        f6422a[EntityState.FAILED.ordinal()] = 5;
        f6422a[EntityState.DOWNLOADING.ordinal()] = 6;
        f6422a[EntityState.PREPARING.ordinal()] = 7;
        f6422a[EntityState.CHECKING.ordinal()] = 8;
        f6422a[EntityState.COMPLETED.ordinal()] = 9;
        f6422a[EntityState.FAILED_STORAGE.ordinal()] = 10;
        f6422a[EntityState.FILE_EXISTS.ordinal()] = 11;
    }
}
