package f.a.a.e.b;

import android.widget.SeekBar;
import android.widget.TextView;
import com.crashlytics.android.Crashlytics;
import f.a.a.e.g;
import f.a.a.g.b.b;
import ir.cafebazaar.inline.ux.audio.MusicDescriptor;
import ir.cafebazaar.inline.ux.audio.PlayPauseView;

/* renamed from: f.a.a.e.b.c  reason: case insensitive filesystem */
/* compiled from: AudioInflater */
class C1061c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14216a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SeekBar f14217b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ MusicDescriptor f14218c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ TextView f14219d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TextView f14220e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ PlayPauseView f14221f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C1067i f14222g;

    public C1061c(C1067i iVar, g gVar, SeekBar seekBar, MusicDescriptor musicDescriptor, TextView textView, TextView textView2, PlayPauseView playPauseView) {
        this.f14222g = iVar;
        this.f14216a = gVar;
        this.f14217b = seekBar;
        this.f14218c = musicDescriptor;
        this.f14219d = textView;
        this.f14220e = textView2;
        this.f14221f = playPauseView;
    }

    public void onSuccess() {
        try {
            if (this.f14216a != null && this.f14216a.f() != null && this.f14216a.f().y()) {
                this.f14216a.f().runOnUiThread(new C1054b(this));
            }
        } catch (NullPointerException e2) {
            Crashlytics.logException(e2);
        }
    }
}
