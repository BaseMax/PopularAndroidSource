package c.e.a.a.m.a;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.WindowManager;
import c.e.a.a.M;
import c.e.a.a.m.a.d;
import c.e.a.a.m.a.i;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.p.o;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: SphericalSurfaceView */
public final class h extends GLSurfaceView {

    /* renamed from: a  reason: collision with root package name */
    public final SensorManager f9386a;

    /* renamed from: b  reason: collision with root package name */
    public final Sensor f9387b;

    /* renamed from: c  reason: collision with root package name */
    public final d f9388c;

    /* renamed from: d  reason: collision with root package name */
    public final a f9389d;

    /* renamed from: e  reason: collision with root package name */
    public final Handler f9390e;

    /* renamed from: f  reason: collision with root package name */
    public final i f9391f;

    /* renamed from: g  reason: collision with root package name */
    public final f f9392g;

    /* renamed from: h  reason: collision with root package name */
    public b f9393h;

    /* renamed from: i  reason: collision with root package name */
    public SurfaceTexture f9394i;

    /* renamed from: j  reason: collision with root package name */
    public Surface f9395j;

    /* renamed from: k  reason: collision with root package name */
    public M.e f9396k;

    /* compiled from: SphericalSurfaceView */
    class a implements GLSurfaceView.Renderer, i.a, d.a {

        /* renamed from: a  reason: collision with root package name */
        public final f f9397a;

        /* renamed from: b  reason: collision with root package name */
        public final float[] f9398b = new float[16];

        /* renamed from: c  reason: collision with root package name */
        public final float[] f9399c = new float[16];

        /* renamed from: d  reason: collision with root package name */
        public final float[] f9400d = new float[16];

        /* renamed from: e  reason: collision with root package name */
        public final float[] f9401e = new float[16];

        /* renamed from: f  reason: collision with root package name */
        public final float[] f9402f = new float[16];

        /* renamed from: g  reason: collision with root package name */
        public float f9403g;

        /* renamed from: h  reason: collision with root package name */
        public float f9404h;

        /* renamed from: i  reason: collision with root package name */
        public final float[] f9405i = new float[16];

        /* renamed from: j  reason: collision with root package name */
        public final float[] f9406j = new float[16];

        public a(f fVar) {
            this.f9397a = fVar;
            Matrix.setIdentityM(this.f9400d, 0);
            Matrix.setIdentityM(this.f9401e, 0);
            Matrix.setIdentityM(this.f9402f, 0);
            this.f9404h = 3.1415927f;
        }

        public synchronized void a(float[] fArr, float f2) {
            System.arraycopy(fArr, 0, this.f9400d, 0, this.f9400d.length);
            this.f9404h = -f2;
            a();
        }

        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f9406j, 0, this.f9400d, 0, this.f9402f, 0);
                Matrix.multiplyMM(this.f9405i, 0, this.f9401e, 0, this.f9406j, 0);
            }
            Matrix.multiplyMM(this.f9399c, 0, this.f9398b, 0, this.f9405i, 0);
            this.f9397a.a(this.f9399c, false);
        }

        public void onSurfaceChanged(GL10 gl10, int i2, int i3) {
            GLES20.glViewport(0, 0, i2, i3);
            float f2 = ((float) i2) / ((float) i3);
            Matrix.perspectiveM(this.f9398b, 0, a(f2), f2, 0.1f, 100.0f);
        }

        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            h.this.b(this.f9397a.b());
        }

        public final void a() {
            Matrix.setRotateM(this.f9401e, 0, -this.f9403g, (float) Math.cos((double) this.f9404h), (float) Math.sin((double) this.f9404h), 0.0f);
        }

        public synchronized void a(PointF pointF) {
            this.f9403g = pointF.y;
            a();
            Matrix.setRotateM(this.f9402f, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        public final float a(float f2) {
            if (!(f2 > 1.0f)) {
                return 90.0f;
            }
            double tan = Math.tan(Math.toRadians(45.0d));
            double d2 = (double) f2;
            Double.isNaN(d2);
            return (float) (Math.toDegrees(Math.atan(tan / d2)) * 2.0d);
        }
    }

    /* compiled from: SphericalSurfaceView */
    public interface b {
        void a(Surface surface);
    }

    public h(Context context) {
        this(context, null);
    }

    public final void b(SurfaceTexture surfaceTexture) {
        this.f9390e.post(new b(this, surfaceTexture));
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f9390e.post(new c(this));
    }

    public void onPause() {
        if (this.f9387b != null) {
            this.f9386a.unregisterListener(this.f9388c);
        }
        super.onPause();
    }

    public void onResume() {
        super.onResume();
        Sensor sensor = this.f9387b;
        if (sensor != null) {
            this.f9386a.registerListener(this.f9388c, sensor, 0);
        }
    }

    public void setDefaultStereoMode(int i2) {
        this.f9392g.a(i2);
    }

    public void setSingleTapListener(g gVar) {
        this.f9391f.a(gVar);
    }

    public void setSurfaceListener(b bVar) {
        this.f9393h = bVar;
    }

    public void setVideoComponent(M.e eVar) {
        M.e eVar2 = this.f9396k;
        if (eVar != eVar2) {
            if (eVar2 != null) {
                Surface surface = this.f9395j;
                if (surface != null) {
                    eVar2.b(surface);
                }
                this.f9396k.b((o) this.f9392g);
                this.f9396k.b((c.e.a.a.p.a.a) this.f9392g);
            }
            this.f9396k = eVar;
            M.e eVar3 = this.f9396k;
            if (eVar3 != null) {
                eVar3.a((o) this.f9392g);
                this.f9396k.a((c.e.a.a.p.a.a) this.f9392g);
                this.f9396k.a(this.f9395j);
            }
        }
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9390e = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        C0737e.a(systemService);
        this.f9386a = (SensorManager) systemService;
        this.f9387b = (I.f9565a >= 18 ? this.f9386a.getDefaultSensor(15) : null) == null ? this.f9386a.getDefaultSensor(11) : I.f9565a >= 18 ? this.f9386a.getDefaultSensor(15) : null;
        this.f9392g = new f();
        this.f9389d = new a(this.f9392g);
        this.f9391f = new i(context, this.f9389d, 25.0f);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        C0737e.a(windowManager);
        this.f9388c = new d(windowManager.getDefaultDisplay(), this.f9391f, this.f9389d);
        setEGLContextClientVersion(2);
        setRenderer(this.f9389d);
        setOnTouchListener(this.f9391f);
    }

    public /* synthetic */ void a() {
        if (this.f9395j != null) {
            b bVar = this.f9393h;
            if (bVar != null) {
                bVar.a(null);
            }
            a(this.f9394i, this.f9395j);
            this.f9394i = null;
            this.f9395j = null;
        }
    }

    public /* synthetic */ void a(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f9394i;
        Surface surface = this.f9395j;
        this.f9394i = surfaceTexture;
        this.f9395j = new Surface(surfaceTexture);
        b bVar = this.f9393h;
        if (bVar != null) {
            bVar.a(this.f9395j);
        }
        a(surfaceTexture2, surface);
    }

    public static void a(SurfaceTexture surfaceTexture, Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }
}
