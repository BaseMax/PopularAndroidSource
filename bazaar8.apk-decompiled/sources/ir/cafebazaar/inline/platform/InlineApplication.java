package ir.cafebazaar.inline.platform;

import android.os.Parcel;
import android.os.Parcelable;
import f.a.a.a.b.a;
import f.a.a.d.a.b;
import f.a.a.d.f;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.Theme;

public class InlineApplication implements Parcelable {
    public static final Parcelable.Creator<InlineApplication> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    public final InlineUser f14944a;

    /* renamed from: b  reason: collision with root package name */
    public final f f14945b = new b();

    /* renamed from: c  reason: collision with root package name */
    public f.a.a.g.i.f f14946c;

    /* renamed from: d  reason: collision with root package name */
    public f.a.a.g.f.a.b f14947d = null;

    /* renamed from: e  reason: collision with root package name */
    public a f14948e = null;

    /* renamed from: f  reason: collision with root package name */
    public final String f14949f;

    /* renamed from: g  reason: collision with root package name */
    public final String f14950g;

    /* renamed from: h  reason: collision with root package name */
    public Theme f14951h = new Theme();

    /* renamed from: i  reason: collision with root package name */
    public final String f14952i;

    /* renamed from: j  reason: collision with root package name */
    public final String f14953j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f14954k;

    public InlineApplication(String str, String str2, String str3, String str4, boolean z) {
        this.f14950g = str;
        this.f14949f = str2;
        this.f14952i = str3;
        this.f14953j = str4;
        this.f14944a = new InlineUser();
        this.f14944a.a(this.f14949f);
        this.f14948e = new f.a.a.a.b.b();
        this.f14954k = z;
    }

    public void a(g gVar, f.a.a.d.a.a.c.b bVar) {
        this.f14947d = new f.a.a.g.f.a.b(gVar, bVar);
    }

    public f.a.a.g.f.a.b b() {
        return this.f14947d;
    }

    public String c() {
        return this.f14953j;
    }

    public String d() {
        return this.f14950g;
    }

    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f14952i;
    }

    public String f() {
        return this.f14949f;
    }

    public f g() {
        return this.f14945b;
    }

    public f.a.a.g.i.f h() {
        return this.f14946c;
    }

    public Theme i() {
        return this.f14951h;
    }

    public InlineUser j() {
        return this.f14944a;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f14950g);
        parcel.writeString(this.f14949f);
        parcel.writeString(this.f14952i);
        parcel.writeString(this.f14953j);
        parcel.writeInt(this.f14954k ? 1 : 0);
        parcel.writeParcelable(this.f14944a, i2);
        parcel.writeParcelable(this.f14951h, i2);
    }

    public void a(g gVar) {
        if (this.f14954k) {
            this.f14946c = new f.a.a.g.i.f(gVar);
        }
        this.f14944a.a(gVar);
    }

    public void a(Theme theme) {
        this.f14951h = theme;
    }

    public a a() {
        return this.f14948e;
    }

    public InlineApplication(Parcel parcel) {
        this.f14950g = parcel.readString();
        this.f14949f = parcel.readString();
        this.f14952i = parcel.readString();
        this.f14953j = parcel.readString();
        this.f14954k = parcel.readInt() != 1 ? false : true;
        this.f14944a = (InlineUser) parcel.readParcelable(InlineUser.class.getClassLoader());
        this.f14951h = (Theme) parcel.readParcelable(Theme.class.getClassLoader());
        this.f14948e = new f.a.a.a.b.b();
    }
}
