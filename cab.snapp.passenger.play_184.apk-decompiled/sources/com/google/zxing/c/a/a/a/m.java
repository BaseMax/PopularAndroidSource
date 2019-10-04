package com.google.zxing.c.a.a.a;

final class m {

    /* renamed from: a  reason: collision with root package name */
    int f4253a = 0;

    /* renamed from: b  reason: collision with root package name */
    int f4254b = a.NUMERIC$1376b33b;

    enum a {
        ;
        
        public static final int ALPHA$1376b33b = 2;
        public static final int ISO_IEC_646$1376b33b = 3;
        public static final int NUMERIC$1376b33b = 1;

        static {
            f4255a = new int[]{NUMERIC$1376b33b, ALPHA$1376b33b, ISO_IEC_646$1376b33b};
        }

        public static int[] values$3fa6840b() {
            return (int[]) f4255a.clone();
        }
    }

    m() {
    }

    /* access modifiers changed from: package-private */
    public final void a(int i) {
        this.f4253a += i;
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        return this.f4254b == a.ALPHA$1376b33b;
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        return this.f4254b == a.ISO_IEC_646$1376b33b;
    }
}
