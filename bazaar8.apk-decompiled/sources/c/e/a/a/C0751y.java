package c.e.a.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* renamed from: c.e.a.a.y  reason: case insensitive filesystem */
/* compiled from: ExoPlayerImpl */
class C0751y extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0752z f9756a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0751y(C0752z zVar, Looper looper) {
        super(looper);
        this.f9756a = zVar;
    }

    public void handleMessage(Message message) {
        this.f9756a.a(message);
    }
}
