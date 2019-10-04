package b.x;

import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import androidx.preference.SeekBarPreference;

/* compiled from: SeekBarPreference */
class K implements View.OnKeyListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SeekBarPreference f3354a;

    public K(SeekBarPreference seekBarPreference) {
        this.f3354a = seekBarPreference;
    }

    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        if ((!this.f3354a.U && (i2 == 21 || i2 == 22)) || i2 == 23 || i2 == 66) {
            return false;
        }
        SeekBar seekBar = this.f3354a.S;
        if (seekBar != null) {
            return seekBar.onKeyDown(i2, keyEvent);
        }
        Log.e("SeekBarPreference", "SeekBar view is null and hence cannot be adjusted.");
        return false;
    }
}
