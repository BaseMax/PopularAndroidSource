package cab.snapp.mapmodule.a.a;

public final class d extends m {
    public float alpha;
    public float anchorX;
    public float anchorY;
    public int icon;
    public double latitude;
    public double longitude;
    public String markerTag;
    public float rotation;

    public d(int i, double d, double d2, int i2, float f, float f2, float f3, float f4, String str) {
        super(1002, i);
        this.latitude = d;
        this.longitude = d2;
        this.icon = i2;
        this.anchorX = f;
        this.anchorY = f2;
        this.rotation = f3;
        this.alpha = f4;
        this.markerTag = str;
    }
}
