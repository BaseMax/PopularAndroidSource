package android.support.v4.os;

import a.a.b.c.a;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;

@SuppressLint({"BanParcelableUsage"})
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f206a = false;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f207b = null;

    /* renamed from: c  reason: collision with root package name */
    public a.a.b.c.a f208c;

    class a extends a.C0006a {
        public a() {
        }

        public void a(int i2, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.f207b;
            if (handler != null) {
                handler.post(new b(i2, bundle));
            } else {
                resultReceiver.a(i2, bundle);
            }
        }
    }

    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f210a;

        /* renamed from: b  reason: collision with root package name */
        public final Bundle f211b;

        public b(int i2, Bundle bundle) {
            this.f210a = i2;
            this.f211b = bundle;
        }

        public void run() {
            ResultReceiver.this.a(this.f210a, this.f211b);
        }
    }

    public ResultReceiver(Parcel parcel) {
        this.f208c = a.C0006a.a(parcel.readStrongBinder());
    }

    public void a(int i2, Bundle bundle) {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        synchronized (this) {
            if (this.f208c == null) {
                this.f208c = new a();
            }
            parcel.writeStrongBinder(this.f208c.asBinder());
        }
    }
}
