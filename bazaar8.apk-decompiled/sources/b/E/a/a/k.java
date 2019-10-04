package b.E.a.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import b.f.C0243b;
import b.i.b.a.i;
import b.i.c.b;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: VectorDrawableCompat */
public class k extends i {

    /* renamed from: b  reason: collision with root package name */
    public static final PorterDuff.Mode f1243b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c  reason: collision with root package name */
    public g f1244c;

    /* renamed from: d  reason: collision with root package name */
    public PorterDuffColorFilter f1245d;

    /* renamed from: e  reason: collision with root package name */
    public ColorFilter f1246e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1247f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1248g;

    /* renamed from: h  reason: collision with root package name */
    public Drawable.ConstantState f1249h;

    /* renamed from: i  reason: collision with root package name */
    public final float[] f1250i;

    /* renamed from: j  reason: collision with root package name */
    public final Matrix f1251j;

    /* renamed from: k  reason: collision with root package name */
    public final Rect f1252k;

    /* compiled from: VectorDrawableCompat */
    private static class a extends e {
        public a() {
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (i.a(xmlPullParser, "pathData")) {
                TypedArray a2 = i.a(resources, theme, attributeSet, a.f1216d);
                a(a2, xmlPullParser);
                a2.recycle();
            }
        }

        public boolean b() {
            return true;
        }

        public a(a aVar) {
            super(aVar);
        }

        public final void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f1274b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f1273a = b.i.c.b.a(string2);
            }
            this.f1275c = i.b(typedArray, xmlPullParser, "fillType", 2, 0);
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static class b extends e {

        /* renamed from: e  reason: collision with root package name */
        public int[] f1253e;

        /* renamed from: f  reason: collision with root package name */
        public b.i.b.a.b f1254f;

        /* renamed from: g  reason: collision with root package name */
        public float f1255g = 0.0f;

        /* renamed from: h  reason: collision with root package name */
        public b.i.b.a.b f1256h;

        /* renamed from: i  reason: collision with root package name */
        public float f1257i = 1.0f;

        /* renamed from: j  reason: collision with root package name */
        public float f1258j = 1.0f;

        /* renamed from: k  reason: collision with root package name */
        public float f1259k = 0.0f;

        /* renamed from: l  reason: collision with root package name */
        public float f1260l = 1.0f;
        public float m = 0.0f;
        public Paint.Cap n = Paint.Cap.BUTT;
        public Paint.Join o = Paint.Join.MITER;
        public float p = 4.0f;

        public b() {
        }

        public final Paint.Cap a(int i2, Paint.Cap cap) {
            if (i2 == 0) {
                return Paint.Cap.BUTT;
            }
            if (i2 != 1) {
                return i2 != 2 ? cap : Paint.Cap.SQUARE;
            }
            return Paint.Cap.ROUND;
        }

        public float getFillAlpha() {
            return this.f1258j;
        }

        public int getFillColor() {
            return this.f1256h.a();
        }

        public float getStrokeAlpha() {
            return this.f1257i;
        }

        public int getStrokeColor() {
            return this.f1254f.a();
        }

        public float getStrokeWidth() {
            return this.f1255g;
        }

        public float getTrimPathEnd() {
            return this.f1260l;
        }

        public float getTrimPathOffset() {
            return this.m;
        }

        public float getTrimPathStart() {
            return this.f1259k;
        }

        public void setFillAlpha(float f2) {
            this.f1258j = f2;
        }

        public void setFillColor(int i2) {
            this.f1256h.b(i2);
        }

        public void setStrokeAlpha(float f2) {
            this.f1257i = f2;
        }

        public void setStrokeColor(int i2) {
            this.f1254f.b(i2);
        }

        public void setStrokeWidth(float f2) {
            this.f1255g = f2;
        }

        public void setTrimPathEnd(float f2) {
            this.f1260l = f2;
        }

        public void setTrimPathOffset(float f2) {
            this.m = f2;
        }

        public void setTrimPathStart(float f2) {
            this.f1259k = f2;
        }

        public final Paint.Join a(int i2, Paint.Join join) {
            if (i2 == 0) {
                return Paint.Join.MITER;
            }
            if (i2 != 1) {
                return i2 != 2 ? join : Paint.Join.BEVEL;
            }
            return Paint.Join.ROUND;
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a2 = i.a(resources, theme, attributeSet, a.f1215c);
            a(a2, xmlPullParser, theme);
            a2.recycle();
        }

        public final void a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f1253e = null;
            if (i.a(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f1274b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f1273a = b.i.c.b.a(string2);
                }
                Resources.Theme theme2 = theme;
                this.f1256h = i.a(typedArray, xmlPullParser, theme2, "fillColor", 1, 0);
                this.f1258j = i.a(typedArray, xmlPullParser, "fillAlpha", 12, this.f1258j);
                this.n = a(i.b(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.n);
                this.o = a(i.b(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.o);
                this.p = i.a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.p);
                this.f1254f = i.a(typedArray, xmlPullParser, theme2, "strokeColor", 3, 0);
                this.f1257i = i.a(typedArray, xmlPullParser, "strokeAlpha", 11, this.f1257i);
                this.f1255g = i.a(typedArray, xmlPullParser, "strokeWidth", 4, this.f1255g);
                this.f1260l = i.a(typedArray, xmlPullParser, "trimPathEnd", 6, this.f1260l);
                this.m = i.a(typedArray, xmlPullParser, "trimPathOffset", 7, this.m);
                this.f1259k = i.a(typedArray, xmlPullParser, "trimPathStart", 5, this.f1259k);
                this.f1275c = i.b(typedArray, xmlPullParser, "fillType", 13, this.f1275c);
            }
        }

        public b(b bVar) {
            super(bVar);
            this.f1253e = bVar.f1253e;
            this.f1254f = bVar.f1254f;
            this.f1255g = bVar.f1255g;
            this.f1257i = bVar.f1257i;
            this.f1256h = bVar.f1256h;
            this.f1275c = bVar.f1275c;
            this.f1258j = bVar.f1258j;
            this.f1259k = bVar.f1259k;
            this.f1260l = bVar.f1260l;
            this.m = bVar.m;
            this.n = bVar.n;
            this.o = bVar.o;
            this.p = bVar.p;
        }

        public boolean a() {
            return this.f1256h.d() || this.f1254f.d();
        }

        public boolean a(int[] iArr) {
            return this.f1254f.a(iArr) | this.f1256h.a(iArr);
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static class c extends d {

        /* renamed from: a  reason: collision with root package name */
        public final Matrix f1261a = new Matrix();

        /* renamed from: b  reason: collision with root package name */
        public final ArrayList<d> f1262b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        public float f1263c = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        public float f1264d = 0.0f;

        /* renamed from: e  reason: collision with root package name */
        public float f1265e = 0.0f;

        /* renamed from: f  reason: collision with root package name */
        public float f1266f = 1.0f;

        /* renamed from: g  reason: collision with root package name */
        public float f1267g = 1.0f;

        /* renamed from: h  reason: collision with root package name */
        public float f1268h = 0.0f;

        /* renamed from: i  reason: collision with root package name */
        public float f1269i = 0.0f;

        /* renamed from: j  reason: collision with root package name */
        public final Matrix f1270j = new Matrix();

        /* renamed from: k  reason: collision with root package name */
        public int f1271k;

        /* renamed from: l  reason: collision with root package name */
        public int[] f1272l;
        public String m = null;

        public c(c cVar, C0243b<String, Object> bVar) {
            super();
            e eVar;
            this.f1263c = cVar.f1263c;
            this.f1264d = cVar.f1264d;
            this.f1265e = cVar.f1265e;
            this.f1266f = cVar.f1266f;
            this.f1267g = cVar.f1267g;
            this.f1268h = cVar.f1268h;
            this.f1269i = cVar.f1269i;
            this.f1272l = cVar.f1272l;
            this.m = cVar.m;
            this.f1271k = cVar.f1271k;
            String str = this.m;
            if (str != null) {
                bVar.put(str, this);
            }
            this.f1270j.set(cVar.f1270j);
            ArrayList<d> arrayList = cVar.f1262b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                d dVar = arrayList.get(i2);
                if (dVar instanceof c) {
                    this.f1262b.add(new c((c) dVar, bVar));
                } else {
                    if (dVar instanceof b) {
                        eVar = new b((b) dVar);
                    } else if (dVar instanceof a) {
                        eVar = new a((a) dVar);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f1262b.add(eVar);
                    String str2 = eVar.f1274b;
                    if (str2 != null) {
                        bVar.put(str2, eVar);
                    }
                }
            }
        }

        public void a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a2 = i.a(resources, theme, attributeSet, a.f1214b);
            a(a2, xmlPullParser);
            a2.recycle();
        }

        public final void b() {
            this.f1270j.reset();
            this.f1270j.postTranslate(-this.f1264d, -this.f1265e);
            this.f1270j.postScale(this.f1266f, this.f1267g);
            this.f1270j.postRotate(this.f1263c, 0.0f, 0.0f);
            this.f1270j.postTranslate(this.f1268h + this.f1264d, this.f1269i + this.f1265e);
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.f1270j;
        }

        public float getPivotX() {
            return this.f1264d;
        }

        public float getPivotY() {
            return this.f1265e;
        }

        public float getRotation() {
            return this.f1263c;
        }

        public float getScaleX() {
            return this.f1266f;
        }

        public float getScaleY() {
            return this.f1267g;
        }

        public float getTranslateX() {
            return this.f1268h;
        }

        public float getTranslateY() {
            return this.f1269i;
        }

        public void setPivotX(float f2) {
            if (f2 != this.f1264d) {
                this.f1264d = f2;
                b();
            }
        }

        public void setPivotY(float f2) {
            if (f2 != this.f1265e) {
                this.f1265e = f2;
                b();
            }
        }

        public void setRotation(float f2) {
            if (f2 != this.f1263c) {
                this.f1263c = f2;
                b();
            }
        }

        public void setScaleX(float f2) {
            if (f2 != this.f1266f) {
                this.f1266f = f2;
                b();
            }
        }

        public void setScaleY(float f2) {
            if (f2 != this.f1267g) {
                this.f1267g = f2;
                b();
            }
        }

        public void setTranslateX(float f2) {
            if (f2 != this.f1268h) {
                this.f1268h = f2;
                b();
            }
        }

        public void setTranslateY(float f2) {
            if (f2 != this.f1269i) {
                this.f1269i = f2;
                b();
            }
        }

        public final void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f1272l = null;
            this.f1263c = i.a(typedArray, xmlPullParser, "rotation", 5, this.f1263c);
            this.f1264d = typedArray.getFloat(1, this.f1264d);
            this.f1265e = typedArray.getFloat(2, this.f1265e);
            this.f1266f = i.a(typedArray, xmlPullParser, "scaleX", 3, this.f1266f);
            this.f1267g = i.a(typedArray, xmlPullParser, "scaleY", 4, this.f1267g);
            this.f1268h = i.a(typedArray, xmlPullParser, "translateX", 6, this.f1268h);
            this.f1269i = i.a(typedArray, xmlPullParser, "translateY", 7, this.f1269i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            b();
        }

        public boolean a() {
            for (int i2 = 0; i2 < this.f1262b.size(); i2++) {
                if (this.f1262b.get(i2).a()) {
                    return true;
                }
            }
            return false;
        }

        public boolean a(int[] iArr) {
            boolean z = false;
            for (int i2 = 0; i2 < this.f1262b.size(); i2++) {
                z |= this.f1262b.get(i2).a(iArr);
            }
            return z;
        }

        public c() {
            super();
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static abstract class d {
        public d() {
        }

        public boolean a() {
            return false;
        }

        public boolean a(int[] iArr) {
            return false;
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static abstract class e extends d {

        /* renamed from: a  reason: collision with root package name */
        public b.C0029b[] f1273a = null;

        /* renamed from: b  reason: collision with root package name */
        public String f1274b;

        /* renamed from: c  reason: collision with root package name */
        public int f1275c = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f1276d;

        public e() {
            super();
        }

        public void a(Path path) {
            path.reset();
            b.C0029b[] bVarArr = this.f1273a;
            if (bVarArr != null) {
                b.C0029b.a(bVarArr, path);
            }
        }

        public boolean b() {
            return false;
        }

        public b.C0029b[] getPathData() {
            return this.f1273a;
        }

        public String getPathName() {
            return this.f1274b;
        }

        public void setPathData(b.C0029b[] bVarArr) {
            if (!b.i.c.b.a(this.f1273a, bVarArr)) {
                this.f1273a = b.i.c.b.a(bVarArr);
            } else {
                b.i.c.b.b(this.f1273a, bVarArr);
            }
        }

        public e(e eVar) {
            super();
            this.f1274b = eVar.f1274b;
            this.f1276d = eVar.f1276d;
            this.f1273a = b.i.c.b.a(eVar.f1273a);
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static class f {

        /* renamed from: a  reason: collision with root package name */
        public static final Matrix f1277a = new Matrix();

        /* renamed from: b  reason: collision with root package name */
        public final Path f1278b;

        /* renamed from: c  reason: collision with root package name */
        public final Path f1279c;

        /* renamed from: d  reason: collision with root package name */
        public final Matrix f1280d;

        /* renamed from: e  reason: collision with root package name */
        public Paint f1281e;

        /* renamed from: f  reason: collision with root package name */
        public Paint f1282f;

        /* renamed from: g  reason: collision with root package name */
        public PathMeasure f1283g;

        /* renamed from: h  reason: collision with root package name */
        public int f1284h;

        /* renamed from: i  reason: collision with root package name */
        public final c f1285i;

        /* renamed from: j  reason: collision with root package name */
        public float f1286j;

        /* renamed from: k  reason: collision with root package name */
        public float f1287k;

        /* renamed from: l  reason: collision with root package name */
        public float f1288l;
        public float m;
        public int n;
        public String o;
        public Boolean p;
        public final C0243b<String, Object> q;

        public f() {
            this.f1280d = new Matrix();
            this.f1286j = 0.0f;
            this.f1287k = 0.0f;
            this.f1288l = 0.0f;
            this.m = 0.0f;
            this.n = 255;
            this.o = null;
            this.p = null;
            this.q = new C0243b<>();
            this.f1285i = new c();
            this.f1278b = new Path();
            this.f1279c = new Path();
        }

        public static float a(float f2, float f3, float f4, float f5) {
            return (f2 * f5) - (f3 * f4);
        }

        public final void a(c cVar, Matrix matrix, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            cVar.f1261a.set(matrix);
            cVar.f1261a.preConcat(cVar.f1270j);
            canvas.save();
            for (int i4 = 0; i4 < cVar.f1262b.size(); i4++) {
                d dVar = cVar.f1262b.get(i4);
                if (dVar instanceof c) {
                    a((c) dVar, cVar.f1261a, canvas, i2, i3, colorFilter);
                } else if (dVar instanceof e) {
                    a(cVar, (e) dVar, canvas, i2, i3, colorFilter);
                }
            }
            canvas.restore();
        }

        public float getAlpha() {
            return ((float) getRootAlpha()) / 255.0f;
        }

        public int getRootAlpha() {
            return this.n;
        }

        public void setAlpha(float f2) {
            setRootAlpha((int) (f2 * 255.0f));
        }

        public void setRootAlpha(int i2) {
            this.n = i2;
        }

        public void a(Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            a(this.f1285i, f1277a, canvas, i2, i3, colorFilter);
        }

        public f(f fVar) {
            this.f1280d = new Matrix();
            this.f1286j = 0.0f;
            this.f1287k = 0.0f;
            this.f1288l = 0.0f;
            this.m = 0.0f;
            this.n = 255;
            this.o = null;
            this.p = null;
            this.q = new C0243b<>();
            this.f1285i = new c(fVar.f1285i, this.q);
            this.f1278b = new Path(fVar.f1278b);
            this.f1279c = new Path(fVar.f1279c);
            this.f1286j = fVar.f1286j;
            this.f1287k = fVar.f1287k;
            this.f1288l = fVar.f1288l;
            this.m = fVar.m;
            this.f1284h = fVar.f1284h;
            this.n = fVar.n;
            this.o = fVar.o;
            String str = fVar.o;
            if (str != null) {
                this.q.put(str, this);
            }
            this.p = fVar.p;
        }

        public final void a(c cVar, e eVar, Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            float f2 = ((float) i2) / this.f1288l;
            float f3 = ((float) i3) / this.m;
            float min = Math.min(f2, f3);
            Matrix matrix = cVar.f1261a;
            this.f1280d.set(matrix);
            this.f1280d.postScale(f2, f3);
            float a2 = a(matrix);
            if (a2 != 0.0f) {
                eVar.a(this.f1278b);
                Path path = this.f1278b;
                this.f1279c.reset();
                if (eVar.b()) {
                    this.f1279c.setFillType(eVar.f1275c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                    this.f1279c.addPath(path, this.f1280d);
                    canvas.clipPath(this.f1279c);
                } else {
                    b bVar = (b) eVar;
                    if (!(bVar.f1259k == 0.0f && bVar.f1260l == 1.0f)) {
                        float f4 = bVar.f1259k;
                        float f5 = bVar.m;
                        float f6 = (f4 + f5) % 1.0f;
                        float f7 = (bVar.f1260l + f5) % 1.0f;
                        if (this.f1283g == null) {
                            this.f1283g = new PathMeasure();
                        }
                        this.f1283g.setPath(this.f1278b, false);
                        float length = this.f1283g.getLength();
                        float f8 = f6 * length;
                        float f9 = f7 * length;
                        path.reset();
                        if (f8 > f9) {
                            this.f1283g.getSegment(f8, length, path, true);
                            this.f1283g.getSegment(0.0f, f9, path, true);
                        } else {
                            this.f1283g.getSegment(f8, f9, path, true);
                        }
                        path.rLineTo(0.0f, 0.0f);
                    }
                    this.f1279c.addPath(path, this.f1280d);
                    if (bVar.f1256h.e()) {
                        b.i.b.a.b bVar2 = bVar.f1256h;
                        if (this.f1282f == null) {
                            this.f1282f = new Paint(1);
                            this.f1282f.setStyle(Paint.Style.FILL);
                        }
                        Paint paint = this.f1282f;
                        if (bVar2.c()) {
                            Shader b2 = bVar2.b();
                            b2.setLocalMatrix(this.f1280d);
                            paint.setShader(b2);
                            paint.setAlpha(Math.round(bVar.f1258j * 255.0f));
                        } else {
                            paint.setShader(null);
                            paint.setAlpha(255);
                            paint.setColor(k.a(bVar2.a(), bVar.f1258j));
                        }
                        paint.setColorFilter(colorFilter);
                        this.f1279c.setFillType(bVar.f1275c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                        canvas.drawPath(this.f1279c, paint);
                    }
                    if (bVar.f1254f.e()) {
                        b.i.b.a.b bVar3 = bVar.f1254f;
                        if (this.f1281e == null) {
                            this.f1281e = new Paint(1);
                            this.f1281e.setStyle(Paint.Style.STROKE);
                        }
                        Paint paint2 = this.f1281e;
                        Paint.Join join = bVar.o;
                        if (join != null) {
                            paint2.setStrokeJoin(join);
                        }
                        Paint.Cap cap = bVar.n;
                        if (cap != null) {
                            paint2.setStrokeCap(cap);
                        }
                        paint2.setStrokeMiter(bVar.p);
                        if (bVar3.c()) {
                            Shader b3 = bVar3.b();
                            b3.setLocalMatrix(this.f1280d);
                            paint2.setShader(b3);
                            paint2.setAlpha(Math.round(bVar.f1257i * 255.0f));
                        } else {
                            paint2.setShader(null);
                            paint2.setAlpha(255);
                            paint2.setColor(k.a(bVar3.a(), bVar.f1257i));
                        }
                        paint2.setColorFilter(colorFilter);
                        paint2.setStrokeWidth(bVar.f1255g * min * a2);
                        canvas.drawPath(this.f1279c, paint2);
                    }
                }
            }
        }

        public final float a(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float a2 = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max((float) Math.hypot((double) fArr[0], (double) fArr[1]), (float) Math.hypot((double) fArr[2], (double) fArr[3]));
            if (max > 0.0f) {
                return Math.abs(a2) / max;
            }
            return 0.0f;
        }

        public boolean a() {
            if (this.p == null) {
                this.p = Boolean.valueOf(this.f1285i.a());
            }
            return this.p.booleanValue();
        }

        public boolean a(int[] iArr) {
            return this.f1285i.a(iArr);
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static class g extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        public int f1289a;

        /* renamed from: b  reason: collision with root package name */
        public f f1290b;

        /* renamed from: c  reason: collision with root package name */
        public ColorStateList f1291c;

        /* renamed from: d  reason: collision with root package name */
        public PorterDuff.Mode f1292d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f1293e;

        /* renamed from: f  reason: collision with root package name */
        public Bitmap f1294f;

        /* renamed from: g  reason: collision with root package name */
        public ColorStateList f1295g;

        /* renamed from: h  reason: collision with root package name */
        public PorterDuff.Mode f1296h;

        /* renamed from: i  reason: collision with root package name */
        public int f1297i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f1298j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f1299k;

        /* renamed from: l  reason: collision with root package name */
        public Paint f1300l;

        public g(g gVar) {
            this.f1291c = null;
            this.f1292d = k.f1243b;
            if (gVar != null) {
                this.f1289a = gVar.f1289a;
                this.f1290b = new f(gVar.f1290b);
                Paint paint = gVar.f1290b.f1282f;
                if (paint != null) {
                    this.f1290b.f1282f = new Paint(paint);
                }
                Paint paint2 = gVar.f1290b.f1281e;
                if (paint2 != null) {
                    this.f1290b.f1281e = new Paint(paint2);
                }
                this.f1291c = gVar.f1291c;
                this.f1292d = gVar.f1292d;
                this.f1293e = gVar.f1293e;
            }
        }

        public void a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f1294f, null, rect, a(colorFilter));
        }

        public boolean b() {
            return this.f1290b.getRootAlpha() < 255;
        }

        public void c(int i2, int i3) {
            this.f1294f.eraseColor(0);
            this.f1290b.a(new Canvas(this.f1294f), i2, i3, (ColorFilter) null);
        }

        public void d() {
            this.f1295g = this.f1291c;
            this.f1296h = this.f1292d;
            this.f1297i = this.f1290b.getRootAlpha();
            this.f1298j = this.f1293e;
            this.f1299k = false;
        }

        public int getChangingConfigurations() {
            return this.f1289a;
        }

        public Drawable newDrawable() {
            return new k(this);
        }

        public void b(int i2, int i3) {
            if (this.f1294f == null || !a(i2, i3)) {
                this.f1294f = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
                this.f1299k = true;
            }
        }

        public Drawable newDrawable(Resources resources) {
            return new k(this);
        }

        public Paint a(ColorFilter colorFilter) {
            if (!b() && colorFilter == null) {
                return null;
            }
            if (this.f1300l == null) {
                this.f1300l = new Paint();
                this.f1300l.setFilterBitmap(true);
            }
            this.f1300l.setAlpha(this.f1290b.getRootAlpha());
            this.f1300l.setColorFilter(colorFilter);
            return this.f1300l;
        }

        public boolean c() {
            return this.f1290b.a();
        }

        public boolean a(int i2, int i3) {
            return i2 == this.f1294f.getWidth() && i3 == this.f1294f.getHeight();
        }

        public boolean a() {
            return !this.f1299k && this.f1295g == this.f1291c && this.f1296h == this.f1292d && this.f1298j == this.f1293e && this.f1297i == this.f1290b.getRootAlpha();
        }

        public g() {
            this.f1291c = null;
            this.f1292d = k.f1243b;
            this.f1290b = new f();
        }

        public boolean a(int[] iArr) {
            boolean a2 = this.f1290b.a(iArr);
            this.f1299k |= a2;
            return a2;
        }
    }

    /* compiled from: VectorDrawableCompat */
    private static class h extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        public final Drawable.ConstantState f1301a;

        public h(Drawable.ConstantState constantState) {
            this.f1301a = constantState;
        }

        public boolean canApplyTheme() {
            return this.f1301a.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.f1301a.getChangingConfigurations();
        }

        public Drawable newDrawable() {
            k kVar = new k();
            kVar.f1242a = (VectorDrawable) this.f1301a.newDrawable();
            return kVar;
        }

        public Drawable newDrawable(Resources resources) {
            k kVar = new k();
            kVar.f1242a = (VectorDrawable) this.f1301a.newDrawable(resources);
            return kVar;
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            k kVar = new k();
            kVar.f1242a = (VectorDrawable) this.f1301a.newDrawable(resources, theme);
            return kVar;
        }
    }

    public k() {
        this.f1248g = true;
        this.f1250i = new float[9];
        this.f1251j = new Matrix();
        this.f1252k = new Rect();
        this.f1244c = new g();
    }

    public static k createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        k kVar = new k();
        kVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return kVar;
    }

    public Object a(String str) {
        return this.f1244c.f1290b.q.get(str);
    }

    public boolean canApplyTheme() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.a(drawable);
        }
        return false;
    }

    public void draw(Canvas canvas) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f1252k);
        if (this.f1252k.width() > 0 && this.f1252k.height() > 0) {
            ColorFilter colorFilter = this.f1246e;
            if (colorFilter == null) {
                colorFilter = this.f1245d;
            }
            canvas.getMatrix(this.f1251j);
            this.f1251j.getValues(this.f1250i);
            float abs = Math.abs(this.f1250i[0]);
            float abs2 = Math.abs(this.f1250i[4]);
            float abs3 = Math.abs(this.f1250i[1]);
            float abs4 = Math.abs(this.f1250i[3]);
            if (!(abs3 == 0.0f && abs4 == 0.0f)) {
                abs = 1.0f;
                abs2 = 1.0f;
            }
            int min = Math.min(2048, (int) (((float) this.f1252k.width()) * abs));
            int min2 = Math.min(2048, (int) (((float) this.f1252k.height()) * abs2));
            if (min > 0 && min2 > 0) {
                int save = canvas.save();
                Rect rect = this.f1252k;
                canvas.translate((float) rect.left, (float) rect.top);
                if (a()) {
                    canvas.translate((float) this.f1252k.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                this.f1252k.offsetTo(0, 0);
                this.f1244c.b(min, min2);
                if (!this.f1248g) {
                    this.f1244c.c(min, min2);
                } else if (!this.f1244c.a()) {
                    this.f1244c.c(min, min2);
                    this.f1244c.d();
                }
                this.f1244c.a(canvas, colorFilter, this.f1252k);
                canvas.restoreToCount(save);
            }
        }
    }

    public int getAlpha() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return b.i.c.a.a.c(drawable);
        }
        return this.f1244c.f1290b.getRootAlpha();
    }

    public int getChangingConfigurations() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f1244c.getChangingConfigurations();
    }

    public ColorFilter getColorFilter() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return b.i.c.a.a.d(drawable);
        }
        return this.f1246e;
    }

    public Drawable.ConstantState getConstantState() {
        Drawable drawable = this.f1242a;
        if (drawable != null && Build.VERSION.SDK_INT >= 24) {
            return new h(drawable.getConstantState());
        }
        this.f1244c.f1289a = getChangingConfigurations();
        return this.f1244c;
    }

    public int getIntrinsicHeight() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return (int) this.f1244c.f1290b.f1287k;
    }

    public int getIntrinsicWidth() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.f1244c.f1290b.f1286j;
    }

    public int getOpacity() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    public void invalidateSelf() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    public boolean isAutoMirrored() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return b.i.c.a.a.f(drawable);
        }
        return this.f1244c.f1293e;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0023, code lost:
        if (r0.isStateful() != false) goto L_0x0028;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean isStateful() {
        /*
            r1 = this;
            android.graphics.drawable.Drawable r0 = r1.f1242a
            if (r0 == 0) goto L_0x0009
            boolean r0 = r0.isStateful()
            return r0
        L_0x0009:
            boolean r0 = super.isStateful()
            if (r0 != 0) goto L_0x0028
            b.E.a.a.k$g r0 = r1.f1244c
            if (r0 == 0) goto L_0x0026
            boolean r0 = r0.c()
            if (r0 != 0) goto L_0x0028
            b.E.a.a.k$g r0 = r1.f1244c
            android.content.res.ColorStateList r0 = r0.f1291c
            if (r0 == 0) goto L_0x0026
            boolean r0 = r0.isStateful()
            if (r0 == 0) goto L_0x0026
            goto L_0x0028
        L_0x0026:
            r0 = 0
            goto L_0x0029
        L_0x0028:
            r0 = 1
        L_0x0029:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.E.a.a.k.isStateful():boolean");
    }

    public Drawable mutate() {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f1247f && super.mutate() == this) {
            this.f1244c = new g(this.f1244c);
            this.f1247f = true;
        }
        return this;
    }

    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z = false;
        g gVar = this.f1244c;
        ColorStateList colorStateList = gVar.f1291c;
        if (colorStateList != null) {
            PorterDuff.Mode mode = gVar.f1292d;
            if (mode != null) {
                this.f1245d = a(this.f1245d, colorStateList, mode);
                invalidateSelf();
                z = true;
            }
        }
        if (gVar.c() && gVar.a(iArr)) {
            invalidateSelf();
            z = true;
        }
        return z;
    }

    public void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    public void setAlpha(int i2) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.setAlpha(i2);
            return;
        }
        if (this.f1244c.f1290b.getRootAlpha() != i2) {
            this.f1244c.f1290b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, z);
        } else {
            this.f1244c.f1293e = z;
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.f1246e = colorFilter;
        invalidateSelf();
    }

    public void setTint(int i2) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.b(drawable, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, colorStateList);
            return;
        }
        g gVar = this.f1244c;
        if (gVar.f1291c != colorStateList) {
            gVar.f1291c = colorStateList;
            this.f1245d = a(this.f1245d, colorStateList, gVar.f1292d);
            invalidateSelf();
        }
    }

    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, mode);
            return;
        }
        g gVar = this.f1244c;
        if (gVar.f1292d != mode) {
            gVar.f1292d = mode;
            this.f1245d = a(this.f1245d, gVar.f1291c, mode);
            invalidateSelf();
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    public PorterDuffColorFilter a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0038 A[Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }] */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003d A[Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static b.E.a.a.k a(android.content.res.Resources r6, int r7, android.content.res.Resources.Theme r8) {
        /*
            java.lang.String r0 = "parser error"
            java.lang.String r1 = "VectorDrawableCompat"
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 24
            if (r2 < r3) goto L_0x0023
            b.E.a.a.k r0 = new b.E.a.a.k
            r0.<init>()
            android.graphics.drawable.Drawable r6 = b.i.b.a.h.a(r6, r7, r8)
            r0.f1242a = r6
            b.E.a.a.k$h r6 = new b.E.a.a.k$h
            android.graphics.drawable.Drawable r7 = r0.f1242a
            android.graphics.drawable.Drawable$ConstantState r7 = r7.getConstantState()
            r6.<init>(r7)
            r0.f1249h = r6
            return r0
        L_0x0023:
            android.content.res.XmlResourceParser r7 = r6.getXml(r7)     // Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }
            android.util.AttributeSet r2 = android.util.Xml.asAttributeSet(r7)     // Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }
        L_0x002b:
            int r3 = r7.next()     // Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }
            r4 = 2
            if (r3 == r4) goto L_0x0036
            r5 = 1
            if (r3 == r5) goto L_0x0036
            goto L_0x002b
        L_0x0036:
            if (r3 != r4) goto L_0x003d
            b.E.a.a.k r6 = createFromXmlInner(r6, r7, r2, r8)     // Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }
            return r6
        L_0x003d:
            org.xmlpull.v1.XmlPullParserException r6 = new org.xmlpull.v1.XmlPullParserException     // Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }
            java.lang.String r7 = "No start tag found"
            r6.<init>(r7)     // Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }
            throw r6     // Catch:{ XmlPullParserException -> 0x004a, IOException -> 0x0045 }
        L_0x0045:
            r6 = move-exception
            android.util.Log.e(r1, r0, r6)
            goto L_0x004e
        L_0x004a:
            r6 = move-exception
            android.util.Log.e(r1, r0, r6)
        L_0x004e:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: b.E.a.a.k.a(android.content.res.Resources, int, android.content.res.Resources$Theme):b.E.a.a.k");
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Drawable drawable = this.f1242a;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        g gVar = this.f1244c;
        gVar.f1290b = new f();
        TypedArray a2 = i.a(resources, theme, attributeSet, a.f1213a);
        a(a2, xmlPullParser, theme);
        a2.recycle();
        gVar.f1289a = getChangingConfigurations();
        gVar.f1299k = true;
        a(resources, xmlPullParser, attributeSet, theme);
        this.f1245d = a(this.f1245d, gVar.f1291c, gVar.f1292d);
    }

    public k(g gVar) {
        this.f1248g = true;
        this.f1250i = new float[9];
        this.f1251j = new Matrix();
        this.f1252k = new Rect();
        this.f1244c = gVar;
        this.f1245d = a(this.f1245d, gVar.f1291c, gVar.f1292d);
    }

    public static int a(int i2, float f2) {
        return (i2 & 16777215) | (((int) (((float) Color.alpha(i2)) * f2)) << 24);
    }

    public static PorterDuff.Mode a(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public final void a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
        g gVar = this.f1244c;
        f fVar = gVar.f1290b;
        gVar.f1292d = a(i.b(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList a2 = i.a(typedArray, xmlPullParser, theme, "tint", 1);
        if (a2 != null) {
            gVar.f1291c = a2;
        }
        gVar.f1293e = i.a(typedArray, xmlPullParser, "autoMirrored", 5, gVar.f1293e);
        fVar.f1288l = i.a(typedArray, xmlPullParser, "viewportWidth", 7, fVar.f1288l);
        fVar.m = i.a(typedArray, xmlPullParser, "viewportHeight", 8, fVar.m);
        if (fVar.f1288l <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (fVar.m > 0.0f) {
            fVar.f1286j = typedArray.getDimension(3, fVar.f1286j);
            fVar.f1287k = typedArray.getDimension(2, fVar.f1287k);
            if (fVar.f1286j <= 0.0f) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (fVar.f1287k > 0.0f) {
                fVar.setAlpha(i.a(typedArray, xmlPullParser, "alpha", 4, fVar.getAlpha()));
                String string = typedArray.getString(0);
                if (string != null) {
                    fVar.o = string;
                    fVar.q.put(string, fVar);
                }
            } else {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
            }
        } else {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
    }

    public final void a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        g gVar = this.f1244c;
        f fVar = gVar.f1290b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(fVar.f1285i);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                c cVar = (c) arrayDeque.peek();
                if ("path".equals(name)) {
                    b bVar = new b();
                    bVar.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f1262b.add(bVar);
                    if (bVar.getPathName() != null) {
                        fVar.q.put(bVar.getPathName(), bVar);
                    }
                    z = false;
                    gVar.f1289a = bVar.f1276d | gVar.f1289a;
                } else if ("clip-path".equals(name)) {
                    a aVar = new a();
                    aVar.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f1262b.add(aVar);
                    if (aVar.getPathName() != null) {
                        fVar.q.put(aVar.getPathName(), aVar);
                    }
                    gVar.f1289a = aVar.f1276d | gVar.f1289a;
                } else if ("group".equals(name)) {
                    c cVar2 = new c();
                    cVar2.a(resources, attributeSet, theme, xmlPullParser);
                    cVar.f1262b.add(cVar2);
                    arrayDeque.push(cVar2);
                    if (cVar2.getGroupName() != null) {
                        fVar.q.put(cVar2.getGroupName(), cVar2);
                    }
                    gVar.f1289a = cVar2.f1271k | gVar.f1289a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    public void a(boolean z) {
        this.f1248g = z;
    }

    public final boolean a() {
        if (Build.VERSION.SDK_INT < 17 || !isAutoMirrored() || b.i.c.a.a.e(this) != 1) {
            return false;
        }
        return true;
    }
}
