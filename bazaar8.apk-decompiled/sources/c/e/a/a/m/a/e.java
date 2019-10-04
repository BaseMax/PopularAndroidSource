package c.e.a.a.m.a;

import android.opengl.GLES20;
import c.e.a.a.o.n;
import c.e.a.a.p.a.d;
import java.nio.FloatBuffer;

/* compiled from: ProjectionRenderer */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f9358a = {"uniform mat4 uMvpMatrix;", "uniform mat3 uTexMatrix;", "attribute vec4 aPosition;", "attribute vec2 aTexCoords;", "varying vec2 vTexCoords;", "void main() {", "  gl_Position = uMvpMatrix * aPosition;", "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;", "}"};

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f9359b = {"#extension GL_OES_EGL_image_external : require", "precision mediump float;", "uniform samplerExternalOES uTexture;", "varying vec2 vTexCoords;", "void main() {", "  gl_FragColor = texture2D(uTexture, vTexCoords);", "}"};

    /* renamed from: c  reason: collision with root package name */
    public static final float[] f9360c = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: d  reason: collision with root package name */
    public static final float[] f9361d = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: e  reason: collision with root package name */
    public static final float[] f9362e = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: f  reason: collision with root package name */
    public static final float[] f9363f = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: g  reason: collision with root package name */
    public static final float[] f9364g = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* renamed from: h  reason: collision with root package name */
    public int f9365h;

    /* renamed from: i  reason: collision with root package name */
    public a f9366i;

    /* renamed from: j  reason: collision with root package name */
    public a f9367j;

    /* renamed from: k  reason: collision with root package name */
    public int f9368k;

    /* renamed from: l  reason: collision with root package name */
    public int f9369l;
    public int m;
    public int n;
    public int o;
    public int p;

    /* compiled from: ProjectionRenderer */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f9370a;

        /* renamed from: b  reason: collision with root package name */
        public final FloatBuffer f9371b;

        /* renamed from: c  reason: collision with root package name */
        public final FloatBuffer f9372c;

        /* renamed from: d  reason: collision with root package name */
        public final int f9373d;

        public a(d.b bVar) {
            this.f9370a = bVar.a();
            this.f9371b = n.a(bVar.f9666c);
            this.f9372c = n.a(bVar.f9667d);
            int i2 = bVar.f9665b;
            if (i2 == 1) {
                this.f9373d = 5;
            } else if (i2 != 2) {
                this.f9373d = 4;
            } else {
                this.f9373d = 6;
            }
        }
    }

    public static boolean a(d dVar) {
        d.a aVar = dVar.f9659a;
        d.a aVar2 = dVar.f9660b;
        if (aVar.a() == 1 && aVar.a(0).f9664a == 0 && aVar2.a() == 1 && aVar2.a(0).f9664a == 0) {
            return true;
        }
        return false;
    }

    public void b(d dVar) {
        a aVar;
        if (a(dVar)) {
            this.f9365h = dVar.f9661c;
            this.f9366i = new a(dVar.f9659a.a(0));
            if (dVar.f9662d) {
                aVar = this.f9366i;
            } else {
                aVar = new a(dVar.f9660b.a(0));
            }
            this.f9367j = aVar;
        }
    }

    public void a() {
        this.f9368k = n.a(f9358a, f9359b);
        this.f9369l = GLES20.glGetUniformLocation(this.f9368k, "uMvpMatrix");
        this.m = GLES20.glGetUniformLocation(this.f9368k, "uTexMatrix");
        this.n = GLES20.glGetAttribLocation(this.f9368k, "aPosition");
        this.o = GLES20.glGetAttribLocation(this.f9368k, "aTexCoords");
        this.p = GLES20.glGetUniformLocation(this.f9368k, "uTexture");
    }

    public void a(int i2, float[] fArr, boolean z) {
        float[] fArr2;
        a aVar = z ? this.f9367j : this.f9366i;
        if (aVar != null) {
            GLES20.glUseProgram(this.f9368k);
            n.a();
            GLES20.glEnableVertexAttribArray(this.n);
            GLES20.glEnableVertexAttribArray(this.o);
            n.a();
            int i3 = this.f9365h;
            if (i3 == 1) {
                fArr2 = z ? f9362e : f9361d;
            } else if (i3 == 2) {
                fArr2 = z ? f9364g : f9363f;
            } else {
                fArr2 = f9360c;
            }
            GLES20.glUniformMatrix3fv(this.m, 1, false, fArr2, 0);
            GLES20.glUniformMatrix4fv(this.f9369l, 1, false, fArr, 0);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(36197, i2);
            GLES20.glUniform1i(this.p, 0);
            n.a();
            GLES20.glVertexAttribPointer(this.n, 3, 5126, false, 12, aVar.f9371b);
            n.a();
            GLES20.glVertexAttribPointer(this.o, 2, 5126, false, 8, aVar.f9372c);
            n.a();
            GLES20.glDrawArrays(aVar.f9373d, 0, aVar.f9370a);
            n.a();
            GLES20.glDisableVertexAttribArray(this.n);
            GLES20.glDisableVertexAttribArray(this.o);
        }
    }
}
