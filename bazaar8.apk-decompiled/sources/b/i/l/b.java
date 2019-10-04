package b.i.l;

import android.os.Build;

/* compiled from: AutoSizeableTextView */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f2874a = (Build.VERSION.SDK_INT >= 27);

    int getAutoSizeMaxTextSize();

    int getAutoSizeMinTextSize();

    int getAutoSizeStepGranularity();

    void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5);

    void setAutoSizeTextTypeWithDefaults(int i2);
}
