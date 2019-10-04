package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class su implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    ss<?, ?> f3524a;

    /* renamed from: b  reason: collision with root package name */
    Object f3525b;
    List<sz> c = new ArrayList();

    su() {
    }

    private final byte[] b() throws IOException {
        byte[] bArr = new byte[a()];
        a(sp.zzbf(bArr));
        return bArr;
    }

    /* access modifiers changed from: private */
    /* renamed from: c */
    public su clone() {
        Object clone;
        su suVar = new su();
        try {
            suVar.f3524a = this.f3524a;
            if (this.c == null) {
                suVar.c = null;
            } else {
                suVar.c.addAll(this.c);
            }
            if (this.f3525b != null) {
                if (this.f3525b instanceof sx) {
                    clone = (sx) ((sx) this.f3525b).clone();
                } else if (this.f3525b instanceof byte[]) {
                    clone = ((byte[]) this.f3525b).clone();
                } else {
                    int i = 0;
                    if (this.f3525b instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f3525b;
                        byte[][] bArr2 = new byte[bArr.length][];
                        suVar.f3525b = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.f3525b instanceof boolean[]) {
                        clone = ((boolean[]) this.f3525b).clone();
                    } else if (this.f3525b instanceof int[]) {
                        clone = ((int[]) this.f3525b).clone();
                    } else if (this.f3525b instanceof long[]) {
                        clone = ((long[]) this.f3525b).clone();
                    } else if (this.f3525b instanceof float[]) {
                        clone = ((float[]) this.f3525b).clone();
                    } else if (this.f3525b instanceof double[]) {
                        clone = ((double[]) this.f3525b).clone();
                    } else if (this.f3525b instanceof sx[]) {
                        sx[] sxVarArr = (sx[]) this.f3525b;
                        sx[] sxVarArr2 = new sx[sxVarArr.length];
                        suVar.f3525b = sxVarArr2;
                        while (i < sxVarArr.length) {
                            sxVarArr2[i] = (sx) sxVarArr[i].clone();
                            i++;
                        }
                    }
                }
                suVar.f3525b = clone;
            }
            return suVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* access modifiers changed from: package-private */
    public final int a() {
        Object obj = this.f3525b;
        if (obj != null) {
            ss<?, ?> ssVar = this.f3524a;
            if (!ssVar.f3521b) {
                return ssVar.a(obj);
            }
            int length = Array.getLength(obj);
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (Array.get(obj, i2) != null) {
                    i += ssVar.a(Array.get(obj, i2));
                }
            }
            return i;
        }
        int i3 = 0;
        for (sz next : this.c) {
            i3 += sp.zzlp(next.f3529a) + 0 + next.f3530b.length;
        }
        return i3;
    }

    /* access modifiers changed from: package-private */
    public final void a(sp spVar) throws IOException {
        Object obj = this.f3525b;
        if (obj != null) {
            ss<?, ?> ssVar = this.f3524a;
            if (ssVar.f3521b) {
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    Object obj2 = Array.get(obj, i);
                    if (obj2 != null) {
                        ssVar.a(obj2, spVar);
                    }
                }
                return;
            }
            ssVar.a(obj, spVar);
            return;
        }
        for (sz next : this.c) {
            spVar.zzmi(next.f3529a);
            spVar.zzbh(next.f3530b);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof su)) {
            return false;
        }
        su suVar = (su) obj;
        if (this.f3525b == null || suVar.f3525b == null) {
            List<sz> list = this.c;
            if (list != null) {
                List<sz> list2 = suVar.c;
                if (list2 != null) {
                    return list.equals(list2);
                }
            }
            try {
                return Arrays.equals(b(), suVar.b());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        } else {
            ss<?, ?> ssVar = this.f3524a;
            if (ssVar != suVar.f3524a) {
                return false;
            }
            if (!ssVar.f3520a.isArray()) {
                return this.f3525b.equals(suVar.f3525b);
            }
            Object obj2 = this.f3525b;
            return obj2 instanceof byte[] ? Arrays.equals((byte[]) obj2, (byte[]) suVar.f3525b) : obj2 instanceof int[] ? Arrays.equals((int[]) obj2, (int[]) suVar.f3525b) : obj2 instanceof long[] ? Arrays.equals((long[]) obj2, (long[]) suVar.f3525b) : obj2 instanceof float[] ? Arrays.equals((float[]) obj2, (float[]) suVar.f3525b) : obj2 instanceof double[] ? Arrays.equals((double[]) obj2, (double[]) suVar.f3525b) : obj2 instanceof boolean[] ? Arrays.equals((boolean[]) obj2, (boolean[]) suVar.f3525b) : Arrays.deepEquals((Object[]) obj2, (Object[]) suVar.f3525b);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(b()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
