package c.e.a.a.m.a;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import c.e.a.a.p.a.c;

/* compiled from: OrientationListener */
public final class d implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    public final float[] f9351a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    public final float[] f9352b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    public final float[] f9353c = new float[16];

    /* renamed from: d  reason: collision with root package name */
    public final float[] f9354d = new float[3];

    /* renamed from: e  reason: collision with root package name */
    public final Display f9355e;

    /* renamed from: f  reason: collision with root package name */
    public final a[] f9356f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f9357g;

    /* compiled from: OrientationListener */
    public interface a {
        void a(float[] fArr, float f2);
    }

    public d(Display display, a... aVarArr) {
        this.f9355e = display;
        this.f9356f = aVarArr;
    }

    public static void c(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    public final void a(float[] fArr, float f2) {
        for (a a2 : this.f9356f) {
            a2.a(fArr, f2);
        }
    }

    public final void b(float[] fArr) {
        if (!this.f9357g) {
            c.a(this.f9353c, fArr);
            this.f9357g = true;
        }
        float[] fArr2 = this.f9352b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f9352b, 0, this.f9353c, 0);
    }

    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f9351a, sensorEvent.values);
        a(this.f9351a, this.f9355e.getRotation());
        float a2 = a(this.f9351a);
        c(this.f9351a);
        b(this.f9351a);
        a(this.f9351a, a2);
    }

    public final float a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.f9352b);
        SensorManager.getOrientation(this.f9352b, this.f9354d);
        return this.f9354d[2];
    }

    public final void a(float[] fArr, int i2) {
        if (i2 != 0) {
            int i3 = 130;
            int i4 = 129;
            if (i2 == 1) {
                i3 = 2;
            } else if (i2 == 2) {
                i3 = 129;
                i4 = 130;
            } else if (i2 == 3) {
                i4 = 1;
            } else {
                throw new IllegalStateException();
            }
            float[] fArr2 = this.f9352b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f9352b, i3, i4, fArr);
        }
    }
}
