package c.e.a.a.k.h;

import android.text.Layout;
import c.e.a.a.o.I;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: WebvttCssStyle */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public String f9249a;

    /* renamed from: b  reason: collision with root package name */
    public String f9250b;

    /* renamed from: c  reason: collision with root package name */
    public List<String> f9251c;

    /* renamed from: d  reason: collision with root package name */
    public String f9252d;

    /* renamed from: e  reason: collision with root package name */
    public String f9253e;

    /* renamed from: f  reason: collision with root package name */
    public int f9254f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f9255g;

    /* renamed from: h  reason: collision with root package name */
    public int f9256h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f9257i;

    /* renamed from: j  reason: collision with root package name */
    public int f9258j;

    /* renamed from: k  reason: collision with root package name */
    public int f9259k;

    /* renamed from: l  reason: collision with root package name */
    public int f9260l;
    public int m;
    public int n;
    public float o;
    public Layout.Alignment p;

    public d() {
        l();
    }

    public void a(String[] strArr) {
        this.f9251c = Arrays.asList(strArr);
    }

    public void b(String str) {
        this.f9249a = str;
    }

    public void c(String str) {
        this.f9250b = str;
    }

    public void d(String str) {
        this.f9252d = str;
    }

    public int e() {
        return this.n;
    }

    public int f() {
        if (this.f9260l == -1 && this.m == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = this.f9260l == 1 ? 1 : 0;
        if (this.m == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }

    public Layout.Alignment g() {
        return this.p;
    }

    public boolean h() {
        return this.f9257i;
    }

    public boolean i() {
        return this.f9255g;
    }

    public boolean j() {
        return this.f9258j == 1;
    }

    public boolean k() {
        return this.f9259k == 1;
    }

    public void l() {
        this.f9249a = "";
        this.f9250b = "";
        this.f9251c = Collections.emptyList();
        this.f9252d = "";
        this.f9253e = null;
        this.f9255g = false;
        this.f9257i = false;
        this.f9258j = -1;
        this.f9259k = -1;
        this.f9260l = -1;
        this.m = -1;
        this.n = -1;
        this.p = null;
    }

    public int a(String str, String str2, String[] strArr, String str3) {
        if (this.f9249a.isEmpty() && this.f9250b.isEmpty() && this.f9251c.isEmpty() && this.f9252d.isEmpty()) {
            return str2.isEmpty() ? 1 : 0;
        }
        int a2 = a(a(a(0, this.f9249a, str, 1073741824), this.f9250b, str2, 2), this.f9252d, str3, 4);
        if (a2 == -1 || !Arrays.asList(strArr).containsAll(this.f9251c)) {
            return 0;
        }
        return a2 + (this.f9251c.size() * 4);
    }

    public d b(boolean z) {
        this.m = z ? 1 : 0;
        return this;
    }

    public d c(boolean z) {
        this.f9259k = z ? 1 : 0;
        return this;
    }

    public float d() {
        return this.o;
    }

    public int b() {
        if (this.f9255g) {
            return this.f9254f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public String c() {
        return this.f9253e;
    }

    public d b(int i2) {
        this.f9254f = i2;
        this.f9255g = true;
        return this;
    }

    public d a(boolean z) {
        this.f9260l = z ? 1 : 0;
        return this;
    }

    public d a(String str) {
        this.f9253e = I.l(str);
        return this;
    }

    public int a() {
        if (this.f9257i) {
            return this.f9256h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public d a(int i2) {
        this.f9256h = i2;
        this.f9257i = true;
        return this;
    }

    public static int a(int i2, String str, String str2, int i3) {
        if (!str.isEmpty()) {
            int i4 = -1;
            if (i2 != -1) {
                if (str.equals(str2)) {
                    i4 = i2 + i3;
                }
                return i4;
            }
        }
        return i2;
    }
}
