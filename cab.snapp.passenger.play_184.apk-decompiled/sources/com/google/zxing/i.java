package com.google.zxing;

import com.pusher.java_websocket.drafts.c;
import org.eclipse.paho.a.a.a.a.u;

public final class i extends f {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f4351a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4352b;
    private final int c;
    private final int d;
    private final int e;

    public final boolean isCropSupported() {
        return true;
    }

    public i(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(i5, i6);
        if (i3 + i5 > i || i4 + i6 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.f4351a = bArr;
        this.f4352b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        if (z) {
            a(i5, i6);
        }
    }

    public final byte[] getRow(int i, byte[] bArr) {
        if (i < 0 || i >= getHeight()) {
            throw new IllegalArgumentException("Requested row is outside the image: ".concat(String.valueOf(i)));
        }
        int width = getWidth();
        if (bArr == null || bArr.length < width) {
            bArr = new byte[width];
        }
        System.arraycopy(this.f4351a, ((i + this.e) * this.f4352b) + this.d, bArr, 0, width);
        return bArr;
    }

    public final byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        if (width == this.f4352b && height == this.c) {
            return this.f4351a;
        }
        int i = width * height;
        byte[] bArr = new byte[i];
        int i2 = this.e;
        int i3 = this.f4352b;
        int i4 = (i2 * i3) + this.d;
        if (width == i3) {
            System.arraycopy(this.f4351a, i4, bArr, 0, i);
            return bArr;
        }
        for (int i5 = 0; i5 < height; i5++) {
            System.arraycopy(this.f4351a, i4, bArr, i5 * width, width);
            i4 += this.f4352b;
        }
        return bArr;
    }

    public final f crop(int i, int i2, int i3, int i4) {
        i iVar = new i(this.f4351a, this.f4352b, this.c, this.d + i, this.e + i2, i3, i4, false);
        return iVar;
    }

    public final int[] renderThumbnail() {
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int[] iArr = new int[(width * height)];
        byte[] bArr = this.f4351a;
        int i = (this.e * this.f4352b) + this.d;
        for (int i2 = 0; i2 < height; i2++) {
            int i3 = i2 * width;
            for (int i4 = 0; i4 < width; i4++) {
                iArr[i3 + i4] = ((bArr[(i4 << 1) + i] & c.END_OF_FRAME) * u.MESSAGE_TYPE_CONNECT) | -16777216;
            }
            i += this.f4352b << 1;
        }
        return iArr;
    }

    public final int getThumbnailWidth() {
        return getWidth() / 2;
    }

    public final int getThumbnailHeight() {
        return getHeight() / 2;
    }

    private void a(int i, int i2) {
        byte[] bArr = this.f4351a;
        int i3 = (this.e * this.f4352b) + this.d;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = (i / 2) + i3;
            int i6 = (i3 + i) - 1;
            int i7 = i3;
            while (i7 < i5) {
                byte b2 = bArr[i7];
                bArr[i7] = bArr[i6];
                bArr[i6] = b2;
                i7++;
                i6--;
            }
            i4++;
            i3 += this.f4352b;
        }
    }
}
