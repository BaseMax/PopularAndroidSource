package org.eclipse.paho.a.a;

public final class o extends v implements f {
    public o() {
    }

    public o(String str) {
        super(str);
    }

    public final q getMessage() throws p {
        return this.internalTok.getMessage();
    }

    /* access modifiers changed from: protected */
    public final void a(q qVar) {
        this.internalTok.setMessage(qVar);
    }
}
