package com.google.firebase.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import c.e.c.d.N;
import c.e.c.d.W;
import c.e.c.d.Y;

public class zzm implements Parcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new N();

    /* renamed from: a  reason: collision with root package name */
    public Messenger f13520a;

    /* renamed from: b  reason: collision with root package name */
    public W f13521b;

    public static final class a extends ClassLoader {
        public final Class<?> loadClass(String str, boolean z) {
            if (!"com.google.android.gms.iid.MessengerCompat".equals(str)) {
                return super.loadClass(str, z);
            }
            if (FirebaseInstanceId.i()) {
                Log.d("FirebaseInstanceId", "Using renamed FirebaseIidMessengerCompat class");
            }
            return zzm.class;
        }
    }

    public zzm(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f13520a = new Messenger(iBinder);
        } else {
            this.f13521b = new Y(iBinder);
        }
    }

    public final void a(Message message) {
        Messenger messenger = this.f13520a;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f13521b.a(message);
        }
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return a().equals(((zzm) obj).a());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        return a().hashCode();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        Messenger messenger = this.f13520a;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.f13521b.asBinder());
        }
    }

    public final IBinder a() {
        Messenger messenger = this.f13520a;
        return messenger != null ? messenger.getBinder() : this.f13521b.asBinder();
    }
}
