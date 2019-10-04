package ir.cafebazaar.inline.ui;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import f.a.a.d.a;

public class Theme implements a, Parcelable {
    public static final Parcelable.Creator<Theme> CREATOR = new w();

    /* renamed from: a  reason: collision with root package name */
    public int f14974a;

    /* renamed from: b  reason: collision with root package name */
    public int f14975b;

    /* renamed from: c  reason: collision with root package name */
    public int f14976c;

    public Theme() {
        this(-16777216, -1118482, -12434878);
    }

    public void a(int i2) {
        this.f14975b = i2;
    }

    public void b(int i2) {
        this.f14974a = i2;
    }

    public void c(int i2) {
        this.f14976c = i2;
    }

    public int d() {
        int a2 = a();
        int red = Color.red(a2);
        int blue = Color.blue(a2);
        return Color.rgb(Math.min(red + 24, 255), Math.min(Color.green(a2) + 24, 255), Math.min(blue + 24, 255));
    }

    public int describeContents() {
        return 0;
    }

    public int e() {
        return c.c.a.d.g.a.a(j(), a(), 0.5f);
    }

    public int g() {
        return b.i.c.a.a(h()) < 0.3d ? -1 : -16777216;
    }

    public int h() {
        return this.f14974a;
    }

    public int i() {
        float[] fArr = new float[3];
        Color.colorToHSV(h(), fArr);
        double d2 = (double) fArr[2];
        Double.isNaN(d2);
        fArr[2] = (float) (d2 * 0.75d);
        return Color.HSVToColor(fArr);
    }

    public int j() {
        return this.f14976c;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f14974a);
        parcel.writeInt(this.f14975b);
        parcel.writeInt(this.f14976c);
    }

    public Theme(int i2, int i3, int i4) {
        this.f14974a = i2;
        this.f14975b = i3;
        this.f14976c = i4;
    }

    public int a() {
        return this.f14975b;
    }

    public int b() {
        return b.i.c.a.a(a()) < 0.3d ? -1 : -16777216;
    }

    public int c() {
        return b.i.c.a.a(a()) > 0.5d ? -328966 : -14273992;
    }

    public Theme(Parcel parcel) {
        this.f14974a = parcel.readInt();
        this.f14975b = parcel.readInt();
        this.f14976c = parcel.readInt();
    }
}
