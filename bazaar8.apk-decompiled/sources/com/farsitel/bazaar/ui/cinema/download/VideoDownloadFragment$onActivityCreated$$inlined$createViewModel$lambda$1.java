package com.farsitel.bazaar.ui.cinema.download;

import c.c.a.c.c.a;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.core.model.VideoDownloadState;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDownloadFragment.kt */
final class VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends List<? extends RecyclerData>>, h> {
    public final /* synthetic */ VideoDownloadFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1(VideoDownloadFragment videoDownloadFragment) {
        super(1);
        this.this$0 = videoDownloadFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<? extends List<? extends RecyclerData>>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<? extends List<? extends RecyclerData>> resource) {
        ResourceState resourceState = null;
        ResourceState d2 = resource != null ? resource.d() : null;
        if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
            this.this$0.Wa();
        } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
            this.this$0.a(resource.c());
            this.this$0.La();
        } else if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
            VideoDownloadFragment videoDownloadFragment = this.this$0;
            Object a2 = resource.a();
            if (a2 != null) {
                videoDownloadFragment.a((ArrayList<RecyclerData>) new ArrayList((Collection) a2));
            } else {
                j.a();
                throw null;
            }
        } else if (j.a((Object) d2, (Object) VideoDownloadState.Dismiss.f12182a)) {
            this.this$0.La();
        } else {
            a aVar = a.f4699b;
            StringBuilder sb = new StringBuilder();
            sb.append("unknown state in videoDownloadFragment ");
            if (resource != null) {
                resourceState = resource.d();
            }
            sb.append(resourceState);
            aVar.a(new Throwable(sb.toString()));
        }
    }
}
