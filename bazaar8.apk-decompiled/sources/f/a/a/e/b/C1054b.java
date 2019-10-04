package f.a.a.e.b;

import android.text.format.DateUtils;
import f.a.a.f.g;
import ir.cafebazaar.inline.ux.audio.PlayPauseView;

/* renamed from: f.a.a.e.b.b  reason: case insensitive filesystem */
/* compiled from: AudioInflater */
class C1054b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1061c f14111a;

    public C1054b(C1061c cVar) {
        this.f14111a = cVar;
    }

    public void run() {
        C1061c cVar = this.f14111a;
        cVar.f14217b.setMax((int) cVar.f14218c.c());
        this.f14111a.f14219d.setText(g.b(DateUtils.formatElapsedTime(0)));
        C1061c cVar2 = this.f14111a;
        cVar2.f14220e.setText(g.b(DateUtils.formatElapsedTime(cVar2.f14218c.c() / 1000)));
        C1061c cVar3 = this.f14111a;
        cVar3.f14222g.a(cVar3.f14216a, cVar3.f14218c);
        this.f14111a.f14221f.setState(PlayPauseView.State.STOPPED);
    }
}
