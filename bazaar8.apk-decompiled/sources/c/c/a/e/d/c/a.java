package c.c.a.e.d.c;

import android.content.Context;
import androidx.lifecycle.LiveData;
import c.c.a.e.d.r.b.a.j;
import c.c.a.e.d.r.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import i.a.I;
import java.util.List;

/* compiled from: AppDetailRepository.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Context f5024a;

    /* renamed from: b  reason: collision with root package name */
    public final c.c.a.e.d.c.a.a f5025b;

    /* renamed from: c  reason: collision with root package name */
    public final c f5026c;

    /* renamed from: d  reason: collision with root package name */
    public final j f5027d;

    public a(Context context, c.c.a.e.d.c.a.a aVar, c cVar, j jVar) {
        h.f.b.j.b(context, "context");
        h.f.b.j.b(aVar, "appDetailRemoteDataSource");
        h.f.b.j.b(cVar, "reviewRemoteDataSource");
        h.f.b.j.b(jVar, "postCommentLocalDataSource");
        this.f5024a = context;
        this.f5025b = aVar;
        this.f5026c = cVar;
        this.f5027d = jVar;
    }

    public final Object a(String str, String str2, int i2, int i3, b<? super Either<? extends List<? extends RecyclerData>>> bVar) {
        AppDetailRepository$getAppDetail$2 appDetailRepository$getAppDetail$2 = new AppDetailRepository$getAppDetail$2(this, str, str2, i2, i3, null);
        return I.a(appDetailRepository$getAppDetail$2, bVar);
    }

    public final LiveData<Integer> a(String str) {
        h.f.b.j.b(str, "packageName");
        return this.f5027d.a(str);
    }
}
