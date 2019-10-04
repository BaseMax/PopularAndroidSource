package c.c.a.e.d.r.a.a;

import com.farsitel.bazaar.data.entity.CommentAction;

public final /* synthetic */ class i {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f5346a = new int[CommentAction.values().length];

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f5347b = new int[CommentAction.values().length];

    static {
        f5346a[CommentAction.UP_VOTE.ordinal()] = 1;
        f5346a[CommentAction.DOWN_VOTE.ordinal()] = 2;
        f5346a[CommentAction.REPORT.ordinal()] = 3;
        f5347b[CommentAction.DOWN_VOTE.ordinal()] = 1;
        f5347b[CommentAction.UP_VOTE.ordinal()] = 2;
        f5347b[CommentAction.REPORT.ordinal()] = 3;
    }
}
