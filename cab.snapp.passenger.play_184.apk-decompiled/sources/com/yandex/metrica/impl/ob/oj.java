package com.yandex.metrica.impl.ob;

public class oj extends oi<byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private nk f6481a;

    public /* bridge */ /* synthetic */ int a() {
        return super.a();
    }

    public /* bridge */ /* synthetic */ String b() {
        return super.b();
    }

    public oj(int i, String str) {
        this(i, str, nk.f());
    }

    public oj(int i, String str, nk nkVar) {
        super(i, str);
        this.f6481a = nkVar;
    }

    public byte[] a(byte[] bArr) {
        if (bArr.length <= a()) {
            return bArr;
        }
        byte[] bArr2 = new byte[a()];
        System.arraycopy(bArr, 0, bArr2, 0, a());
        nk nkVar = this.f6481a;
        if (nkVar != null && nkVar.b()) {
            this.f6481a.b("\"%s\" %s exceeded limit of %d bytes", b(), bArr, Integer.valueOf(a()));
        }
        return bArr2;
    }
}
