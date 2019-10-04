package com.yandex.metrica.impl.ob;

public class bs {

    /* renamed from: a  reason: collision with root package name */
    private Long f5900a;

    /* renamed from: b  reason: collision with root package name */
    private int f5901b;
    private nq c;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f5902a;

        /* renamed from: b  reason: collision with root package name */
        public final long f5903b;
        public final int c;

        public a(long j, long j2, int i) {
            this.f5902a = j;
            this.c = i;
            this.f5903b = j2;
        }
    }

    public bs() {
        this(new np());
    }

    public bs(nq nqVar) {
        this.c = nqVar;
    }

    public a a() {
        if (this.f5900a == null) {
            this.f5900a = Long.valueOf(this.c.b());
        }
        a aVar = new a(this.f5900a.longValue(), this.f5900a.longValue(), this.f5901b);
        this.f5901b++;
        return aVar;
    }
}
