package org.eclipse.paho.a.a.a.a;

import java.io.InputStream;

public final class v extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f8742a;

    /* renamed from: b  reason: collision with root package name */
    private int f8743b;
    private int c;
    private byte[] d;
    private int e;
    private int f;
    private int g = 0;

    public v(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        this.f8742a = (byte[]) bArr.clone();
        this.d = (byte[]) bArr2.clone();
        this.f8743b = i;
        this.e = i3;
        this.c = i2;
        this.f = i4;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v2, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v7, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v8, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: byte} */
    /* JADX WARNING: Failed to insert additional move for type inference */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int read() throws java.io.IOException {
        /*
            r4 = this;
            int r0 = r4.g
            int r1 = r4.c
            if (r0 >= r1) goto L_0x000e
            byte[] r1 = r4.f8742a
            int r2 = r4.f8743b
            int r2 = r2 + r0
            byte r0 = r1[r2]
            goto L_0x001b
        L_0x000e:
            int r2 = r4.f
            int r2 = r2 + r1
            if (r0 >= r2) goto L_0x0026
            byte[] r2 = r4.d
            int r3 = r4.e
            int r3 = r3 + r0
            int r3 = r3 - r1
            byte r0 = r2[r3]
        L_0x001b:
            if (r0 >= 0) goto L_0x001f
            int r0 = r0 + 256
        L_0x001f:
            int r1 = r4.g
            int r1 = r1 + 1
            r4.g = r1
            return r0
        L_0x0026:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.a.v.read():int");
    }
}
