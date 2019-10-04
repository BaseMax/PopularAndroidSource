package cab.snapp.mapmodule.a.a;

import androidx.core.view.InputDeviceCompat;

public final class b extends m {
    public float anchorX;
    public float anchorY;
    public int icon;
    public String markerTag;

    public b(String str, int i, int i2, float f, float f2) {
        super(InputDeviceCompat.SOURCE_GAMEPAD, i);
        this.icon = i2;
        this.anchorX = f;
        this.anchorY = f2;
        this.markerTag = str;
    }
}
