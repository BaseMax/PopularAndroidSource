package b.x;

import android.widget.SeekBar;
import androidx.preference.SeekBarPreference;

/* compiled from: SeekBarPreference */
class J implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SeekBarPreference f3353a;

    public J(SeekBarPreference seekBarPreference) {
        this.f3353a = seekBarPreference;
    }

    public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
        if (z) {
            SeekBarPreference seekBarPreference = this.f3353a;
            if (!seekBarPreference.R) {
                seekBarPreference.a(seekBar);
            }
        }
    }

    public void onStartTrackingTouch(SeekBar seekBar) {
        this.f3353a.R = true;
    }

    public void onStopTrackingTouch(SeekBar seekBar) {
        this.f3353a.R = false;
        int progress = seekBar.getProgress();
        SeekBarPreference seekBarPreference = this.f3353a;
        if (progress + seekBarPreference.O != seekBarPreference.N) {
            seekBarPreference.a(seekBar);
        }
    }
}
