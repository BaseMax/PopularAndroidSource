package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.lifecycle.Lifecycle;
import b.o.a.C0288l;
import b.o.a.v;

@SuppressLint({"BanParcelableUsage"})
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new A();

    /* renamed from: a  reason: collision with root package name */
    public final String f688a;

    /* renamed from: b  reason: collision with root package name */
    public final String f689b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f690c;

    /* renamed from: d  reason: collision with root package name */
    public final int f691d;

    /* renamed from: e  reason: collision with root package name */
    public final int f692e;

    /* renamed from: f  reason: collision with root package name */
    public final String f693f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f694g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f695h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f696i;

    /* renamed from: j  reason: collision with root package name */
    public final Bundle f697j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f698k;

    /* renamed from: l  reason: collision with root package name */
    public final int f699l;
    public Bundle m;
    public Fragment n;

    public FragmentState(Fragment fragment) {
        this.f688a = fragment.getClass().getName();
        this.f689b = fragment.f662f;
        this.f690c = fragment.n;
        this.f691d = fragment.w;
        this.f692e = fragment.x;
        this.f693f = fragment.y;
        this.f694g = fragment.B;
        this.f695h = fragment.m;
        this.f696i = fragment.A;
        this.f697j = fragment.f663g;
        this.f698k = fragment.z;
        this.f699l = fragment.S.ordinal();
    }

    public Fragment a(ClassLoader classLoader, C0288l lVar) {
        if (this.n == null) {
            Bundle bundle = this.f697j;
            if (bundle != null) {
                bundle.setClassLoader(classLoader);
            }
            this.n = lVar.a(classLoader, this.f688a);
            this.n.m(this.f697j);
            Bundle bundle2 = this.m;
            if (bundle2 != null) {
                bundle2.setClassLoader(classLoader);
                this.n.f659c = this.m;
            } else {
                this.n.f659c = new Bundle();
            }
            Fragment fragment = this.n;
            fragment.f662f = this.f689b;
            fragment.n = this.f690c;
            fragment.p = true;
            fragment.w = this.f691d;
            fragment.x = this.f692e;
            fragment.y = this.f693f;
            fragment.B = this.f694g;
            fragment.m = this.f695h;
            fragment.A = this.f696i;
            fragment.z = this.f698k;
            fragment.S = Lifecycle.State.values()[this.f699l];
            if (v.f3095c) {
                Log.v("FragmentManager", "Instantiated fragment " + this.n);
            }
        }
        return this.n;
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f688a);
        sb.append(" (");
        sb.append(this.f689b);
        sb.append(")}:");
        if (this.f690c) {
            sb.append(" fromLayout");
        }
        if (this.f692e != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f692e));
        }
        String str = this.f693f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f693f);
        }
        if (this.f694g) {
            sb.append(" retainInstance");
        }
        if (this.f695h) {
            sb.append(" removing");
        }
        if (this.f696i) {
            sb.append(" detached");
        }
        if (this.f698k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f688a);
        parcel.writeString(this.f689b);
        parcel.writeInt(this.f690c ? 1 : 0);
        parcel.writeInt(this.f691d);
        parcel.writeInt(this.f692e);
        parcel.writeString(this.f693f);
        parcel.writeInt(this.f694g ? 1 : 0);
        parcel.writeInt(this.f695h ? 1 : 0);
        parcel.writeInt(this.f696i ? 1 : 0);
        parcel.writeBundle(this.f697j);
        parcel.writeInt(this.f698k ? 1 : 0);
        parcel.writeBundle(this.m);
        parcel.writeInt(this.f699l);
    }

    public FragmentState(Parcel parcel) {
        this.f688a = parcel.readString();
        this.f689b = parcel.readString();
        boolean z = true;
        this.f690c = parcel.readInt() != 0;
        this.f691d = parcel.readInt();
        this.f692e = parcel.readInt();
        this.f693f = parcel.readString();
        this.f694g = parcel.readInt() != 0;
        this.f695h = parcel.readInt() != 0;
        this.f696i = parcel.readInt() != 0;
        this.f697j = parcel.readBundle();
        this.f698k = parcel.readInt() == 0 ? false : z;
        this.m = parcel.readBundle();
        this.f699l = parcel.readInt();
    }
}
