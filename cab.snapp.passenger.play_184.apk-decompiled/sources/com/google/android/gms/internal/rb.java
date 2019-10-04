package com.google.android.gms.internal;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.IOException;
import java.util.ArrayList;

final class rb extends ou {
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f3486b;
    private final int c;
    /* access modifiers changed from: private */
    public final ou d;
    /* access modifiers changed from: private */
    public final ou e;
    private final int f;
    private final int g;

    static {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 1;
        while (i > 0) {
            arrayList.add(Integer.valueOf(i));
            int i3 = i2 + i;
            i2 = i;
            i = i3;
        }
        arrayList.add(Integer.valueOf(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED));
        f3486b = new int[arrayList.size()];
        int i4 = 0;
        while (true) {
            int[] iArr = f3486b;
            if (i4 < iArr.length) {
                iArr[i4] = ((Integer) arrayList.get(i4)).intValue();
                i4++;
            } else {
                return;
            }
        }
    }

    private rb(ou ouVar, ou ouVar2) {
        this.d = ouVar;
        this.e = ouVar2;
        this.f = ouVar.size();
        this.c = this.f + ouVar2.size();
        this.g = Math.max(ouVar.a(), ouVar2.a()) + 1;
    }

    /* synthetic */ rb(ou ouVar, ou ouVar2, byte b2) {
        this(ouVar, ouVar2);
    }

    private static ou b(ou ouVar, ou ouVar2) {
        int size = ouVar.size();
        int size2 = ouVar2.size();
        byte[] bArr = new byte[(size + size2)];
        ouVar.zza(bArr, 0, 0, size);
        ouVar2.zza(bArr, 0, size, size2);
        return ou.a(bArr);
    }

    /* access modifiers changed from: protected */
    public final int a() {
        return this.g;
    }

    /* access modifiers changed from: protected */
    public final int a(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.f;
        if (i4 <= i5) {
            return this.d.a(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.e.a(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.e.a(this.d.a(i, i2, i6), 0, i3 - i6);
    }

    /* access modifiers changed from: package-private */
    public final void a(ot otVar) throws IOException {
        this.d.a(otVar);
        this.e.a(otVar);
    }

    /* access modifiers changed from: protected */
    public final void a(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.f;
        if (i4 <= i5) {
            this.d.a(bArr, i, i2, i3);
        } else if (i >= i5) {
            this.e.a(bArr, i - i5, i2, i3);
        } else {
            int i6 = i5 - i;
            this.d.a(bArr, i, i2, i6);
            this.e.a(bArr, 0, i2 + i6, i3 - i6);
        }
    }

    /* access modifiers changed from: protected */
    public final boolean b() {
        return this.c >= f3486b[this.g];
    }

    public final int size() {
        return this.c;
    }

    public final pd zzcvm() {
        return pd.zzi(new re(this));
    }

    public final byte zzkn(int i) {
        a(i, this.c);
        int i2 = this.f;
        return i < i2 ? this.d.zzkn(i) : this.e.zzkn(i - i2);
    }

    public final ou zzx(int i, int i2) {
        int b2 = b(i, i2, this.c);
        if (b2 == 0) {
            return ou.zzpfg;
        }
        if (b2 == this.c) {
            return this;
        }
        int i3 = this.f;
        if (i2 <= i3) {
            return this.d.zzx(i, i2);
        }
        if (i >= i3) {
            return this.e.zzx(i - i3, i2 - i3);
        }
        ou ouVar = this.d;
        return new rb(ouVar.zzx(i, ouVar.size()), this.e.zzx(0, i2 - this.f));
    }

    static ou a(ou ouVar, ou ouVar2) {
        if (ouVar2.size() == 0) {
            return ouVar;
        }
        if (ouVar.size() == 0) {
            return ouVar2;
        }
        int size = ouVar.size() + ouVar2.size();
        if (size < 128) {
            return b(ouVar, ouVar2);
        }
        if (ouVar instanceof rb) {
            rb rbVar = (rb) ouVar;
            if (rbVar.e.size() + ouVar2.size() < 128) {
                return new rb(rbVar.d, b(rbVar.e, ouVar2));
            } else if (rbVar.d.a() > rbVar.e.a() && rbVar.a() > ouVar2.a()) {
                return new rb(rbVar.d, new rb(rbVar.e, ouVar2));
            }
        }
        if (size >= f3486b[Math.max(ouVar.a(), ouVar2.a()) + 1]) {
            return new rb(ouVar, ouVar2);
        }
        rc rcVar = new rc((byte) 0);
        rcVar.a(ouVar);
        rcVar.a(ouVar2);
        ou pop = rcVar.f3487a.pop();
        while (!rcVar.f3487a.isEmpty()) {
            pop = new rb(rcVar.f3487a.pop(), pop, (byte) 0);
        }
        return pop;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ou)) {
            return false;
        }
        ou ouVar = (ou) obj;
        if (this.c != ouVar.size()) {
            return false;
        }
        if (this.c == 0) {
            return true;
        }
        int i = this.f3427a;
        int i2 = ouVar.f3427a;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        rd rdVar = new rd(this, (byte) 0);
        pa paVar = (pa) rdVar.next();
        rd rdVar2 = new rd(ouVar, (byte) 0);
        pa paVar2 = (pa) rdVar2.next();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int size = paVar.size() - i3;
            int size2 = paVar2.size() - i4;
            int min = Math.min(size, size2);
            if (!(i3 == 0 ? paVar.a(paVar2, i4, min) : paVar2.a(paVar, i3, min))) {
                return false;
            }
            i5 += min;
            int i6 = this.c;
            if (i5 < i6) {
                if (min == size) {
                    paVar = (pa) rdVar.next();
                    i3 = 0;
                } else {
                    i3 += min;
                }
                if (min == size2) {
                    paVar2 = (pa) rdVar2.next();
                    i4 = 0;
                } else {
                    i4 += min;
                }
            } else if (i5 == i6) {
                return true;
            } else {
                throw new IllegalStateException();
            }
        }
    }
}
