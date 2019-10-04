package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ac.GoogleAdvertisingIdGetter;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.h;
import com.yandex.metrica.impl.ob.kz;
import java.util.List;

class ig extends kz {

    /* renamed from: a  reason: collision with root package name */
    private final hq f6155a;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final ma f6156a;

        /* renamed from: b  reason: collision with root package name */
        public final hq f6157b;

        public a(ma maVar, hq hqVar) {
            this.f6156a = maVar;
            this.f6157b = hqVar;
        }
    }

    protected static class b implements kz.d<ig, a> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f6158a;

        protected b(Context context) {
            this.f6158a = context;
        }

        public ig a(a aVar) {
            ig igVar = new ig(aVar.f6157b, (byte) 0);
            Context context = this.f6158a;
            igVar.d(bv.b(context, context.getPackageName()));
            Context context2 = this.f6158a;
            igVar.c(bv.a(context2, context2.getPackageName()));
            igVar.a(aVar.f6156a);
            igVar.a(h.a(this.f6158a));
            igVar.b(this.f6158a.getPackageName());
            igVar.e(aVar.f6156a.f6416a);
            igVar.f(aVar.f6156a.f6417b);
            igVar.a(GoogleAdvertisingIdGetter.a().c(this.f6158a));
            return igVar;
        }
    }

    /* synthetic */ ig(hq hqVar, byte b2) {
        this(hqVar);
    }

    private ig(hq hqVar) {
        this.f6155a = hqVar;
    }

    public hq a() {
        return this.f6155a;
    }

    /* access modifiers changed from: package-private */
    public List<String> b() {
        return d().g;
    }
}
