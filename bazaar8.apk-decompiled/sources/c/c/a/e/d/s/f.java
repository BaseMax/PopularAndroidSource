package c.c.a.e.d.s;

import c.c.a.c.b.i;
import c.c.a.e.b.e;
import com.farsitel.bazaar.data.dto.requestdto.SearchRequestDto;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.SearchItems;
import h.c.b;
import h.f.b.j;

/* compiled from: SearchRemoteDataSource.kt */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final e f5415a;

    /* renamed from: b  reason: collision with root package name */
    public final j f5416b;

    public f(e eVar, j jVar) {
        j.b(eVar, "requestPropertiesDataSource");
        j.b(jVar, "searchService");
        this.f5415a = eVar;
        this.f5416b = jVar;
    }

    public final Object a(String str, String str2, int i2, String str3, b<? super Either<SearchItems>> bVar) {
        return c.c.a.e.c.b.a(this.f5416b.a(a(str, str2, i2, str3)), SearchRemoteDataSource$search$2.f12288a, bVar);
    }

    public final SearchRequestDto a(String str, String str2, int i2, String str3) {
        SearchRequestDto searchRequestDto = new SearchRequestDto(str, str2, this.f5415a.a(), i2, i.g(str3));
        return searchRequestDto;
    }
}
