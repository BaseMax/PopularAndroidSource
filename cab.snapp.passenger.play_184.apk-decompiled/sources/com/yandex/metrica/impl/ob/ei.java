package com.yandex.metrica.impl.ob;

public final class ei {

    /* renamed from: a  reason: collision with root package name */
    private final en f5955a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f5956b;

    static final class a {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public en f5957a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public Integer f5958b;

        /* synthetic */ a(en enVar, byte b2) {
            this(enVar);
        }

        private a(en enVar) {
            this.f5957a = enVar;
        }

        public final a a(int i) {
            this.f5958b = Integer.valueOf(i);
            return this;
        }

        public final ei a() {
            return new ei(this, (byte) 0);
        }
    }

    /* synthetic */ ei(a aVar, byte b2) {
        this(aVar);
    }

    private ei(a aVar) {
        this.f5955a = aVar.f5957a;
        this.f5956b = aVar.f5958b;
    }

    public static final a a(en enVar) {
        return new a(enVar, (byte) 0);
    }

    public final en a() {
        return this.f5955a;
    }

    public final Integer b() {
        return this.f5956b;
    }
}
