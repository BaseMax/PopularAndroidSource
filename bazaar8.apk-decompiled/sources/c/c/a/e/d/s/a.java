package c.c.a.e.d.s;

import c.c.a.e.b.e;
import com.farsitel.bazaar.data.dto.requestdto.EmptyRequestSingleDto;
import com.farsitel.bazaar.data.dto.requestdto.SearchPredictionParam;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.data.entity.SearchPrediction;
import h.c.b;
import h.f.b.j;
import java.util.List;

/* compiled from: SearchPredictionRemoteDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final e f5409a;

    /* renamed from: b  reason: collision with root package name */
    public final e f5410b;

    public a(e eVar, e eVar2) {
        j.b(eVar, "requestPropertiesDataSource");
        j.b(eVar2, "searchPredictionService");
        this.f5409a = eVar;
        this.f5410b = eVar2;
    }

    public final Object a(String str, b<? super Either<? extends List<? extends SearchPrediction>>> bVar) {
        return c.c.a.e.c.b.a(this.f5410b.a(new SearchPredictionParam(str)), SearchPredictionRemoteDataSource$predict$2.f12286a, bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object b(java.lang.String r5, h.c.b<? super h.h> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.data.feature.search.SearchPredictionRemoteDataSource$remove$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.data.feature.search.SearchPredictionRemoteDataSource$remove$1 r0 = (com.farsitel.bazaar.data.feature.search.SearchPredictionRemoteDataSource$remove$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.search.SearchPredictionRemoteDataSource$remove$1 r0 = new com.farsitel.bazaar.data.feature.search.SearchPredictionRemoteDataSource$remove$1
            r0.<init>(r4, r6)
        L_0x0018:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0039
            if (r2 != r3) goto L_0x0031
            java.lang.Object r5 = r0.L$1
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r5 = r0.L$0
            c.c.a.e.d.s.a r5 = (c.c.a.e.d.s.a) r5
            h.e.a((java.lang.Object) r6)
            goto L_0x0056
        L_0x0031:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x0039:
            h.e.a((java.lang.Object) r6)
            c.c.a.e.d.s.e r6 = r4.f5410b
            com.farsitel.bazaar.data.dto.requestdto.RemovePredictionParam r2 = new com.farsitel.bazaar.data.dto.requestdto.RemovePredictionParam
            r2.<init>(r5)
            l.b r6 = r6.a((com.farsitel.bazaar.data.dto.requestdto.RemovePredictionParam) r2)
            com.farsitel.bazaar.data.feature.search.SearchPredictionRemoteDataSource$remove$2 r2 = com.farsitel.bazaar.data.feature.search.SearchPredictionRemoteDataSource$remove$2.f12287a
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r5 = c.c.a.e.c.b.a(r6, r2, r0)
            if (r5 != r1) goto L_0x0056
            return r1
        L_0x0056:
            h.h r5 = h.h.f14579a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.s.a.b(java.lang.String, h.c.b):java.lang.Object");
    }

    public final Object a(b<? super Either<None>> bVar) {
        return c.c.a.e.c.b.a(this.f5410b.a(new EmptyRequestSingleDto()), SearchPredictionRemoteDataSource$clear$2.f12285a, bVar);
    }
}
