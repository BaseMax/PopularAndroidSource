package cab.snapp.c.a;

import java.util.GregorianCalendar;
import okhttp3.internal.http.StatusLine;
import org.eclipse.paho.a.a.w;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private int f195a;

    /* renamed from: b  reason: collision with root package name */
    private int f196b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;

    public a() {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        setGregorianDate(gregorianCalendar.get(1), gregorianCalendar.get(2) + 1, gregorianCalendar.get(5));
    }

    public a(int i2, int i3, int i4) {
        setGregorianDate(i2, i3, i4);
    }

    public final int getIranianYear() {
        return this.f195a;
    }

    public final int getIranianMonth() {
        return this.f196b;
    }

    public final int getIranianDay() {
        return this.c;
    }

    public final int getGregorianYear() {
        return this.d;
    }

    public final int getGregorianMonth() {
        return this.e;
    }

    public final int getGregorianDay() {
        return this.f;
    }

    public final int getJulianYear() {
        return this.g;
    }

    public final int getJulianMonth() {
        return this.h;
    }

    public final int getJulianDay() {
        return this.i;
    }

    public final String getIranianDate() {
        return this.f195a + w.TOPIC_LEVEL_SEPARATOR + this.f196b + w.TOPIC_LEVEL_SEPARATOR + this.c;
    }

    public final String getGregorianDate() {
        return this.d + w.TOPIC_LEVEL_SEPARATOR + this.e + w.TOPIC_LEVEL_SEPARATOR + this.f;
    }

    public final String getJulianDate() {
        return this.g + w.TOPIC_LEVEL_SEPARATOR + this.h + w.TOPIC_LEVEL_SEPARATOR + this.i;
    }

    public final String getWeekDayStr() {
        return new String[]{"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"}[getDayOfWeek()];
    }

    public final String toString() {
        return getWeekDayStr() + ", Gregorian:[" + getGregorianDate() + "], Julian:[" + getJulianDate() + "], Iranian:[" + getIranianDate() + "]";
    }

    public final int getDayOfWeek() {
        return this.k % 7;
    }

    public final void nextDay() {
        this.k++;
        b();
        c();
        d();
    }

    public final void nextDay(int i2) {
        this.k += i2;
        b();
        c();
        d();
    }

    public final void previousDay() {
        this.k--;
        b();
        c();
        d();
    }

    public final void previousDay(int i2) {
        this.k -= i2;
        b();
        c();
        d();
    }

    public final void setIranianDate(int i2, int i3, int i4) {
        this.f195a = i2;
        this.f196b = i3;
        this.c = i4;
        a();
        int a2 = a(this.d, 3, this.l);
        int i5 = this.f196b;
        this.k = (((a2 + ((i5 - 1) * 31)) - ((i5 / 7) * (i5 - 7))) + this.c) - 1;
        b();
        c();
        d();
    }

    public final void setGregorianDate(int i2, int i3, int i4) {
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.k = a(i2, i3, i4);
        b();
        c();
        d();
    }

    public final void setJulianDate(int i2, int i3, int i4) {
        this.g = i2;
        this.h = i3;
        this.i = i4;
        this.k = ((((((i2 + ((i3 - 8) / 6)) + 100100) * 1461) / 4) + (((((i3 + 9) % 12) * 153) + 2) / 5)) + i4) - 34840408;
        b();
        c();
        d();
    }

    private void a() {
        int i2;
        int i3;
        int[] iArr = {-61, 9, 38, 199, 426, 686, 756, 818, 1111, 1181, 1210, 1635, 2060, 2097, 2192, 2262, 2324, 2394, 2456, 3178};
        this.d = this.f195a + 621;
        int i4 = iArr[0];
        int i5 = 1;
        int i6 = -14;
        do {
            i2 = iArr[i5];
            i3 = i2 - i4;
            if (this.f195a >= i2) {
                i6 += ((i3 / 33) * 8) + ((i3 % 33) / 4);
                i4 = i2;
            }
            i5++;
            if (i5 >= 20) {
                break;
            }
        } while (this.f195a >= i2);
        int i7 = this.f195a - i4;
        int i8 = i6 + ((i7 / 33) * 8) + (((i7 % 33) + 3) / 4);
        if (i3 % 33 == 4 && i3 - i7 == 4) {
            i8++;
        }
        int i9 = this.d;
        this.l = (i8 + 20) - (((i9 / 4) - ((((i9 / 100) + 1) * 3) / 4)) - 150);
        if (i3 - i7 < 6) {
            i7 = (i7 - i3) + (((i3 + 4) / 33) * 33);
        }
        this.j = (((i7 + 1) % 33) - 1) % 4;
        if (this.j == -1) {
            this.j = 4;
        }
    }

    public final boolean IsLeap(int i2) {
        int i3;
        int i4;
        int[] iArr = {-61, 9, 38, 199, 426, 686, 756, 818, 1111, 1181, 1210, 1635, 2060, 2097, 2192, 2262, 2324, 2394, 2456, 3178};
        this.d = i2 + 621;
        int i5 = iArr[0];
        int i6 = 1;
        int i7 = -14;
        do {
            i3 = iArr[i6];
            i4 = i3 - i5;
            if (i2 >= i3) {
                i7 += ((i4 / 33) * 8) + ((i4 % 33) / 4);
                i5 = i3;
            }
            i6++;
            if (i6 >= 20) {
                break;
            }
        } while (i2 >= i3);
        int i8 = i2 - i5;
        int i9 = i7 + ((i8 / 33) * 8) + (((i8 % 33) + 3) / 4);
        if (i4 % 33 == 4 && i4 - i8 == 4) {
            i9++;
        }
        int i10 = this.d;
        this.l = (i9 + 20) - (((i10 / 4) - ((((i10 / 100) + 1) * 3) / 4)) - 150);
        if (i4 - i8 < 6) {
            i8 = (i8 - i4) + (((i4 + 4) / 33) * 33);
        }
        this.j = (((i8 + 1) % 33) - 1) % 4;
        if (this.j == -1) {
            this.j = 4;
        }
        int i11 = this.j;
        if (i11 == 4 || i11 == 0) {
            return true;
        }
        return false;
    }

    private void b() {
        int i2;
        d();
        this.f195a = this.d - 621;
        a();
        int a2 = this.k - a(this.d, 3, this.l);
        if (a2 < 0) {
            this.f195a--;
            i2 = a2 + 179;
            if (this.j == 1) {
                i2++;
            }
        } else if (a2 <= 185) {
            this.f196b = (a2 / 31) + 1;
            this.c = (a2 % 31) + 1;
            return;
        } else {
            i2 = a2 - 186;
        }
        this.f196b = (i2 / 30) + 7;
        this.c = (i2 % 30) + 1;
    }

    private void c() {
        int i2 = (this.k * 4) + 139361631;
        int i3 = (((i2 % 1461) / 4) * 5) + StatusLine.HTTP_PERM_REDIRECT;
        this.i = ((i3 % 153) / 5) + 1;
        this.h = ((i3 / 153) % 12) + 1;
        this.g = ((i2 / 1461) - 100100) + ((8 - this.h) / 6);
    }

    private static int a(int i2, int i3, int i4) {
        int i5 = (i3 - 8) / 6;
        return ((((((((i2 + i5) + 100100) * 1461) / 4) + (((((i3 + 9) % 12) * 153) + 2) / 5)) + i4) - 34840408) - (((((i2 + 100100) + i5) / 100) * 3) / 4)) + 752;
    }

    private void d() {
        int i2 = this.k;
        int i3 = (i2 * 4) + 139361631 + (((((((i2 * 4) + 183187720) / 146097) * 3) / 4) * 4) - 3908);
        int i4 = (((i3 % 1461) / 4) * 5) + StatusLine.HTTP_PERM_REDIRECT;
        this.f = ((i4 % 153) / 5) + 1;
        this.e = ((i4 / 153) % 12) + 1;
        this.d = ((i3 / 1461) - 100100) + ((8 - this.e) / 6);
    }
}
