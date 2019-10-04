package f.a.a.e.b;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import b.t.a.b;
import f.a.a.e;
import f.a.a.e.C1083c;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.g.b.a;
import f.a.a.g.b.u;
import ir.cafebazaar.inline.ux.audio.MusicDescriptor;
import ir.cafebazaar.inline.ux.audio.PlayPauseView;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: f.a.a.e.b.i  reason: case insensitive filesystem */
/* compiled from: AudioInflater */
public class C1067i extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public String f14246c;

    /* renamed from: d  reason: collision with root package name */
    public Integer f14247d;

    public int b() {
        return f.inline_audio;
    }

    public void c(String str) {
        this.f14246c = str;
        this.f14247d = Integer.valueOf(UUID.randomUUID().hashCode());
    }

    public final void a(g gVar, LinearLayout linearLayout) {
        linearLayout.setBackgroundColor(gVar.g().d());
    }

    public final void a(g gVar, MusicDescriptor musicDescriptor) {
        Intent intent = new Intent("ir.cafebazaar.inline.audioplayer.RegisterAudio");
        intent.putExtra("KEY_REGISTER_AUDIO", musicDescriptor);
        b.a((Context) gVar.f()).a(intent);
    }

    public final void a(g gVar, SeekBar seekBar) {
        seekBar.getThumb().setColorFilter(gVar.g().h(), PorterDuff.Mode.SRC_IN);
        seekBar.getProgressDrawable().setColorFilter(gVar.g().h(), PorterDuff.Mode.SRC_IN);
        seekBar.invalidate();
    }

    public final void a(g gVar, ProgressBar progressBar) {
        progressBar.getIndeterminateDrawable().setColorFilter(gVar.g().h(), PorterDuff.Mode.SRC_IN);
    }

    public View a(g gVar, View view) {
        g gVar2 = gVar;
        View view2 = view;
        PlayPauseView playPauseView = (PlayPauseView) view2.findViewById(e.playPauseBtn);
        SeekBar seekBar = (SeekBar) view2.findViewById(e.seekBar);
        TextView textView = (TextView) view2.findViewById(e.currentTime);
        TextView textView2 = (TextView) view2.findViewById(e.totalTime);
        a(gVar2, seekBar);
        a(gVar2, (ProgressBar) view2.findViewById(e.progressBar));
        a(gVar2, (LinearLayout) view2.findViewById(e.audioContentLayout));
        textView.setText("??:??");
        textView2.setText("??:??");
        MusicDescriptor musicDescriptor = new MusicDescriptor(this.f14247d, this.f14246c);
        a(gVar2, musicDescriptor);
        playPauseView.setState(PlayPauseView.State.BUFFERING);
        playPauseView.setOnClickListener(new C1053a(this, playPauseView, gVar2));
        u a2 = u.a();
        C1061c cVar = r0;
        C1061c cVar2 = new C1061c(this, gVar, seekBar, musicDescriptor, textView, textView2, playPauseView);
        f.a.a.g.b.b bVar = new f.a.a.g.b.b(musicDescriptor, cVar);
        a2.execute(bVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
        AtomicBoolean atomicBoolean3 = new AtomicBoolean(false);
        C1062d dVar = new C1062d(this, atomicBoolean3, textView, atomicBoolean, atomicBoolean2, gVar);
        seekBar.setOnSeekBarChangeListener(dVar);
        C1064f fVar = new C1064f(this, gVar, atomicBoolean, atomicBoolean2, seekBar);
        a Na = ((C1083c) gVar.k()).Na();
        Integer num = this.f14247d;
        C1065g gVar3 = new C1065g(this, atomicBoolean2, atomicBoolean3, fVar, playPauseView, seekBar, gVar);
        Na.a(num, gVar3);
        return view;
    }
}
