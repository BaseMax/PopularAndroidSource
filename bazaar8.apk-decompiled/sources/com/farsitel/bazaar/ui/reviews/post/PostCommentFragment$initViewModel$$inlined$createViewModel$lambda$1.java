package com.farsitel.bazaar.ui.reviews.post;

import c.c.a.n.u.b.a;
import com.farsitel.bazaar.core.model.PostCommentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: PostCommentFragment.kt */
final class PostCommentFragment$initViewModel$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends ResourceState>, h> {
    public final /* synthetic */ a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PostCommentFragment$initViewModel$$inlined$createViewModel$lambda$1(a aVar) {
        super(1);
        this.this$0 = aVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends ResourceState>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<? extends ResourceState> resource) {
        ResourceState d2 = resource != null ? resource.d() : null;
        if (j.a((Object) d2, (Object) PostCommentState.OpenNickName.f12173a)) {
            this.this$0.kb();
        } else if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
            this.this$0.ib();
        }
    }
}
