package f.a.a.e.b;

import android.app.Activity;
import android.support.v4.media.session.MediaControllerCompat;
import android.widget.SeekBar;
import com.crashlytics.android.Crashlytics;
import f.a.a.e.g;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: f.a.a.e.b.f  reason: case insensitive filesystem */
/* compiled from: AudioInflater */
class C1064f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14232a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f14233b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f14234c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SeekBar f14235d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1067i f14236e;

    public C1064f(C1067i iVar, g gVar, AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, SeekBar seekBar) {
        this.f14236e = iVar;
        this.f14232a = gVar;
        this.f14233b = atomicBoolean;
        this.f14234c = atomicBoolean2;
        this.f14235d = seekBar;
    }

    public void run() {
        try {
            Thread.sleep(100);
            while (!Thread.currentThread().isInterrupted() && this.f14232a != null && this.f14232a.f() != null && this.f14232a.f().y()) {
                this.f14232a.f().runOnUiThread(new C1063e(this, MediaControllerCompat.a((Activity) this.f14232a.f()).b().e()));
            }
        } catch (InterruptedException e2) {
            Crashlytics.logException(e2);
        } catch (NullPointerException e3) {
            Crashlytics.logException(e3);
        }
    }
}
