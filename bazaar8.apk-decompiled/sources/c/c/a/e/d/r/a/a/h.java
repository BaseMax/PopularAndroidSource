package c.c.a.e.d.r.a.a;

import com.farsitel.bazaar.data.entity.CommentAction;
import com.farsitel.bazaar.data.entity.CommentActionEntity;
import com.farsitel.bazaar.data.entity.EntityType;
import h.f.b.j;

/* compiled from: CommentActionEntity.kt */
public final class h {
    public static final CommentActionEntity a(l lVar) {
        j.b(lVar, "$this$toCommentActionEntity");
        CommentActionEntity commentActionEntity = new CommentActionEntity(lVar.d(), lVar.e(), CommentAction.valueOf(lVar.a()), lVar.f(), EntityType.values()[lVar.c()], lVar.b());
        return commentActionEntity;
    }
}
