package org.eclipse.paho.a.a;

public class q {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f8799a;

    /* renamed from: b  reason: collision with root package name */
    boolean f8800b = true;
    private int c = 1;
    private boolean d = false;
    private boolean e = false;
    private int f;

    public static void validateQos(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException();
        }
    }

    public q() {
        setPayload(new byte[0]);
    }

    public q(byte[] bArr) {
        setPayload(bArr);
    }

    public byte[] getPayload() {
        return this.f8799a;
    }

    public void clearPayload() {
        a();
        this.f8799a = new byte[0];
    }

    public void setPayload(byte[] bArr) {
        a();
        if (bArr != null) {
            this.f8799a = (byte[]) bArr.clone();
            return;
        }
        throw new NullPointerException();
    }

    public boolean isRetained() {
        return this.d;
    }

    public void setRetained(boolean z) {
        a();
        this.d = z;
    }

    public int getQos() {
        return this.c;
    }

    public void setQos(int i) {
        a();
        validateQos(i);
        this.c = i;
    }

    public String toString() {
        return new String(this.f8799a);
    }

    private void a() throws IllegalStateException {
        if (!this.f8800b) {
            throw new IllegalStateException();
        }
    }

    /* access modifiers changed from: protected */
    public void setDuplicate(boolean z) {
        this.e = z;
    }

    public boolean isDuplicate() {
        return this.e;
    }

    public void setId(int i) {
        this.f = i;
    }

    public int getId() {
        return this.f;
    }
}
