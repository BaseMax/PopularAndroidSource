package com.farsitel.bazaar.data.feature.bookmark.remote;

import c.c.a.e.d.d.b.d;
import c.c.a.e.d.d.b.f;
import com.farsitel.bazaar.common.model.bookmark.BookmarkModel;
import h.a.m;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: BookmarkRemoteDataSource.kt */
final class BookmarkRemoteDataSource$syncBookmark$2 extends Lambda implements b<d, List<? extends BookmarkModel>> {

    /* renamed from: a  reason: collision with root package name */
    public static final BookmarkRemoteDataSource$syncBookmark$2 f12218a = new BookmarkRemoteDataSource$syncBookmark$2();

    public BookmarkRemoteDataSource$syncBookmark$2() {
        super(1);
    }

    public final List<BookmarkModel> a(d dVar) {
        j.b(dVar, "response");
        List<f> a2 = dVar.a();
        ArrayList arrayList = new ArrayList(m.a(a2, 10));
        for (f a3 : a2) {
            arrayList.add(a3.a());
        }
        return arrayList;
    }
}
