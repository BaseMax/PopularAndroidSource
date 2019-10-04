package c.c.a.n.j.k.a;

import com.farsitel.bazaar.common.model.ui.EntityState;

public final /* synthetic */ class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6619a = new int[EntityState.values().length];

    static {
        f6619a[EntityState.UNDEFINED.ordinal()] = 1;
        f6619a[EntityState.NONE.ordinal()] = 2;
        f6619a[EntityState.PAUSE_BY_SYSTEM.ordinal()] = 3;
        f6619a[EntityState.PAUSE.ordinal()] = 4;
        f6619a[EntityState.COMPLETED.ordinal()] = 5;
        f6619a[EntityState.FAILED.ordinal()] = 6;
        f6619a[EntityState.DOWNLOADING.ordinal()] = 7;
        f6619a[EntityState.PREPARING.ordinal()] = 8;
        f6619a[EntityState.CHECKING.ordinal()] = 9;
        f6619a[EntityState.FILE_EXISTS.ordinal()] = 10;
        f6619a[EntityState.IN_QUEUE.ordinal()] = 11;
    }
}
