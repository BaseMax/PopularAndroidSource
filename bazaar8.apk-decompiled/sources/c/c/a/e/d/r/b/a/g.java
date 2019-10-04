package c.c.a.e.d.r.b.a;

import android.database.Cursor;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import c.c.a.e.f.e;
import c.c.a.e.f.f;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.entity.LocalCommentEntity;
import java.util.concurrent.Callable;

/* compiled from: CommentDao_Impl */
class g implements Callable<LocalCommentEntity> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f5382a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ h f5383b;

    public g(h hVar, x xVar) {
        this.f5383b = hVar;
        this.f5382a = xVar;
    }

    public void finalize() {
        this.f5382a.c();
    }

    public LocalCommentEntity call() {
        LocalCommentEntity localCommentEntity;
        Long l2;
        Integer num;
        Cursor a2 = b.a(this.f5383b.f5384a, this.f5382a, false);
        try {
            int a3 = a.a(a2, "id");
            int a4 = a.a(a2, "entityId");
            int a5 = a.a(a2, "entityVersion");
            int a6 = a.a(a2, "text");
            int a7 = a.a(a2, "rate");
            int a8 = a.a(a2, "entityType");
            int a9 = a.a(a2, "entityDatabaseStatus");
            Integer num2 = null;
            if (a2.moveToFirst()) {
                if (a2.isNull(a3)) {
                    l2 = null;
                } else {
                    l2 = Long.valueOf(a2.getLong(a3));
                }
                String string = a2.getString(a4);
                long j2 = a2.getLong(a5);
                String string2 = a2.getString(a6);
                int i2 = a2.getInt(a7);
                if (a2.isNull(a8)) {
                    num = null;
                } else {
                    num = Integer.valueOf(a2.getInt(a8));
                }
                EntityType a10 = f.a(num.intValue());
                if (!a2.isNull(a9)) {
                    num2 = Integer.valueOf(a2.getInt(a9));
                }
                localCommentEntity = new LocalCommentEntity(l2, string, j2, string2, i2, a10, e.a(num2.intValue()));
            } else {
                localCommentEntity = null;
            }
            return localCommentEntity;
        } finally {
            a2.close();
        }
    }
}
