package com.yandex.metrica.impl.ob;

public class eg {

    /* renamed from: a  reason: collision with root package name */
    private final en f5949a;

    /* renamed from: b  reason: collision with root package name */
    private final Long f5950b;
    private final Long c;
    private final Integer d;
    private final Long e;
    private final Boolean f;
    private final Long g;
    private final Long h;

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Long f5951a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public en f5952b;
        /* access modifiers changed from: private */
        public Long c;
        /* access modifiers changed from: private */
        public Long d;
        /* access modifiers changed from: private */
        public Integer e;
        /* access modifiers changed from: private */
        public Long f;
        /* access modifiers changed from: private */
        public Boolean g;
        /* access modifiers changed from: private */
        public Long h;

        /* synthetic */ a(ei eiVar, byte b2) {
            this(eiVar);
        }

        private a(ei eiVar) {
            this.f5952b = eiVar.a();
            this.e = eiVar.b();
        }

        public final a a(Long l) {
            this.c = l;
            return this;
        }

        public final a b(Long l) {
            this.d = l;
            return this;
        }

        public final a c(Long l) {
            this.f = l;
            return this;
        }

        public final a a(Boolean bool) {
            this.g = bool;
            return this;
        }

        public final a d(Long l) {
            this.h = l;
            return this;
        }

        public final a e(Long l) {
            this.f5951a = l;
            return this;
        }

        public final eg a() {
            return new eg(this, (byte) 0);
        }
    }

    /* synthetic */ eg(a aVar, byte b2) {
        this(aVar);
    }

    private eg(a aVar) {
        this.f5949a = aVar.f5952b;
        this.d = aVar.e;
        this.f5950b = aVar.c;
        this.c = aVar.d;
        this.e = aVar.f;
        this.f = aVar.g;
        this.g = aVar.h;
        this.h = aVar.f5951a;
    }

    public en a() {
        return this.f5949a;
    }

    public long a(long j) {
        Long l = this.f5950b;
        return l == null ? j : l.longValue();
    }

    public long b(long j) {
        Long l = this.c;
        return l == null ? j : l.longValue();
    }

    public int a(int i) {
        Integer num = this.d;
        return num == null ? i : num.intValue();
    }

    public long c(long j) {
        Long l = this.e;
        return l == null ? j : l.longValue();
    }

    public boolean a(boolean z) {
        Boolean bool = this.f;
        return bool == null ? z : bool.booleanValue();
    }

    public long d(long j) {
        Long l = this.g;
        return l == null ? j : l.longValue();
    }

    public long e(long j) {
        Long l = this.h;
        return l == null ? j : l.longValue();
    }
}
