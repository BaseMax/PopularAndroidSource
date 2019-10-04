package com.farsitel.bazaar.widget.persianpicker;

import com.crashlytics.android.core.SessionProtobufHelper;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

public class PersianCalendar extends GregorianCalendar {

    /* renamed from: a  reason: collision with root package name */
    public static int[] f12429a = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    /* renamed from: b  reason: collision with root package name */
    public static int[] f12430b = {31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29};
    public static final long serialVersionUID = 5541422440580682494L;
    public String delimiter = "/";
    public int persianDay;
    public int persianMonth;
    public int persianYear;

    static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f12431a;

        /* renamed from: b  reason: collision with root package name */
        public int f12432b;

        /* renamed from: c  reason: collision with root package name */
        public int f12433c;

        public a(int i2, int i3, int i4) {
            this.f12431a = i2;
            this.f12432b = i3;
            this.f12433c = i4;
        }

        public String toString() {
            return c() + "/" + b() + "/" + a();
        }

        public int a() {
            return this.f12433c;
        }

        public void b(int i2) {
            this.f12431a = i2;
        }

        public int c() {
            return this.f12431a;
        }

        public void a(int i2) {
            this.f12433c = i2;
        }

        public int b() {
            return this.f12432b;
        }
    }

    public PersianCalendar(long j2) {
        setTimeInMillis(j2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x00a8  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x00c7  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00d7 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.farsitel.bazaar.widget.persianpicker.PersianCalendar.a b(com.farsitel.bazaar.widget.persianpicker.PersianCalendar.a r7) {
        /*
            int r0 = r7.b()
            r1 = 11
            if (r0 > r1) goto L_0x00de
            int r0 = r7.b()
            r1 = -11
            if (r0 < r1) goto L_0x00de
            int r0 = r7.c()
            int r0 = r0 + -979
            r7.b((int) r0)
            int r0 = r7.a()
            r1 = 1
            int r0 = r0 - r1
            r7.a((int) r0)
            int r0 = r7.c()
            r2 = 365(0x16d, float:5.11E-43)
            int r0 = r0 * 365
            int r3 = r7.c()
            int r3 = r3 / 33
            int r3 = r3 * 8
            int r0 = r0 + r3
            int r3 = r7.c()
            float r3 = (float) r3
            r4 = 1107558400(0x42040000, float:33.0)
            float r3 = r3 % r4
            r4 = 1077936128(0x40400000, float:3.0)
            float r3 = r3 + r4
            r4 = 1082130432(0x40800000, float:4.0)
            float r3 = r3 / r4
            double r3 = (double) r3
            double r3 = java.lang.Math.floor(r3)
            int r3 = (int) r3
            int r0 = r0 + r3
            r3 = 0
            r4 = r0
            r0 = 0
        L_0x004b:
            int r5 = r7.b()
            if (r0 >= r5) goto L_0x0059
            int[] r5 = f12430b
            r5 = r5[r0]
            int r4 = r4 + r5
            int r0 = r0 + 1
            goto L_0x004b
        L_0x0059:
            int r7 = r7.a()
            int r4 = r4 + r7
            int r4 = r4 + 79
            float r7 = (float) r4
            r0 = 1208921152(0x480eac40, float:146097.0)
            float r7 = r7 / r0
            double r5 = (double) r7
            double r5 = java.lang.Math.floor(r5)
            int r7 = (int) r5
            int r7 = r7 * 400
            int r7 = r7 + 1600
            r0 = 146097(0x23ab1, float:2.04726E-40)
            int r4 = r4 % r0
            r0 = 36525(0x8ead, float:5.1182E-41)
            if (r4 < r0) goto L_0x0093
            int r4 = r4 + -1
            float r0 = (float) r4
            r5 = 1192143872(0x470eac00, float:36524.0)
            float r0 = r0 / r5
            double r5 = (double) r0
            double r5 = java.lang.Math.floor(r5)
            int r0 = (int) r5
            int r0 = r0 * 100
            int r7 = r7 + r0
            r0 = 36524(0x8eac, float:5.1181E-41)
            int r4 = r4 % r0
            if (r4 < r2) goto L_0x0091
            int r4 = r4 + 1
            goto L_0x0093
        L_0x0091:
            r0 = 0
            goto L_0x0094
        L_0x0093:
            r0 = 1
        L_0x0094:
            float r5 = (float) r4
            r6 = 1152819200(0x44b6a000, float:1461.0)
            float r5 = r5 / r6
            double r5 = (double) r5
            double r5 = java.lang.Math.floor(r5)
            int r5 = (int) r5
            int r5 = r5 * 4
            int r7 = r7 + r5
            int r4 = r4 % 1461
            r5 = 366(0x16e, float:5.13E-43)
            if (r4 < r5) goto L_0x00b8
            int r4 = r4 + -1
            float r0 = (float) r4
            r5 = 1136033792(0x43b68000, float:365.0)
            float r0 = r0 / r5
            double r5 = (double) r0
            double r5 = java.lang.Math.floor(r5)
            int r0 = (int) r5
            int r7 = r7 + r0
            int r4 = r4 % r2
            r0 = 0
        L_0x00b8:
            r2 = 0
        L_0x00b9:
            int[] r5 = f12429a
            r5 = r5[r2]
            if (r2 != r1) goto L_0x00c3
            if (r0 != r1) goto L_0x00c3
            r6 = r2
            goto L_0x00c4
        L_0x00c3:
            r6 = 0
        L_0x00c4:
            int r5 = r5 + r6
            if (r4 < r5) goto L_0x00d7
            int[] r5 = f12429a
            r5 = r5[r2]
            if (r2 != r1) goto L_0x00d1
            if (r0 != r1) goto L_0x00d1
            r6 = r2
            goto L_0x00d2
        L_0x00d1:
            r6 = 0
        L_0x00d2:
            int r5 = r5 + r6
            int r4 = r4 - r5
            int r2 = r2 + 1
            goto L_0x00b9
        L_0x00d7:
            int r4 = r4 + r1
            com.farsitel.bazaar.widget.persianpicker.PersianCalendar$a r0 = new com.farsitel.bazaar.widget.persianpicker.PersianCalendar$a
            r0.<init>(r7, r2, r4)
            return r0
        L_0x00de:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            r7.<init>()
            goto L_0x00e5
        L_0x00e4:
            throw r7
        L_0x00e5:
            goto L_0x00e4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.widget.persianpicker.PersianCalendar.b(com.farsitel.bazaar.widget.persianpicker.PersianCalendar$a):com.farsitel.bazaar.widget.persianpicker.PersianCalendar$a");
    }

    public void a(int i2, int i3, int i4) {
        this.persianYear = i2;
        this.persianMonth = i3;
        this.persianDay = i4;
        a b2 = b(new a(i2, this.persianMonth - 1, i4));
        set(b2.f12431a, b2.f12432b, b2.f12433c);
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final void f() {
        a a2 = a(new a(get(1), get(2), get(5)));
        this.persianYear = a2.f12431a;
        this.persianMonth = a2.f12432b;
        this.persianDay = a2.f12433c;
    }

    public int g() {
        return this.persianDay;
    }

    public int h() {
        return this.persianMonth + 1;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String i() {
        return "" + a(this.persianYear) + this.delimiter + a(h()) + this.delimiter + a(this.persianDay);
    }

    public int j() {
        return this.persianYear;
    }

    public void set(int i2, int i3) {
        super.set(i2, i3);
        f();
    }

    public void setTimeInMillis(long j2) {
        super.setTimeInMillis(j2);
        f();
    }

    public void setTimeZone(TimeZone timeZone) {
        super.setTimeZone(timeZone);
        f();
    }

    public String toString() {
        String gregorianCalendar = super.toString();
        return gregorianCalendar.substring(0, gregorianCalendar.length() - 1) + ",PersianDate=" + i() + "]";
    }

    public PersianCalendar() {
        super(TimeZone.getDefault(), Locale.getDefault());
    }

    public final String a(int i2) {
        if (i2 >= 9) {
            return String.valueOf(i2);
        }
        return SessionProtobufHelper.SIGNAL_DEFAULT + i2;
    }

    public static a a(a aVar) {
        if (aVar.b() > 11 || aVar.b() < -11) {
            throw new IllegalArgumentException();
        }
        aVar.b(aVar.c() - 1600);
        aVar.a(aVar.a() - 1);
        int i2 = 0;
        int c2 = (((aVar.c() * 365) + ((int) Math.floor((double) (((float) (aVar.c() + 3)) / 4.0f)))) - ((int) Math.floor((double) (((float) (aVar.c() + 99)) / 100.0f)))) + ((int) Math.floor((double) (((float) (aVar.c() + 399)) / 400.0f)));
        for (int i3 = 0; i3 < aVar.b(); i3++) {
            c2 += f12429a[i3];
        }
        if (aVar.b() > 1 && ((aVar.c() % 4 == 0 && aVar.c() % 100 != 0) || aVar.c() % 400 == 0)) {
            c2++;
        }
        int a2 = (c2 + aVar.a()) - 79;
        int i4 = a2 % 12053;
        int floor = (((int) Math.floor((double) (((float) a2) / 12053.0f))) * 33) + 979 + ((i4 / 1461) * 4);
        int i5 = i4 % 1461;
        if (i5 >= 366) {
            int i6 = i5 - 1;
            floor += (int) Math.floor((double) (((float) i6) / 365.0f));
            i5 = i6 % 365;
        }
        while (i2 < 11) {
            int[] iArr = f12430b;
            if (i5 < iArr[i2]) {
                break;
            }
            i5 -= iArr[i2];
            i2++;
        }
        return new a(floor, i2, i5 + 1);
    }
}
