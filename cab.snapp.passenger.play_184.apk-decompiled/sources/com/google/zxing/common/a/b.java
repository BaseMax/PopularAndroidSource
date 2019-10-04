package com.google.zxing.common.a;

import com.google.zxing.h;
import com.google.zxing.m;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.zxing.common.b f4302a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4303b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;

    public b(com.google.zxing.common.b bVar) throws h {
        this(bVar, 10, bVar.getWidth() / 2, bVar.getHeight() / 2);
    }

    public b(com.google.zxing.common.b bVar, int i, int i2, int i3) throws h {
        this.f4302a = bVar;
        this.f4303b = bVar.getHeight();
        this.c = bVar.getWidth();
        int i4 = i / 2;
        this.d = i2 - i4;
        this.e = i2 + i4;
        this.g = i3 - i4;
        this.f = i3 + i4;
        if (this.g < 0 || this.d < 0 || this.f >= this.f4303b || this.e >= this.c) {
            throw h.getNotFoundInstance();
        }
    }

    public final m[] detect() throws h {
        boolean z;
        int i = this.d;
        int i2 = this.e;
        int i3 = this.g;
        int i4 = this.f;
        int i5 = i;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        while (true) {
            if (!z2) {
                z = false;
                break;
            }
            boolean z8 = true;
            boolean z9 = false;
            while (true) {
                if ((z8 || !z3) && i2 < this.c) {
                    z8 = a(i3, i4, i2, false);
                    if (z8) {
                        i2++;
                        z3 = true;
                        z9 = true;
                    } else if (!z3) {
                        i2++;
                    }
                }
            }
            if (i2 >= this.c) {
                break;
            }
            boolean z10 = true;
            while (true) {
                if ((z10 || !z4) && i4 < this.f4303b) {
                    z10 = a(i5, i2, i4, true);
                    if (z10) {
                        i4++;
                        z4 = true;
                        z9 = true;
                    } else if (!z4) {
                        i4++;
                    }
                }
            }
            if (i4 >= this.f4303b) {
                break;
            }
            boolean z11 = true;
            while (true) {
                if ((z11 || !z5) && i5 >= 0) {
                    z11 = a(i3, i4, i5, false);
                    if (z11) {
                        i5--;
                        z5 = true;
                        z9 = true;
                    } else if (!z5) {
                        i5--;
                    }
                }
            }
            if (i5 < 0) {
                break;
            }
            boolean z12 = true;
            while (true) {
                if ((z12 || !z7) && i3 >= 0) {
                    z12 = a(i5, i2, i3, true);
                    if (z12) {
                        i3--;
                        z7 = true;
                        z9 = true;
                    } else if (!z7) {
                        i3--;
                    }
                }
            }
            if (i3 < 0) {
                break;
            }
            if (z9) {
                z6 = true;
            }
            z2 = z9;
        }
        z = true;
        if (z || !z6) {
            throw h.getNotFoundInstance();
        }
        int i6 = i2 - i5;
        m mVar = null;
        m mVar2 = null;
        int i7 = 1;
        while (mVar2 == null && i7 < i6) {
            mVar2 = a((float) i5, (float) (i4 - i7), (float) (i5 + i7), (float) i4);
            i7++;
        }
        if (mVar2 != null) {
            m mVar3 = null;
            int i8 = 1;
            while (mVar3 == null && i8 < i6) {
                mVar3 = a((float) i5, (float) (i3 + i8), (float) (i5 + i8), (float) i3);
                i8++;
            }
            if (mVar3 != null) {
                m mVar4 = null;
                int i9 = 1;
                while (mVar4 == null && i9 < i6) {
                    mVar4 = a((float) i2, (float) (i3 + i9), (float) (i2 - i9), (float) i3);
                    i9++;
                }
                if (mVar4 != null) {
                    int i10 = 1;
                    while (mVar == null && i10 < i6) {
                        mVar = a((float) i2, (float) (i4 - i10), (float) (i2 - i10), (float) i4);
                        i10++;
                    }
                    if (mVar != null) {
                        float x = mVar.getX();
                        float y = mVar.getY();
                        float x2 = mVar2.getX();
                        float y2 = mVar2.getY();
                        float x3 = mVar4.getX();
                        float y3 = mVar4.getY();
                        float x4 = mVar3.getX();
                        float y4 = mVar3.getY();
                        if (x < ((float) this.c) / 2.0f) {
                            return new m[]{new m(x4 - 1.0f, y4 + 1.0f), new m(x2 + 1.0f, y2 + 1.0f), new m(x3 - 1.0f, y3 - 1.0f), new m(x + 1.0f, y - 1.0f)};
                        }
                        return new m[]{new m(x4 + 1.0f, y4 + 1.0f), new m(x2 + 1.0f, y2 - 1.0f), new m(x3 - 1.0f, y3 + 1.0f), new m(x - 1.0f, y - 1.0f)};
                    }
                    throw h.getNotFoundInstance();
                }
                throw h.getNotFoundInstance();
            }
            throw h.getNotFoundInstance();
        }
        throw h.getNotFoundInstance();
    }

    private m a(float f2, float f3, float f4, float f5) {
        int round = a.round(a.distance(f2, f3, f4, f5));
        float f6 = (float) round;
        float f7 = (f4 - f2) / f6;
        float f8 = (f5 - f3) / f6;
        for (int i = 0; i < round; i++) {
            float f9 = (float) i;
            int round2 = a.round((f9 * f7) + f2);
            int round3 = a.round((f9 * f8) + f3);
            if (this.f4302a.get(round2, round3)) {
                return new m((float) round2, (float) round3);
            }
        }
        return null;
    }

    private boolean a(int i, int i2, int i3, boolean z) {
        if (z) {
            while (i <= i2) {
                if (this.f4302a.get(i, i3)) {
                    return true;
                }
                i++;
            }
        } else {
            while (i <= i2) {
                if (this.f4302a.get(i3, i)) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }
}
