package com.koushikdutta.async.http.e;

import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.v;
import java.nio.ByteBuffer;

public class f extends v {
    static final /* synthetic */ boolean m = (!f.class.desiredAssertionStatus());
    private byte[] d;
    int l = 2;

    /* access modifiers changed from: protected */
    public void onBoundaryEnd() {
    }

    /* access modifiers changed from: protected */
    public void onBoundaryStart() {
    }

    public void setBoundary(String str) {
        this.d = "\r\n--".concat(String.valueOf(str)).getBytes();
    }

    public String getBoundary() {
        byte[] bArr = this.d;
        if (bArr == null) {
            return null;
        }
        return new String(bArr, 4, bArr.length - 4);
    }

    public String getBoundaryStart() {
        if (m || this.d != null) {
            byte[] bArr = this.d;
            return new String(bArr, 2, bArr.length - 2);
        }
        throw new AssertionError();
    }

    public String getBoundaryEnd() {
        if (m || this.d != null) {
            return getBoundaryStart() + "--\r\n";
        }
        throw new AssertionError();
    }

    public void onDataAvailable(n nVar, l lVar) {
        if (this.l > 0) {
            ByteBuffer obtain = l.obtain(this.d.length);
            obtain.put(this.d, 0, this.l);
            obtain.flip();
            lVar.addFirst(obtain);
            this.l = 0;
        }
        byte[] bArr = new byte[lVar.remaining()];
        lVar.get(bArr);
        int i = 0;
        int i2 = 0;
        while (i < bArr.length) {
            int i3 = this.l;
            if (i3 >= 0) {
                byte b2 = bArr[i];
                byte[] bArr2 = this.d;
                if (b2 == bArr2[i3]) {
                    this.l = i3 + 1;
                    if (this.l == bArr2.length) {
                        this.l = -1;
                    }
                } else if (i3 > 0) {
                    i -= i3;
                    this.l = 0;
                }
            } else if (i3 == -1) {
                if (bArr[i] == 13) {
                    this.l = -4;
                    int length = (i - i2) - this.d.length;
                    if (!(i2 == 0 && length == 0)) {
                        ByteBuffer put = l.obtain(length).put(bArr, i2, length);
                        put.flip();
                        l lVar2 = new l();
                        lVar2.add(put);
                        super.onDataAvailable(this, lVar2);
                    }
                    onBoundaryStart();
                } else if (bArr[i] == 45) {
                    this.l = -2;
                } else {
                    report(new i("Invalid multipart/form-data. Expected \r or -"));
                    return;
                }
            } else if (i3 == -2) {
                if (bArr[i] == 45) {
                    this.l = -3;
                } else {
                    report(new i("Invalid multipart/form-data. Expected -"));
                    return;
                }
            } else if (i3 == -3) {
                if (bArr[i] == 13) {
                    this.l = -4;
                    int i4 = i - i2;
                    ByteBuffer put2 = l.obtain((i4 - this.d.length) - 2).put(bArr, i2, (i4 - this.d.length) - 2);
                    put2.flip();
                    l lVar3 = new l();
                    lVar3.add(put2);
                    super.onDataAvailable(this, lVar3);
                    onBoundaryEnd();
                } else {
                    report(new i("Invalid multipart/form-data. Expected \r"));
                    return;
                }
            } else if (i3 == -4) {
                if (bArr[i] == 10) {
                    i2 = i + 1;
                    this.l = 0;
                } else {
                    report(new i("Invalid multipart/form-data. Expected \n"));
                }
            } else if (m) {
                report(new i("Invalid multipart/form-data. Unknown state?"));
            } else {
                throw new AssertionError();
            }
            i++;
        }
        if (i2 < bArr.length) {
            int max = Math.max(this.l, 0);
            ByteBuffer put3 = l.obtain((bArr.length - i2) - max).put(bArr, i2, (bArr.length - i2) - max);
            put3.flip();
            l lVar4 = new l();
            lVar4.add(put3);
            super.onDataAvailable(this, lVar4);
        }
    }
}
