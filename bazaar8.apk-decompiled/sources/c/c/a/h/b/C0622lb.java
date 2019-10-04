package c.c.a.h.b;

import c.c.a.c.f.a.a.a;
import com.farsitel.bazaar.data.entity.RequestProperties;
import kotlin.Pair;

/* renamed from: c.c.a.h.b.lb  reason: case insensitive filesystem */
/* compiled from: RetrofitModule.kt */
public final class C0622lb implements a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RetrofitModule$gsonConverterFactory$1 f5992a;

    public C0622lb(RetrofitModule$gsonConverterFactory$1 retrofitModule$gsonConverterFactory$1) {
        this.f5992a = retrofitModule$gsonConverterFactory$1;
    }

    public <T> Pair<String, RequestProperties> a(T t) {
        return new Pair<>("properties", this.f5992a.$requestPropertiesRepository.a());
    }
}
