package c.c.a.e.d.k;

import com.farsitel.bazaar.common.model.inline.InlineAppInfo;
import com.farsitel.bazaar.common.model.inline.InlineRelayService;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;

/* compiled from: InlineRepository.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final a f5225a;

    public c(a aVar) {
        j.b(aVar, "dataSource");
        this.f5225a = aVar;
    }

    public final Object a(String str, b<? super Either<InlineAppInfo>> bVar) {
        return this.f5225a.a(str, bVar);
    }

    public final Object a(InlineRelayService inlineRelayService, b<? super Either<String>> bVar) {
        return this.f5225a.a(inlineRelayService, bVar);
    }
}
