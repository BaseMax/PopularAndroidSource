package com.google.zxing;

public final class d extends k {
    private static final d c;

    static {
        d dVar = new d();
        c = dVar;
        dVar.setStackTrace(f4354b);
    }

    private d() {
    }

    private d(Throwable th) {
        super(th);
    }

    public static d getFormatInstance() {
        return f4353a ? new d() : c;
    }

    public static d getFormatInstance(Throwable th) {
        return f4353a ? new d(th) : c;
    }
}
