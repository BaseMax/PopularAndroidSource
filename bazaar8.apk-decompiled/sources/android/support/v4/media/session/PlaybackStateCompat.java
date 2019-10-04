package android.support.v4.media.session;

import a.a.b.b.a.r;
import a.a.b.b.a.s;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new p();

    /* renamed from: a  reason: collision with root package name */
    public final int f178a;

    /* renamed from: b  reason: collision with root package name */
    public final long f179b;

    /* renamed from: c  reason: collision with root package name */
    public final long f180c;

    /* renamed from: d  reason: collision with root package name */
    public final float f181d;

    /* renamed from: e  reason: collision with root package name */
    public final long f182e;

    /* renamed from: f  reason: collision with root package name */
    public final int f183f;

    /* renamed from: g  reason: collision with root package name */
    public final CharSequence f184g;

    /* renamed from: h  reason: collision with root package name */
    public final long f185h;

    /* renamed from: i  reason: collision with root package name */
    public List<CustomAction> f186i;

    /* renamed from: j  reason: collision with root package name */
    public final long f187j;

    /* renamed from: k  reason: collision with root package name */
    public final Bundle f188k;

    /* renamed from: l  reason: collision with root package name */
    public Object f189l;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new q();

        /* renamed from: a  reason: collision with root package name */
        public final String f190a;

        /* renamed from: b  reason: collision with root package name */
        public final CharSequence f191b;

        /* renamed from: c  reason: collision with root package name */
        public final int f192c;

        /* renamed from: d  reason: collision with root package name */
        public final Bundle f193d;

        /* renamed from: e  reason: collision with root package name */
        public Object f194e;

        public CustomAction(String str, CharSequence charSequence, int i2, Bundle bundle) {
            this.f190a = str;
            this.f191b = charSequence;
            this.f192c = i2;
            this.f193d = bundle;
        }

        public static CustomAction a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(r.a.a(obj), r.a.d(obj), r.a.c(obj), r.a.b(obj));
            customAction.f194e = obj;
            return customAction;
        }

        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + this.f191b + ", mIcon=" + this.f192c + ", mExtras=" + this.f193d;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f190a);
            TextUtils.writeToParcel(this.f191b, parcel, i2);
            parcel.writeInt(this.f192c);
            parcel.writeBundle(this.f193d);
        }

        public CustomAction(Parcel parcel) {
            this.f190a = parcel.readString();
            this.f191b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f192c = parcel.readInt();
            this.f193d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        public Object a() {
            if (this.f194e != null || Build.VERSION.SDK_INT < 21) {
                return this.f194e;
            }
            this.f194e = r.a.a(this.f190a, this.f191b, this.f192c, this.f193d);
            return this.f194e;
        }
    }

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<CustomAction> f195a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public int f196b;

        /* renamed from: c  reason: collision with root package name */
        public long f197c;

        /* renamed from: d  reason: collision with root package name */
        public long f198d;

        /* renamed from: e  reason: collision with root package name */
        public float f199e;

        /* renamed from: f  reason: collision with root package name */
        public long f200f;

        /* renamed from: g  reason: collision with root package name */
        public int f201g;

        /* renamed from: h  reason: collision with root package name */
        public CharSequence f202h;

        /* renamed from: i  reason: collision with root package name */
        public long f203i;

        /* renamed from: j  reason: collision with root package name */
        public long f204j = -1;

        /* renamed from: k  reason: collision with root package name */
        public Bundle f205k;

        public a() {
        }

        public a a(int i2, long j2, float f2, long j3) {
            this.f196b = i2;
            this.f197c = j2;
            this.f203i = j3;
            this.f199e = f2;
            return this;
        }

        public a b(long j2) {
            this.f204j = j2;
            return this;
        }

        public a(PlaybackStateCompat playbackStateCompat) {
            this.f196b = playbackStateCompat.f178a;
            this.f197c = playbackStateCompat.f179b;
            this.f199e = playbackStateCompat.f181d;
            this.f203i = playbackStateCompat.f185h;
            this.f198d = playbackStateCompat.f180c;
            this.f200f = playbackStateCompat.f182e;
            this.f201g = playbackStateCompat.f183f;
            this.f202h = playbackStateCompat.f184g;
            List<CustomAction> list = playbackStateCompat.f186i;
            if (list != null) {
                this.f195a.addAll(list);
            }
            this.f204j = playbackStateCompat.f187j;
            this.f205k = playbackStateCompat.f188k;
        }

        public a a(long j2) {
            this.f200f = j2;
            return this;
        }

        public a a(CharSequence charSequence) {
            this.f202h = charSequence;
            return this;
        }

        public PlaybackStateCompat a() {
            PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(this.f196b, this.f197c, this.f198d, this.f199e, this.f200f, this.f201g, this.f202h, this.f203i, this.f195a, this.f204j, this.f205k);
            return playbackStateCompat;
        }
    }

    public PlaybackStateCompat(int i2, long j2, long j3, float f2, long j4, int i3, CharSequence charSequence, long j5, List<CustomAction> list, long j6, Bundle bundle) {
        this.f178a = i2;
        this.f179b = j2;
        this.f180c = j3;
        this.f181d = f2;
        this.f182e = j4;
        this.f183f = i3;
        this.f184g = charSequence;
        this.f185h = j5;
        this.f186i = new ArrayList(list);
        this.f187j = j6;
        this.f188k = bundle;
    }

    public long a() {
        return this.f182e;
    }

    public long b() {
        return this.f185h;
    }

    public float c() {
        return this.f181d;
    }

    public Object d() {
        if (this.f189l == null && Build.VERSION.SDK_INT >= 21) {
            ArrayList arrayList = null;
            List<CustomAction> list = this.f186i;
            if (list != null) {
                arrayList = new ArrayList(list.size());
                for (CustomAction a2 : this.f186i) {
                    arrayList.add(a2.a());
                }
            }
            ArrayList arrayList2 = arrayList;
            if (Build.VERSION.SDK_INT >= 22) {
                this.f189l = s.a(this.f178a, this.f179b, this.f180c, this.f181d, this.f182e, this.f184g, this.f185h, arrayList2, this.f187j, this.f188k);
            } else {
                this.f189l = r.a(this.f178a, this.f179b, this.f180c, this.f181d, this.f182e, this.f184g, this.f185h, arrayList2, this.f187j);
            }
        }
        return this.f189l;
    }

    public int describeContents() {
        return 0;
    }

    public long e() {
        return this.f179b;
    }

    public int f() {
        return this.f178a;
    }

    public String toString() {
        return "PlaybackState {" + "state=" + this.f178a + ", position=" + this.f179b + ", buffered position=" + this.f180c + ", speed=" + this.f181d + ", updated=" + this.f185h + ", actions=" + this.f182e + ", error code=" + this.f183f + ", error message=" + this.f184g + ", custom actions=" + this.f186i + ", active item id=" + this.f187j + "}";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f178a);
        parcel.writeLong(this.f179b);
        parcel.writeFloat(this.f181d);
        parcel.writeLong(this.f185h);
        parcel.writeLong(this.f180c);
        parcel.writeLong(this.f182e);
        TextUtils.writeToParcel(this.f184g, parcel, i2);
        parcel.writeTypedList(this.f186i);
        parcel.writeLong(this.f187j);
        parcel.writeBundle(this.f188k);
        parcel.writeInt(this.f183f);
    }

    public static PlaybackStateCompat a(Object obj) {
        ArrayList arrayList;
        Object obj2 = obj;
        Bundle bundle = null;
        if (obj2 == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        List<Object> d2 = r.d(obj);
        if (d2 != null) {
            ArrayList arrayList2 = new ArrayList(d2.size());
            for (Object a2 : d2) {
                arrayList2.add(CustomAction.a(a2));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        if (Build.VERSION.SDK_INT >= 22) {
            bundle = s.a(obj);
        }
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(r.i(obj), r.h(obj), r.c(obj), r.g(obj), r.a(obj), 0, r.e(obj), r.f(obj), arrayList, r.b(obj), bundle);
        playbackStateCompat.f189l = obj2;
        return playbackStateCompat;
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f178a = parcel.readInt();
        this.f179b = parcel.readLong();
        this.f181d = parcel.readFloat();
        this.f185h = parcel.readLong();
        this.f180c = parcel.readLong();
        this.f182e = parcel.readLong();
        this.f184g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f186i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f187j = parcel.readLong();
        this.f188k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f183f = parcel.readInt();
    }
}
