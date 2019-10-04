package com.google.zxing;

public final class c extends k {
    private static final c c;

    static {
        c cVar = new c();
        c = cVar;
        cVar.setStackTrace(f4354b);
    }

    private c() {
    }

    private c(Throwable th) {
        super(th);
    }

    public static c getChecksumInstance() {
        return f4353a ? new c() : c;
    }

    public static c getChecksumInstance(Throwable th) {
        return f4353a ? new c(th) : c;
    }
}
