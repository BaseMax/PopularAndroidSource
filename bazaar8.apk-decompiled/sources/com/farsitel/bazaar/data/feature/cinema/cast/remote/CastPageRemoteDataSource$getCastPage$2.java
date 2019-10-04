package com.farsitel.bazaar.data.feature.cinema.cast.remote;

import c.c.a.e.d.h.a.a.a;
import com.farsitel.bazaar.common.model.Page;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: CastPageRemoteDataSource.kt */
final class CastPageRemoteDataSource$getCastPage$2 extends Lambda implements b<a, Page> {

    /* renamed from: a  reason: collision with root package name */
    public static final CastPageRemoteDataSource$getCastPage$2 f12222a = new CastPageRemoteDataSource$getCastPage$2();

    public CastPageRemoteDataSource$getCastPage$2() {
        super(1);
    }

    public final Page a(a aVar) {
        j.b(aVar, "castPageResponseDto");
        return aVar.a();
    }
}
