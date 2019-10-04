package com.a.a.c.a.a;

public final class f {
    public static final int IMPORTANCE_CRASHED_THREAD = 4;
    public final a[] frames;
    public final int importance;
    public final String name;

    public static final class a {
        public final long address;
        public final String file;
        public final int importance;
        public final long offset;
        public final String symbol;

        public a(long j, int i) {
            this(j, "", i);
        }

        public a(long j, String str, int i) {
            this(j, str, "", 0, i);
        }

        public a(long j, String str, String str2, long j2, int i) {
            this.address = j;
            this.symbol = str;
            this.file = str2;
            this.offset = j2;
            this.importance = i;
        }
    }

    public f(int i, a[] aVarArr) {
        this(null, i, aVarArr);
    }

    public f(String str, int i, a[] aVarArr) {
        this.name = str;
        this.importance = i;
        this.frames = aVarArr;
    }
}
