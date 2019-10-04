package c.c.a.e.d.r.b.a;

import b.c.a.c.a;
import com.farsitel.bazaar.data.entity.LocalCommentEntity;

/* compiled from: PostCommentLocalDataSource.kt */
final class i<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public static final i f5390a = new i();

    public final int a(LocalCommentEntity localCommentEntity) {
        if (localCommentEntity != null) {
            return localCommentEntity.getRate();
        }
        return 0;
    }

    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return Integer.valueOf(a((LocalCommentEntity) obj));
    }
}
