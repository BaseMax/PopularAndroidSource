package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.lifecycle.Lifecycle;
import b.o.a.C;
import b.o.a.C0277a;
import b.o.a.v;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new C0278b();

    /* renamed from: a  reason: collision with root package name */
    public final int[] f645a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList<String> f646b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f647c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f648d;

    /* renamed from: e  reason: collision with root package name */
    public final int f649e;

    /* renamed from: f  reason: collision with root package name */
    public final int f650f;

    /* renamed from: g  reason: collision with root package name */
    public final String f651g;

    /* renamed from: h  reason: collision with root package name */
    public final int f652h;

    /* renamed from: i  reason: collision with root package name */
    public final int f653i;

    /* renamed from: j  reason: collision with root package name */
    public final CharSequence f654j;

    /* renamed from: k  reason: collision with root package name */
    public final int f655k;

    /* renamed from: l  reason: collision with root package name */
    public final CharSequence f656l;
    public final ArrayList<String> m;
    public final ArrayList<String> n;
    public final boolean o;

    public BackStackState(C0277a aVar) {
        int size = aVar.f2976a.size();
        this.f645a = new int[(size * 5)];
        if (aVar.f2983h) {
            this.f646b = new ArrayList<>(size);
            this.f647c = new int[size];
            this.f648d = new int[size];
            int i2 = 0;
            int i3 = 0;
            while (i2 < size) {
                C.a aVar2 = aVar.f2976a.get(i2);
                int i4 = i3 + 1;
                this.f645a[i3] = aVar2.f2988a;
                ArrayList<String> arrayList = this.f646b;
                Fragment fragment = aVar2.f2989b;
                arrayList.add(fragment != null ? fragment.f662f : null);
                int[] iArr = this.f645a;
                int i5 = i4 + 1;
                iArr[i4] = aVar2.f2990c;
                int i6 = i5 + 1;
                iArr[i5] = aVar2.f2991d;
                int i7 = i6 + 1;
                iArr[i6] = aVar2.f2992e;
                iArr[i7] = aVar2.f2993f;
                this.f647c[i2] = aVar2.f2994g.ordinal();
                this.f648d[i2] = aVar2.f2995h.ordinal();
                i2++;
                i3 = i7 + 1;
            }
            this.f649e = aVar.f2981f;
            this.f650f = aVar.f2982g;
            this.f651g = aVar.f2985j;
            this.f652h = aVar.u;
            this.f653i = aVar.f2986k;
            this.f654j = aVar.f2987l;
            this.f655k = aVar.m;
            this.f656l = aVar.n;
            this.m = aVar.o;
            this.n = aVar.p;
            this.o = aVar.q;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    public C0277a a(v vVar) {
        C0277a aVar = new C0277a(vVar);
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.f645a.length) {
            C.a aVar2 = new C.a();
            int i4 = i2 + 1;
            aVar2.f2988a = this.f645a[i2];
            if (v.f3095c) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i3 + " base fragment #" + this.f645a[i4]);
            }
            String str = this.f646b.get(i3);
            if (str != null) {
                aVar2.f2989b = vVar.f3102j.get(str);
            } else {
                aVar2.f2989b = null;
            }
            aVar2.f2994g = Lifecycle.State.values()[this.f647c[i3]];
            aVar2.f2995h = Lifecycle.State.values()[this.f648d[i3]];
            int[] iArr = this.f645a;
            int i5 = i4 + 1;
            aVar2.f2990c = iArr[i4];
            int i6 = i5 + 1;
            aVar2.f2991d = iArr[i5];
            int i7 = i6 + 1;
            aVar2.f2992e = iArr[i6];
            aVar2.f2993f = iArr[i7];
            aVar.f2977b = aVar2.f2990c;
            aVar.f2978c = aVar2.f2991d;
            aVar.f2979d = aVar2.f2992e;
            aVar.f2980e = aVar2.f2993f;
            aVar.a(aVar2);
            i3++;
            i2 = i7 + 1;
        }
        aVar.f2981f = this.f649e;
        aVar.f2982g = this.f650f;
        aVar.f2985j = this.f651g;
        aVar.u = this.f652h;
        aVar.f2983h = true;
        aVar.f2986k = this.f653i;
        aVar.f2987l = this.f654j;
        aVar.m = this.f655k;
        aVar.n = this.f656l;
        aVar.o = this.m;
        aVar.p = this.n;
        aVar.q = this.o;
        aVar.a(1);
        return aVar;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.f645a);
        parcel.writeStringList(this.f646b);
        parcel.writeIntArray(this.f647c);
        parcel.writeIntArray(this.f648d);
        parcel.writeInt(this.f649e);
        parcel.writeInt(this.f650f);
        parcel.writeString(this.f651g);
        parcel.writeInt(this.f652h);
        parcel.writeInt(this.f653i);
        TextUtils.writeToParcel(this.f654j, parcel, 0);
        parcel.writeInt(this.f655k);
        TextUtils.writeToParcel(this.f656l, parcel, 0);
        parcel.writeStringList(this.m);
        parcel.writeStringList(this.n);
        parcel.writeInt(this.o ? 1 : 0);
    }

    public BackStackState(Parcel parcel) {
        this.f645a = parcel.createIntArray();
        this.f646b = parcel.createStringArrayList();
        this.f647c = parcel.createIntArray();
        this.f648d = parcel.createIntArray();
        this.f649e = parcel.readInt();
        this.f650f = parcel.readInt();
        this.f651g = parcel.readString();
        this.f652h = parcel.readInt();
        this.f653i = parcel.readInt();
        this.f654j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f655k = parcel.readInt();
        this.f656l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.m = parcel.createStringArrayList();
        this.n = parcel.createStringArrayList();
        this.o = parcel.readInt() != 0;
    }
}
