package c.c.a.n.p;

import com.farsitel.bazaar.common.model.login.LoginType;

/* renamed from: c.c.a.n.p.b  reason: case insensitive filesystem */
public final /* synthetic */ class C0675b {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6729a = new int[LoginType.values().length];

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f6730b = new int[LoginType.values().length];

    static {
        f6729a[LoginType.MERGE_ACCOUNT.ordinal()] = 1;
        f6730b[LoginType.IN_APP_PURCHASE.ordinal()] = 1;
        f6730b[LoginType.IN_APP_REVIEW.ordinal()] = 2;
    }
}
