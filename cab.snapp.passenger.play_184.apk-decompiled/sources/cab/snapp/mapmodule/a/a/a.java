package cab.snapp.mapmodule.a.a;

public final class a extends m {
    public float anchorX;
    public float anchorY;
    public int icon;
    public double latitude;
    public double longitude;
    public String markerTag;

    public a(String str, int i, double d, double d2, int i2, float f, float f2) {
        super(1001, i);
        this.markerTag = str;
        this.latitude = d;
        this.longitude = d2;
        this.icon = i2;
        this.anchorX = f;
        this.anchorY = f2;
    }
}
