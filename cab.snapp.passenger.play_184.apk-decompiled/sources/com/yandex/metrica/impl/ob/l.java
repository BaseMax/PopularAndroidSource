package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.j;

public class l<T extends j> {

    /* renamed from: a  reason: collision with root package name */
    private final k<T> f6354a;

    /* renamed from: b  reason: collision with root package name */
    private final i<T> f6355b;

    public static final class a<T extends j> {

        /* renamed from: a  reason: collision with root package name */
        final k<T> f6356a;

        /* renamed from: b  reason: collision with root package name */
        i<T> f6357b;

        a(k<T> kVar) {
            this.f6356a = kVar;
        }

        public final a<T> a(i<T> iVar) {
            this.f6357b = iVar;
            return this;
        }

        public final l<T> a() {
            return new l<>(this, (byte) 0);
        }
    }

    /* synthetic */ l(a aVar, byte b2) {
        this(aVar);
    }

    private l(a aVar) {
        this.f6354a = aVar.f6356a;
        this.f6355b = aVar.f6357b;
    }

    public final void a(j jVar) {
        this.f6354a.a(jVar);
    }

    /* access modifiers changed from: package-private */
    public final boolean b(j jVar) {
        i<T> iVar = this.f6355b;
        if (iVar == null) {
            return false;
        }
        return iVar.a(jVar);
    }

    public static <T extends j> a<T> a(k<T> kVar) {
        return new a<>(kVar);
    }
}
