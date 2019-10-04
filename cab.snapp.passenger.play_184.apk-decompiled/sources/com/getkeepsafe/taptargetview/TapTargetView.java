package com.getkeepsafe.taptargetview;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.DynamicLayout;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewManager;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.getkeepsafe.taptargetview.a;

public class TapTargetView extends View {
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    SpannableStringBuilder F;
    DynamicLayout G;
    TextPaint H;
    Paint I;
    Rect J;
    Rect K;
    Path L;
    float M;
    int N;
    int[] O;
    int P;
    float Q;
    int R;
    float S;
    int T;
    int U;
    int V;
    float W;

    /* renamed from: a  reason: collision with root package name */
    final int f2487a;
    float aa;
    int ab;
    int ac;
    Bitmap ad;
    a ae;
    ViewOutlineProvider af;
    final a.b ag = new a.b() {
        public final void onUpdate(float f) {
            float f2 = ((float) TapTargetView.this.N) * f;
            boolean z = f2 > TapTargetView.this.M;
            if (!z) {
                TapTargetView.this.a();
            }
            float f3 = TapTargetView.this.n.c * 255.0f;
            TapTargetView tapTargetView = TapTargetView.this;
            tapTargetView.M = f2;
            float f4 = 1.5f * f;
            tapTargetView.P = (int) Math.min(f3, f4 * f3);
            TapTargetView.this.L.reset();
            TapTargetView.this.L.addCircle((float) TapTargetView.this.O[0], (float) TapTargetView.this.O[1], TapTargetView.this.M, Path.Direction.CW);
            TapTargetView.this.T = (int) Math.min(255.0f, f4 * 255.0f);
            if (z) {
                TapTargetView tapTargetView2 = TapTargetView.this;
                tapTargetView2.S = ((float) tapTargetView2.f2488b) * Math.min(1.0f, f4);
            } else {
                TapTargetView tapTargetView3 = TapTargetView.this;
                tapTargetView3.S = ((float) tapTargetView3.f2488b) * f;
                TapTargetView.this.Q *= f;
            }
            TapTargetView.this.U = (int) (TapTargetView.a(f, 0.7f) * 255.0f);
            if (z) {
                TapTargetView.this.a();
            }
            TapTargetView tapTargetView4 = TapTargetView.this;
            tapTargetView4.a(tapTargetView4.J);
        }
    };
    final ValueAnimator ah = new a().duration(250).delayBy(250).interpolator(new AccelerateDecelerateInterpolator()).onUpdate(new a.b() {
        public final void onUpdate(float f) {
            TapTargetView.this.ag.onUpdate(f);
        }
    }).onEnd(new a.C0054a() {
        public final void onEnd() {
            TapTargetView.this.ai.start();
            boolean unused = TapTargetView.this.am = true;
        }
    }).build();
    final ValueAnimator ai;
    final ValueAnimator aj;
    private boolean ak = false;
    /* access modifiers changed from: private */
    public boolean al = false;
    /* access modifiers changed from: private */
    public boolean am = true;
    private final ValueAnimator an;
    private ValueAnimator[] ao;
    private final ViewTreeObserver.OnGlobalLayoutListener ap;

    /* renamed from: b  reason: collision with root package name */
    final int f2488b;
    final int c;
    final int d;
    final int e;
    final int f;
    final int g;
    final int h;
    final int i;
    final int j;
    final int k;
    final ViewGroup l;
    final ViewManager m;
    final c n;
    final Rect o;
    final TextPaint p;
    final TextPaint q;
    final Paint r;
    final Paint s;
    final Paint t;
    final Paint u;
    CharSequence v;
    StaticLayout w;
    CharSequence x;
    StaticLayout y;
    boolean z;

    public static class a {
        public void onOuterCircleClick(TapTargetView tapTargetView) {
        }

        public void onTargetDismissed(TapTargetView tapTargetView, boolean z) {
        }

        public void onTargetClick(TapTargetView tapTargetView) {
            tapTargetView.dismiss(true);
        }

        public void onTargetLongClick(TapTargetView tapTargetView) {
            onTargetClick(tapTargetView);
        }

        public void onTargetCancel(TapTargetView tapTargetView) {
            tapTargetView.dismiss(false);
        }
    }

    static float a(float f2) {
        return f2 < 0.5f ? f2 / 0.5f : (1.0f - f2) / 0.5f;
    }

    static float a(float f2, float f3) {
        if (f2 < f3) {
            return 0.0f;
        }
        return (f2 - f3) / (1.0f - f3);
    }

    public static TapTargetView showFor(Activity activity, c cVar) {
        return showFor(activity, cVar, (a) null);
    }

    public static TapTargetView showFor(Activity activity, c cVar, a aVar) {
        if (activity != null) {
            ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            TapTargetView tapTargetView = new TapTargetView(activity, viewGroup, (ViewGroup) viewGroup.findViewById(16908290), cVar, aVar);
            viewGroup.addView(tapTargetView, layoutParams);
            return tapTargetView;
        }
        throw new IllegalArgumentException("Activity is null");
    }

    public static TapTargetView showFor(Dialog dialog, c cVar) {
        return showFor(dialog, cVar, (a) null);
    }

    public static TapTargetView showFor(Dialog dialog, c cVar, a aVar) {
        if (dialog != null) {
            Context context = dialog.getContext();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.type = 2;
            layoutParams.format = 1;
            layoutParams.flags = 0;
            layoutParams.gravity = 8388659;
            layoutParams.x = 0;
            layoutParams.y = 0;
            layoutParams.width = -1;
            layoutParams.height = -1;
            TapTargetView tapTargetView = new TapTargetView(context, windowManager, null, cVar, aVar);
            windowManager.addView(tapTargetView, layoutParams);
            return tapTargetView;
        }
        throw new IllegalArgumentException("Dialog is null");
    }

    public TapTargetView(Context context, ViewManager viewManager, ViewGroup viewGroup, c cVar, a aVar) {
        super(context);
        int i2;
        Paint paint;
        TextPaint textPaint;
        final boolean z2;
        final boolean z3;
        boolean z4 = false;
        int i3 = -1;
        this.ai = new a().duration(1000).repeat(-1).interpolator(new AccelerateDecelerateInterpolator()).onUpdate(new a.b() {
            public final void onUpdate(float f) {
                float a2 = TapTargetView.a(f, 0.5f);
                TapTargetView tapTargetView = TapTargetView.this;
                tapTargetView.Q = (a2 + 1.0f) * ((float) tapTargetView.f2488b);
                TapTargetView tapTargetView2 = TapTargetView.this;
                tapTargetView2.R = (int) ((1.0f - a2) * 255.0f);
                tapTargetView2.S = ((float) tapTargetView2.f2488b) + (TapTargetView.a(f) * ((float) TapTargetView.this.c));
                if (TapTargetView.this.M != ((float) TapTargetView.this.N)) {
                    TapTargetView tapTargetView3 = TapTargetView.this;
                    tapTargetView3.M = (float) tapTargetView3.N;
                }
                TapTargetView.this.a();
                TapTargetView tapTargetView4 = TapTargetView.this;
                tapTargetView4.a(tapTargetView4.J);
            }
        }).build();
        this.aj = new a(true).duration(250).interpolator(new AccelerateDecelerateInterpolator()).onUpdate(new a.b() {
            public final void onUpdate(float f) {
                TapTargetView.this.ag.onUpdate(f);
            }
        }).onEnd(new a.C0054a() {
            public final void onEnd() {
                TapTargetView.this.b(true);
            }
        }).build();
        this.an = new a().duration(250).interpolator(new AccelerateDecelerateInterpolator()).onUpdate(new a.b() {
            public final void onUpdate(float f) {
                float min = Math.min(1.0f, 2.0f * f);
                TapTargetView tapTargetView = TapTargetView.this;
                tapTargetView.M = ((float) tapTargetView.N) * ((0.2f * min) + 1.0f);
                TapTargetView tapTargetView2 = TapTargetView.this;
                float f2 = 1.0f - min;
                tapTargetView2.P = (int) (tapTargetView2.n.c * f2 * 255.0f);
                TapTargetView.this.L.reset();
                TapTargetView.this.L.addCircle((float) TapTargetView.this.O[0], (float) TapTargetView.this.O[1], TapTargetView.this.M, Path.Direction.CW);
                TapTargetView tapTargetView3 = TapTargetView.this;
                float f3 = 1.0f - f;
                tapTargetView3.S = ((float) tapTargetView3.f2488b) * f3;
                TapTargetView tapTargetView4 = TapTargetView.this;
                tapTargetView4.T = (int) (f3 * 255.0f);
                tapTargetView4.Q = (f + 1.0f) * ((float) tapTargetView4.f2488b);
                TapTargetView tapTargetView5 = TapTargetView.this;
                tapTargetView5.R = (int) (f3 * ((float) tapTargetView5.R));
                TapTargetView tapTargetView6 = TapTargetView.this;
                tapTargetView6.U = (int) (f2 * 255.0f);
                tapTargetView6.a();
                TapTargetView tapTargetView7 = TapTargetView.this;
                tapTargetView7.a(tapTargetView7.J);
            }
        }).onEnd(new a.C0054a() {
            public final void onEnd() {
                TapTargetView.this.b(true);
            }
        }).build();
        this.ao = new ValueAnimator[]{this.ah, this.ai, this.an, this.aj};
        if (cVar != null) {
            this.n = cVar;
            this.m = viewManager;
            this.l = viewGroup;
            this.ae = aVar == null ? new a() : aVar;
            this.v = cVar.f2508a;
            this.x = cVar.f2509b;
            this.f2487a = e.a(context, 20);
            this.h = e.a(context, 40);
            this.f2488b = e.a(context, cVar.d);
            this.d = e.a(context, 40);
            this.e = e.a(context, 8);
            this.f = e.a(context, 360);
            this.g = e.a(context, 20);
            this.i = e.a(context, 88);
            this.j = e.a(context, 8);
            this.k = e.a(context, 1);
            this.c = (int) (((float) this.f2488b) * 0.1f);
            this.L = new Path();
            this.o = new Rect();
            this.J = new Rect();
            this.p = new TextPaint();
            this.p.setTextSize((float) c.a(context, cVar.u, cVar.s));
            this.p.setTypeface(Typeface.create("sans-serif-medium", 0));
            this.p.setAntiAlias(true);
            this.q = new TextPaint();
            this.q.setTextSize((float) c.a(context, cVar.v, cVar.t));
            this.q.setTypeface(Typeface.create(Typeface.SANS_SERIF, 0));
            this.q.setAntiAlias(true);
            this.q.setAlpha(137);
            this.r = new Paint();
            this.r.setAntiAlias(true);
            this.r.setAlpha((int) (cVar.c * 255.0f));
            this.s = new Paint();
            this.s.setAntiAlias(true);
            this.s.setAlpha(50);
            this.s.setStyle(Paint.Style.STROKE);
            this.s.setStrokeWidth((float) this.k);
            this.s.setColor(-16777216);
            this.t = new Paint();
            this.t.setAntiAlias(true);
            this.u = new Paint();
            this.u.setAntiAlias(true);
            this.B = this.n.z;
            this.C = this.n.x;
            this.D = this.n.y;
            if (this.C && Build.VERSION.SDK_INT >= 21 && !this.n.A) {
                this.af = new ViewOutlineProvider() {
                    public final void getOutline(View view, Outline outline) {
                        if (TapTargetView.this.O != null) {
                            outline.setOval((int) (((float) TapTargetView.this.O[0]) - TapTargetView.this.M), (int) (((float) TapTargetView.this.O[1]) - TapTargetView.this.M), (int) (((float) TapTargetView.this.O[0]) + TapTargetView.this.M), (int) (((float) TapTargetView.this.O[1]) + TapTargetView.this.M));
                            outline.setAlpha(((float) TapTargetView.this.P) / 255.0f);
                            if (Build.VERSION.SDK_INT >= 22) {
                                outline.offset(0, TapTargetView.this.j);
                            }
                        }
                    }
                };
                setOutlineProvider(this.af);
                setElevation((float) this.j);
            }
            if (!this.C || this.af != null || Build.VERSION.SDK_INT >= 18) {
                setLayerType(2, null);
            } else {
                setLayerType(1, null);
            }
            Resources.Theme theme = context.getTheme();
            this.z = e.a(context, "isLightTheme") == 0;
            c cVar2 = this.n;
            Integer a2 = c.a(context, cVar2.n, cVar2.i);
            if (a2 != null) {
                this.r.setColor(a2.intValue());
            } else if (theme != null) {
                this.r.setColor(e.a(context, "colorPrimary"));
            } else {
                this.r.setColor(-1);
            }
            c cVar3 = this.n;
            Integer a3 = c.a(context, cVar3.o, cVar3.j);
            if (a3 != null) {
                paint = this.t;
                i2 = a3.intValue();
            } else {
                paint = this.t;
                i2 = this.z ? -16777216 : -1;
            }
            paint.setColor(i2);
            if (this.n.A) {
                this.t.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            this.u.setColor(this.t.getColor());
            c cVar4 = this.n;
            Integer a4 = c.a(context, cVar4.p, cVar4.k);
            if (a4 != null) {
                int intValue = a4.intValue();
                this.V = (intValue & ViewCompat.MEASURED_SIZE_MASK) | (((int) (((float) (intValue >>> 24)) * 0.3f)) << 24);
            } else {
                this.V = -1;
            }
            c cVar5 = this.n;
            Integer a5 = c.a(context, cVar5.q, cVar5.l);
            if (a5 != null) {
                TextPaint textPaint2 = this.p;
                i3 = a5.intValue();
                textPaint = textPaint2;
            } else {
                textPaint = this.p;
                if (this.z) {
                    i3 = -16777216;
                }
            }
            textPaint.setColor(i3);
            c cVar6 = this.n;
            Integer a6 = c.a(context, cVar6.r, cVar6.m);
            if (a6 != null) {
                this.q.setColor(a6.intValue());
            } else {
                this.q.setColor(this.p.getColor());
            }
            if (this.n.g != null) {
                this.p.setTypeface(this.n.g);
            }
            if (this.n.h != null) {
                this.q.setTypeface(this.n.h);
            }
            if (Build.VERSION.SDK_INT < 19 || !(context instanceof Activity)) {
                z3 = false;
                z2 = false;
            } else {
                int i4 = ((Activity) context).getWindow().getAttributes().flags;
                z3 = (67108864 & i4) != 0;
                z2 = (i4 & 134217728) != 0 ? true : z4;
            }
            final c cVar7 = cVar;
            final ViewGroup viewGroup2 = viewGroup;
            final Context context2 = context;
            AnonymousClass12 r2 = new ViewTreeObserver.OnGlobalLayoutListener() {
                public final void onGlobalLayout() {
                    if (!TapTargetView.this.al) {
                        TapTargetView tapTargetView = TapTargetView.this;
                        int min = Math.min(tapTargetView.getWidth(), tapTargetView.f) - (tapTargetView.d * 2);
                        if (min > 0) {
                            StaticLayout staticLayout = new StaticLayout(tapTargetView.v, tapTargetView.p, min, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                            tapTargetView.w = staticLayout;
                            if (tapTargetView.x != null) {
                                StaticLayout staticLayout2 = new StaticLayout(tapTargetView.x, tapTargetView.q, min, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                                tapTargetView.y = staticLayout2;
                            } else {
                                tapTargetView.y = null;
                            }
                        }
                        cVar7.onReady(new Runnable() {
                            public final void run() {
                                int[] iArr = new int[2];
                                TapTargetView.this.o.set(cVar7.bounds());
                                TapTargetView.this.getLocationOnScreen(iArr);
                                TapTargetView.this.o.offset(-iArr[0], -iArr[1]);
                                if (viewGroup2 != null) {
                                    DisplayMetrics displayMetrics = new DisplayMetrics();
                                    ((WindowManager) context2.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                                    Rect rect = new Rect();
                                    viewGroup2.getWindowVisibleDisplayFrame(rect);
                                    int[] iArr2 = new int[2];
                                    viewGroup2.getLocationInWindow(iArr2);
                                    if (z3) {
                                        rect.top = iArr2[1];
                                    }
                                    if (z2) {
                                        rect.bottom = iArr2[1] + viewGroup2.getHeight();
                                    }
                                    TapTargetView.this.ab = Math.max(0, rect.top);
                                    TapTargetView.this.ac = Math.min(rect.bottom, displayMetrics.heightPixels);
                                }
                                TapTargetView tapTargetView = TapTargetView.this;
                                Drawable drawable = tapTargetView.n.f;
                                if (!tapTargetView.B || drawable == null) {
                                    tapTargetView.ad = null;
                                } else if (tapTargetView.ad == null) {
                                    tapTargetView.ad = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                                    Canvas canvas = new Canvas(tapTargetView.ad);
                                    drawable.setColorFilter(new PorterDuffColorFilter(tapTargetView.r.getColor(), PorterDuff.Mode.SRC_ATOP));
                                    drawable.draw(canvas);
                                    drawable.setColorFilter(null);
                                }
                                TapTargetView.this.requestFocus();
                                TapTargetView tapTargetView2 = TapTargetView.this;
                                tapTargetView2.K = tapTargetView2.getTextBounds();
                                tapTargetView2.O = tapTargetView2.getOuterCircleCenterPoint();
                                int i = tapTargetView2.O[0];
                                int i2 = tapTargetView2.O[1];
                                Rect rect2 = tapTargetView2.K;
                                Rect rect3 = tapTargetView2.o;
                                int centerX = rect3.centerX();
                                int centerY = rect3.centerY();
                                int i3 = (int) (((float) tapTargetView2.f2488b) * 1.1f);
                                Rect rect4 = new Rect(centerX, centerY, centerX, centerY);
                                int i4 = -i3;
                                rect4.inset(i4, i4);
                                tapTargetView2.N = Math.max(TapTargetView.a(i, i2, rect2), TapTargetView.a(i, i2, rect4)) + tapTargetView2.h;
                                TapTargetView.c(TapTargetView.this);
                            }
                        });
                    }
                }
            };
            this.ap = r2;
            getViewTreeObserver().addOnGlobalLayoutListener(this.ap);
            setFocusableInTouchMode(true);
            setClickable(true);
            setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    if (!(TapTargetView.this.ae == null || TapTargetView.this.O == null || !TapTargetView.this.am)) {
                        boolean z = true;
                        boolean z2 = TapTargetView.a(TapTargetView.this.o.centerX(), TapTargetView.this.o.centerY(), (int) TapTargetView.this.W, (int) TapTargetView.this.aa) <= ((double) TapTargetView.this.S);
                        if (TapTargetView.a(TapTargetView.this.O[0], TapTargetView.this.O[1], (int) TapTargetView.this.W, (int) TapTargetView.this.aa) > ((double) TapTargetView.this.M)) {
                            z = false;
                        }
                        if (z2) {
                            boolean unused = TapTargetView.this.am = false;
                            TapTargetView.this.ae.onTargetClick(TapTargetView.this);
                        } else if (z) {
                            TapTargetView.this.ae.onOuterCircleClick(TapTargetView.this);
                        } else if (TapTargetView.this.D) {
                            boolean unused2 = TapTargetView.this.am = false;
                            TapTargetView.this.ae.onTargetCancel(TapTargetView.this);
                        }
                    }
                }
            });
            setOnLongClickListener(new View.OnLongClickListener() {
                public final boolean onLongClick(View view) {
                    if (TapTargetView.this.ae == null || !TapTargetView.this.o.contains((int) TapTargetView.this.W, (int) TapTargetView.this.aa)) {
                        return false;
                    }
                    TapTargetView.this.ae.onTargetLongClick(TapTargetView.this);
                    return true;
                }
            });
            return;
        }
        throw new IllegalArgumentException("Target cannot be null");
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false);
    }

    private void a(boolean z2) {
        if (!this.ak) {
            this.al = false;
            this.ak = true;
            for (ValueAnimator valueAnimator : this.ao) {
                valueAnimator.cancel();
                valueAnimator.removeAllUpdateListeners();
            }
            g.a(getViewTreeObserver(), this.ap);
            this.E = false;
            a aVar = this.ae;
            if (aVar != null) {
                aVar.onTargetDismissed(this, z2);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (!this.ak && this.O != null) {
            int i2 = this.ab;
            if (i2 > 0 && this.ac > 0) {
                canvas.clipRect(0, i2, getWidth(), this.ac);
            }
            int i3 = this.V;
            if (i3 != -1) {
                canvas.drawColor(i3);
            }
            this.r.setAlpha(this.P);
            if (this.C && this.af == null) {
                int save = canvas.save();
                canvas.clipPath(this.L, Region.Op.DIFFERENCE);
                float f2 = ((float) this.P) * 0.2f;
                this.s.setStyle(Paint.Style.FILL_AND_STROKE);
                this.s.setAlpha((int) f2);
                int[] iArr = this.O;
                canvas.drawCircle((float) iArr[0], (float) (iArr[1] + this.j), this.M, this.s);
                this.s.setStyle(Paint.Style.STROKE);
                for (int i4 = 6; i4 > 0; i4--) {
                    this.s.setAlpha((int) ((((float) i4) / 7.0f) * f2));
                    int[] iArr2 = this.O;
                    canvas.drawCircle((float) iArr2[0], (float) (iArr2[1] + this.j), this.M + ((float) ((7 - i4) * this.k)), this.s);
                }
                canvas.restoreToCount(save);
            }
            int[] iArr3 = this.O;
            canvas.drawCircle((float) iArr3[0], (float) iArr3[1], this.M, this.r);
            this.t.setAlpha(this.T);
            int i5 = this.R;
            if (i5 > 0) {
                this.u.setAlpha(i5);
                canvas.drawCircle((float) this.o.centerX(), (float) this.o.centerY(), this.Q, this.u);
            }
            canvas.drawCircle((float) this.o.centerX(), (float) this.o.centerY(), this.S, this.t);
            int save2 = canvas.save();
            canvas.translate((float) this.K.left, (float) this.K.top);
            this.p.setAlpha(this.U);
            StaticLayout staticLayout = this.w;
            if (staticLayout != null) {
                staticLayout.draw(canvas);
            }
            if (this.y != null) {
                StaticLayout staticLayout2 = this.w;
                if (staticLayout2 != null) {
                    canvas.translate(0.0f, (float) (staticLayout2.getHeight() + this.e));
                    this.q.setAlpha((int) (this.n.B * ((float) this.U)));
                    this.y.draw(canvas);
                }
            }
            canvas.restoreToCount(save2);
            int save3 = canvas.save();
            if (this.ad != null) {
                canvas.translate((float) (this.o.centerX() - (this.ad.getWidth() / 2)), (float) (this.o.centerY() - (this.ad.getHeight() / 2)));
                canvas.drawBitmap(this.ad, 0.0f, 0.0f, this.t);
            } else if (this.n.f != null) {
                canvas.translate((float) (this.o.centerX() - (this.n.f.getBounds().width() / 2)), (float) (this.o.centerY() - (this.n.f.getBounds().height() / 2)));
                this.n.f.setAlpha(this.t.getAlpha());
                this.n.f.draw(canvas);
            }
            canvas.restoreToCount(save3);
            if (this.A) {
                if (this.I == null) {
                    this.I = new Paint();
                    this.I.setARGB(255, 255, 0, 0);
                    this.I.setStyle(Paint.Style.STROKE);
                    this.I.setStrokeWidth((float) e.a(getContext(), 1));
                }
                if (this.H == null) {
                    this.H = new TextPaint();
                    this.H.setColor(SupportMenu.CATEGORY_MASK);
                    this.H.setTextSize((float) e.b(getContext(), 16));
                }
                this.I.setStyle(Paint.Style.STROKE);
                canvas.drawRect(this.K, this.I);
                canvas.drawRect(this.o, this.I);
                int[] iArr4 = this.O;
                canvas.drawCircle((float) iArr4[0], (float) iArr4[1], 10.0f, this.I);
                int[] iArr5 = this.O;
                canvas.drawCircle((float) iArr5[0], (float) iArr5[1], (float) (this.N - this.h), this.I);
                canvas.drawCircle((float) this.o.centerX(), (float) this.o.centerY(), (float) (this.f2488b + this.f2487a), this.I);
                this.I.setStyle(Paint.Style.FILL);
                String str = "Text bounds: " + this.K.toShortString() + "\nTarget bounds: " + this.o.toShortString() + "\nCenter: " + this.O[0] + " " + this.O[1] + "\nView size: " + getWidth() + " " + getHeight() + "\nTarget bounds: " + this.o.toShortString();
                SpannableStringBuilder spannableStringBuilder = this.F;
                if (spannableStringBuilder == null) {
                    this.F = new SpannableStringBuilder(str);
                } else {
                    spannableStringBuilder.clear();
                    this.F.append(str);
                }
                if (this.G == null) {
                    DynamicLayout dynamicLayout = new DynamicLayout(str, this.H, getWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                    this.G = dynamicLayout;
                }
                int save4 = canvas.save();
                this.I.setARGB(220, 0, 0, 0);
                canvas.translate(0.0f, (float) this.ab);
                canvas.drawRect(0.0f, 0.0f, (float) this.G.getWidth(), (float) this.G.getHeight(), this.I);
                this.I.setARGB(255, 255, 0, 0);
                this.G.draw(canvas);
                canvas.restoreToCount(save4);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.W = motionEvent.getX();
        this.aa = motionEvent.getY();
        return super.onTouchEvent(motionEvent);
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (!isVisible() || !this.D || i2 != 4) {
            return false;
        }
        keyEvent.startTracking();
        return true;
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (!isVisible() || !this.am || !this.D || i2 != 4 || !keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        this.am = false;
        a aVar = this.ae;
        if (aVar != null) {
            aVar.onTargetCancel(this);
        } else {
            new a().onTargetCancel(this);
        }
        return true;
    }

    public void dismiss(boolean z2) {
        this.al = true;
        this.ai.cancel();
        this.ah.cancel();
        if (!this.E || this.O == null) {
            b(z2);
        } else if (z2) {
            this.an.start();
        } else {
            this.aj.start();
        }
    }

    /* access modifiers changed from: private */
    public void b(boolean z2) {
        a(z2);
        g.a(this.m, (View) this);
    }

    public void setDrawDebug(boolean z2) {
        if (this.A != z2) {
            this.A = z2;
            postInvalidate();
        }
    }

    public boolean isVisible() {
        return !this.ak && this.E;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        int[] iArr = this.O;
        if (iArr != null) {
            this.J.left = (int) Math.max(0.0f, ((float) iArr[0]) - this.M);
            this.J.top = (int) Math.min(0.0f, ((float) this.O[1]) - this.M);
            this.J.right = (int) Math.min((float) getWidth(), ((float) this.O[0]) + this.M + ((float) this.h));
            this.J.bottom = (int) Math.min((float) getHeight(), ((float) this.O[1]) + this.M + ((float) this.h));
        }
    }

    /* access modifiers changed from: package-private */
    public Rect getTextBounds() {
        int totalTextHeight = getTotalTextHeight();
        int totalTextWidth = getTotalTextWidth();
        int centerY = ((this.o.centerY() - this.f2488b) - this.f2487a) - totalTextHeight;
        if (centerY <= this.ab) {
            centerY = this.o.centerY() + this.f2488b + this.f2487a;
        }
        int max = Math.max(this.d, (this.o.centerX() - ((getWidth() / 2) - this.o.centerX() < 0 ? -this.g : this.g)) - totalTextWidth);
        return new Rect(max, centerY, Math.min(getWidth() - this.d, totalTextWidth + max), totalTextHeight + centerY);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 <= (r1 - r4)) goto L_0x0022;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r0 <= (getHeight() - r9.i)) goto L_0x0022;
     */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0028  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x003b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int[] getOuterCircleCenterPoint() {
        /*
            r9 = this;
            android.graphics.Rect r0 = r9.o
            int r0 = r0.centerY()
            int r1 = r9.ac
            r2 = 1
            r3 = 0
            if (r1 <= 0) goto L_0x0014
            int r4 = r9.i
            if (r0 < r4) goto L_0x0024
            int r1 = r1 - r4
            if (r0 <= r1) goto L_0x0022
            goto L_0x0024
        L_0x0014:
            int r1 = r9.i
            if (r0 < r1) goto L_0x0024
            int r1 = r9.getHeight()
            int r4 = r9.i
            int r1 = r1 - r4
            if (r0 <= r1) goto L_0x0022
            goto L_0x0024
        L_0x0022:
            r0 = 0
            goto L_0x0025
        L_0x0024:
            r0 = 1
        L_0x0025:
            r1 = 2
            if (r0 == 0) goto L_0x003b
            int[] r0 = new int[r1]
            android.graphics.Rect r1 = r9.o
            int r1 = r1.centerX()
            r0[r3] = r1
            android.graphics.Rect r1 = r9.o
            int r1 = r1.centerY()
            r0[r2] = r1
            return r0
        L_0x003b:
            android.graphics.Rect r0 = r9.o
            int r0 = r0.width()
            android.graphics.Rect r4 = r9.o
            int r4 = r4.height()
            int r0 = java.lang.Math.max(r0, r4)
            int r0 = r0 / r1
            int r4 = r9.f2487a
            int r0 = r0 + r4
            int r4 = r9.getTotalTextHeight()
            android.graphics.Rect r5 = r9.o
            int r5 = r5.centerY()
            int r6 = r9.f2488b
            int r5 = r5 - r6
            int r6 = r9.f2487a
            int r5 = r5 - r6
            int r5 = r5 - r4
            if (r5 <= 0) goto L_0x0064
            r5 = 1
            goto L_0x0065
        L_0x0064:
            r5 = 0
        L_0x0065:
            android.graphics.Rect r6 = r9.K
            int r6 = r6.left
            android.graphics.Rect r7 = r9.o
            int r7 = r7.left
            int r7 = r7 - r0
            int r6 = java.lang.Math.min(r6, r7)
            android.graphics.Rect r7 = r9.K
            int r7 = r7.right
            android.graphics.Rect r8 = r9.o
            int r8 = r8.right
            int r8 = r8 + r0
            int r0 = java.lang.Math.max(r7, r8)
            android.text.StaticLayout r7 = r9.w
            if (r7 != 0) goto L_0x0085
            r7 = 0
            goto L_0x0089
        L_0x0085:
            int r7 = r7.getHeight()
        L_0x0089:
            if (r5 == 0) goto L_0x009a
            android.graphics.Rect r5 = r9.o
            int r5 = r5.centerY()
            int r8 = r9.f2488b
            int r5 = r5 - r8
            int r8 = r9.f2487a
            int r5 = r5 - r8
            int r5 = r5 - r4
            int r5 = r5 + r7
            goto L_0x00a8
        L_0x009a:
            android.graphics.Rect r4 = r9.o
            int r4 = r4.centerY()
            int r5 = r9.f2488b
            int r4 = r4 + r5
            int r5 = r9.f2487a
            int r4 = r4 + r5
            int r5 = r4 + r7
        L_0x00a8:
            int[] r4 = new int[r1]
            int r6 = r6 + r0
            int r6 = r6 / r1
            r4[r3] = r6
            r4[r2] = r5
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getkeepsafe.taptargetview.TapTargetView.getOuterCircleCenterPoint():int[]");
    }

    /* access modifiers changed from: package-private */
    public int getTotalTextHeight() {
        int height;
        int i2;
        StaticLayout staticLayout = this.w;
        if (staticLayout == null) {
            return 0;
        }
        if (this.y == null) {
            height = staticLayout.getHeight();
            i2 = this.e;
        } else {
            height = staticLayout.getHeight() + this.y.getHeight();
            i2 = this.e;
        }
        return height + i2;
    }

    /* access modifiers changed from: package-private */
    public int getTotalTextWidth() {
        StaticLayout staticLayout = this.w;
        if (staticLayout == null) {
            return 0;
        }
        if (this.y == null) {
            return staticLayout.getWidth();
        }
        return Math.max(staticLayout.getWidth(), this.y.getWidth());
    }

    static int a(int i2, int i3, Rect rect) {
        return (int) Math.max(a(i2, i3, rect.left, rect.top), Math.max(a(i2, i3, rect.right, rect.top), Math.max(a(i2, i3, rect.left, rect.bottom), a(i2, i3, rect.right, rect.bottom))));
    }

    static double a(int i2, int i3, int i4, int i5) {
        return Math.sqrt(Math.pow((double) (i4 - i2), 2.0d) + Math.pow((double) (i5 - i3), 2.0d));
    }

    /* access modifiers changed from: package-private */
    public final void a(Rect rect) {
        invalidate(rect);
        if (this.af != null && Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    static /* synthetic */ void c(TapTargetView tapTargetView) {
        if (!tapTargetView.E) {
            tapTargetView.am = false;
            tapTargetView.ah.start();
            tapTargetView.E = true;
        }
    }
}
