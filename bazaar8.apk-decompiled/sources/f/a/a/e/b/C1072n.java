package f.a.a.e.b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import f.a.a.e.g;

/* renamed from: f.a.a.e.b.n  reason: case insensitive filesystem */
/* compiled from: ElementInflater */
public abstract class C1072n implements Y {

    /* renamed from: a  reason: collision with root package name */
    public String f14254a;

    /* renamed from: b  reason: collision with root package name */
    public float f14255b = 1.0f;

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, g gVar) {
        View a2 = a(gVar, layoutInflater.inflate(b(), viewGroup, false));
        String str = this.f14254a;
        if (str != null) {
            a2.setTag(str);
        }
        return a2;
    }

    public abstract View a(g gVar, View view);

    public abstract int b();

    public void b(String str) {
        this.f14254a = str;
    }

    public float a() {
        float f2 = this.f14255b;
        if (f2 == -1.0f) {
            return f2;
        }
        return Math.max(1.0f, f2);
    }

    public void a(String str) {
        try {
            this.f14255b = Float.parseFloat(str);
        } catch (NumberFormatException unused) {
        }
    }
}
