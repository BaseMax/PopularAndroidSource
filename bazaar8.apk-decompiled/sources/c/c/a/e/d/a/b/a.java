package c.c.a.e.d.a.b;

import c.c.a.e.d.a.b.a.c;
import c.c.a.e.d.a.b.a.d;
import c.c.a.e.d.a.b.a.e;
import c.c.a.e.d.a.b.a.g;
import c.c.a.e.d.a.b.a.h;
import c.c.a.e.d.a.b.a.i;
import c.c.a.e.d.a.b.a.k;
import c.c.a.e.g.f;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.LoginResponse;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.data.entity.WaitingTime;
import h.c.b;
import h.f.b.j;

/* compiled from: AccountRemoteDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final c f4925a;

    public a(c cVar) {
        j.b(cVar, "service");
        this.f4925a = cVar;
    }

    public final Object a(String str, b<? super Either<None>> bVar) {
        return c.c.a.e.c.b.a(this.f4925a.a(new c.c.a.e.d.a.b.a.a(str)), AccountRemoteDataSource$changePhoneNumber$2.f12203a, bVar);
    }

    public final Object b(String str, String str2, b<? super Either<f>> bVar) {
        return c.c.a.e.c.b.a(this.f4925a.a(new h(str, str2)), AccountRemoteDataSource$registerDeviceAndGetInfo$2.f12209a, bVar);
    }

    public final Object c(String str, b<? super Either<WaitingTime>> bVar) {
        return c.c.a.e.c.b.a(this.f4925a.a(new d(str)), AccountRemoteDataSource$getOtpToken$2.f12205a, bVar);
    }

    public final Object d(String str, String str2, b<? super Either<LoginResponse>> bVar) {
        return c.c.a.e.c.b.a(this.f4925a.a(new k(str, str2)), AccountRemoteDataSource$verifyOtpToken$2.f12212a, bVar);
    }

    public final Object e(String str, b<? super Either<None>> bVar) {
        return c.c.a.e.c.b.a(this.f4925a.a(new i(str)), AccountRemoteDataSource$setNickName$2.f12210a, bVar);
    }

    public final Object b(String str, b<? super Either<WaitingTime>> bVar) {
        return c.c.a.e.c.b.a(this.f4925a.a(new c(str)), AccountRemoteDataSource$getMergeAccountOtpToken$2.f12204a, bVar);
    }

    public final Object d(String str, b<? super Either<None>> bVar) {
        return c.c.a.e.c.b.a(this.f4925a.a(new c.c.a.e.d.a.b.a.f(str)), AccountRemoteDataSource$logout$2.f12207a, bVar);
    }

    public final Object a(b<? super Either<c.c.a.e.d.a.b.b.f>> bVar) {
        return c.c.a.e.c.b.a(this.f4925a.a(new e()), AccountRemoteDataSource$getUserInfo$2.f12206a, bVar);
    }

    public final Object c(String str, String str2, b<? super Either<None>> bVar) {
        return c.c.a.e.c.b.a(this.f4925a.a(new c.c.a.e.d.a.b.a.j(str, str2)), AccountRemoteDataSource$verifyEmailOtpToken$2.f12211a, bVar);
    }

    public final Object a(String str, String str2, b<? super Either<c.c.a.e.d.m.a>> bVar) {
        return c.c.a.e.c.b.a(this.f4925a.a(new g(str, str2)), AccountRemoteDataSource$mergeAccount$2.f12208a, bVar);
    }
}
