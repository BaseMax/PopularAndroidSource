package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.os.a;

public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new Parcelable.Creator<ResultReceiver>() {
        public final ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        public final ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final boolean f122a;

    /* renamed from: b  reason: collision with root package name */
    final Handler f123b;
    a c;

    class a extends a.C0009a {
        a() {
        }

        public final void send(int i, Bundle bundle) {
            if (ResultReceiver.this.f123b != null) {
                ResultReceiver.this.f123b.post(new b(i, bundle));
            } else {
                ResultReceiver.this.onReceiveResult(i, bundle);
            }
        }
    }

    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final int f125a;

        /* renamed from: b  reason: collision with root package name */
        final Bundle f126b;

        b(int i, Bundle bundle) {
            this.f125a = i;
            this.f126b = bundle;
        }

        public final void run() {
            ResultReceiver.this.onReceiveResult(this.f125a, this.f126b);
        }
    }

    public int describeContents() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public void onReceiveResult(int i, Bundle bundle) {
    }

    public ResultReceiver(Handler handler) {
        this.f122a = true;
        this.f123b = handler;
    }

    public void send(int i, Bundle bundle) {
        if (this.f122a) {
            Handler handler = this.f123b;
            if (handler != null) {
                handler.post(new b(i, bundle));
            } else {
                onReceiveResult(i, bundle);
            }
        } else {
            a aVar = this.c;
            if (aVar != null) {
                try {
                    aVar.send(i, bundle);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.c == null) {
                this.c = new a();
            }
            parcel.writeStrongBinder(this.c.asBinder());
        }
    }

    ResultReceiver(Parcel parcel) {
        this.f122a = false;
        this.f123b = null;
        this.c = a.C0009a.asInterface(parcel.readStrongBinder());
    }
}
