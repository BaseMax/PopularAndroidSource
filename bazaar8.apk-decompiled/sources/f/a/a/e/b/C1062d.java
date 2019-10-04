package f.a.a.e.b;

import android.content.Intent;
import android.text.format.DateUtils;
import android.widget.SeekBar;
import android.widget.TextView;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import f.a.a.e.g;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: f.a.a.e.b.d  reason: case insensitive filesystem */
/* compiled from: AudioInflater */
class C1062d implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public int f14223a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f14224b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ TextView f14225c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f14226d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AtomicBoolean f14227e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ g f14228f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C1067i f14229g;

    public C1062d(C1067i iVar, AtomicBoolean atomicBoolean, TextView textView, AtomicBoolean atomicBoolean2, AtomicBoolean atomicBoolean3, g gVar) {
        this.f14229g = iVar;
        this.f14224b = atomicBoolean;
        this.f14225c = textView;
        this.f14226d = atomicBoolean2;
        this.f14227e = atomicBoolean3;
        this.f14228f = gVar;
    }

    public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
        if (this.f14224b.get()) {
            this.f14225c.setText(f.a.a.f.g.b(DateUtils.formatElapsedTime((long) (i2 / AnswersRetryFilesSender.BACKOFF_MS))));
            this.f14223a = i2;
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        if (this.f14224b.get()) {
            this.f14226d.set(true);
        }
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.f14224b.get()) {
            this.f14227e.set(false);
            Intent intent = new Intent("ir.cafebazaar.inline.audioplayer.SeekAudio");
            intent.putExtra("KEY_SEEK_TO_POSITION", seekBar.getProgress());
            this.f14228f.f().sendBroadcast(intent);
            this.f14226d.set(false);
            this.f14223a = seekBar.getProgress();
            return;
        }
        seekBar.setProgress(this.f14223a);
    }
}
