package c.e.a.a.b;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import c.e.a.a.o.I;
import java.util.Arrays;

@TargetApi(21)
/* compiled from: AudioCapabilities */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final m f7462a = new m(new int[]{2}, 8);

    /* renamed from: b  reason: collision with root package name */
    public static final m f7463b = new m(new int[]{2, 5, 6}, 8);

    /* renamed from: c  reason: collision with root package name */
    public final int[] f7464c;

    /* renamed from: d  reason: collision with root package name */
    public final int f7465d;

    public m(int[] iArr, int i2) {
        if (iArr != null) {
            this.f7464c = Arrays.copyOf(iArr, iArr.length);
            Arrays.sort(this.f7464c);
        } else {
            this.f7464c = new int[0];
        }
        this.f7465d = i2;
    }

    public static m a(Context context) {
        return a(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    public int b() {
        return this.f7465d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (!Arrays.equals(this.f7464c, mVar.f7464c) || this.f7465d != mVar.f7465d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f7465d + (Arrays.hashCode(this.f7464c) * 31);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f7465d + ", supportedEncodings=" + Arrays.toString(this.f7464c) + "]";
    }

    @SuppressLint({"InlinedApi"})
    public static m a(Context context, Intent intent) {
        if (a() && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
            return f7463b;
        }
        if (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) {
            return f7462a;
        }
        return new m(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
    }

    public boolean a(int i2) {
        return Arrays.binarySearch(this.f7464c, i2) >= 0;
    }

    public static boolean a() {
        return I.f9565a >= 17 && "Amazon".equals(I.f9567c);
    }
}
