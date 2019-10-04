package com.koushikdutta.async;

public class w extends k {
    static final /* synthetic */ boolean h = (!w.class.desiredAssertionStatus());

    public l filter(l lVar) {
        return lVar;
    }

    public w(q qVar) {
        super(qVar);
        setMaxBuffer(0);
    }

    public final void write(l lVar) {
        if (!isBuffering() || getMaxBuffer() == Integer.MAX_VALUE) {
            l filter = filter(lVar);
            if (h || lVar == null || filter == lVar || lVar.isEmpty()) {
                super.a(filter, true);
                if (lVar != null) {
                    lVar.recycle();
                }
                return;
            }
            throw new AssertionError();
        }
    }
}
