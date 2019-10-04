package b.x;

import androidx.preference.Preference;
import b.x.y;
import b.y.a.C0345o;
import java.util.List;

/* compiled from: PreferenceGroupAdapter */
class v extends C0345o.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ List f3372a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ List f3373b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ y.d f3374c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ w f3375d;

    public v(w wVar, List list, List list2, y.d dVar) {
        this.f3375d = wVar;
        this.f3372a = list;
        this.f3373b = list2;
        this.f3374c = dVar;
    }

    public int a() {
        return this.f3373b.size();
    }

    public int b() {
        return this.f3372a.size();
    }

    public boolean a(int i2, int i3) {
        return this.f3374c.a((Preference) this.f3372a.get(i2), (Preference) this.f3373b.get(i3));
    }

    public boolean b(int i2, int i3) {
        return this.f3374c.b((Preference) this.f3372a.get(i2), (Preference) this.f3373b.get(i3));
    }
}
