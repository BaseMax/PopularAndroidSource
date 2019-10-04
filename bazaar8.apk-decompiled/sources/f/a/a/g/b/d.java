package f.a.a.g.b;

import android.telephony.PhoneStateListener;

/* compiled from: MediaPlayerPlayback */
class d extends PhoneStateListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f14385a;

    public d(e eVar) {
        this.f14385a = eVar;
    }

    public void onCallStateChanged(int i2, String str) {
        if (this.f14385a.f14392g != null) {
            this.f14385a.f14392g.b(i2);
        }
    }
}
