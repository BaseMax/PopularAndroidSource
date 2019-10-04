package com.google.android.gms.internal;

import com.google.android.gms.internal.sr;
import java.io.IOException;

public abstract class sr<M extends sr<M>> extends sx {

    /* renamed from: a  reason: collision with root package name */
    protected st f3519a;

    /* renamed from: zzdaf */
    public M clone() throws CloneNotSupportedException {
        M m = (sr) super.clone();
        sv.zza(this, (sr) m);
        return m;
    }

    public /* synthetic */ sx zzdag() throws CloneNotSupportedException {
        return (sr) clone();
    }

    /* access modifiers changed from: protected */
    public int a() {
        if (this.f3519a == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.f3519a.d; i2++) {
            i += this.f3519a.c[i2].a();
        }
        return i;
    }

    public void zza(sp spVar) throws IOException {
        if (this.f3519a != null) {
            for (int i = 0; i < this.f3519a.d; i++) {
                this.f3519a.c[i].a(spVar);
            }
        }
    }

    public final <T> T zza(ss<M, T> ssVar) {
        st stVar = this.f3519a;
        if (stVar == null) {
            return null;
        }
        su a2 = stVar.a(ssVar.tag >>> 3);
        if (a2 == null) {
            return null;
        }
        if (a2.f3525b == null) {
            a2.f3524a = ssVar;
            a2.f3525b = ssVar.a(a2.c);
            a2.c = null;
        } else if (!a2.f3524a.equals(ssVar)) {
            throw new IllegalStateException("Tried to getExtension with a different Extension.");
        }
        return a2.f3525b;
    }

    /* access modifiers changed from: protected */
    public final boolean a(so soVar, int i) throws IOException {
        int position = soVar.getPosition();
        if (!soVar.zzkq(i)) {
            return false;
        }
        int i2 = i >>> 3;
        sz szVar = new sz(i, soVar.zzal(position, soVar.getPosition() - position));
        su suVar = null;
        st stVar = this.f3519a;
        if (stVar == null) {
            this.f3519a = new st();
        } else {
            suVar = stVar.a(i2);
        }
        if (suVar == null) {
            suVar = new su();
            st stVar2 = this.f3519a;
            int c = stVar2.c(i2);
            if (c >= 0) {
                stVar2.c[c] = suVar;
            } else {
                int i3 = c ^ -1;
                if (i3 >= stVar2.d || stVar2.c[i3] != st.f3522a) {
                    if (stVar2.d >= stVar2.f3523b.length) {
                        int b2 = st.b(stVar2.d + 1);
                        int[] iArr = new int[b2];
                        su[] suVarArr = new su[b2];
                        System.arraycopy(stVar2.f3523b, 0, iArr, 0, stVar2.f3523b.length);
                        System.arraycopy(stVar2.c, 0, suVarArr, 0, stVar2.c.length);
                        stVar2.f3523b = iArr;
                        stVar2.c = suVarArr;
                    }
                    if (stVar2.d - i3 != 0) {
                        int[] iArr2 = stVar2.f3523b;
                        int i4 = i3 + 1;
                        System.arraycopy(iArr2, i3, iArr2, i4, stVar2.d - i3);
                        su[] suVarArr2 = stVar2.c;
                        System.arraycopy(suVarArr2, i3, suVarArr2, i4, stVar2.d - i3);
                    }
                    stVar2.f3523b[i3] = i2;
                    stVar2.c[i3] = suVar;
                    stVar2.d++;
                } else {
                    stVar2.f3523b[i3] = i2;
                    stVar2.c[i3] = suVar;
                }
            }
        }
        suVar.c.add(szVar);
        return true;
    }
}
