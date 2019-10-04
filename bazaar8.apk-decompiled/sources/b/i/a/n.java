package b.i.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

/* compiled from: NotificationCompat */
public class n {

    /* compiled from: NotificationCompat */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final Bundle f2528a;

        /* renamed from: b  reason: collision with root package name */
        public final r[] f2529b;

        /* renamed from: c  reason: collision with root package name */
        public final r[] f2530c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f2531d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f2532e;

        /* renamed from: f  reason: collision with root package name */
        public final int f2533f;

        /* renamed from: g  reason: collision with root package name */
        public int f2534g;

        /* renamed from: h  reason: collision with root package name */
        public CharSequence f2535h;

        /* renamed from: i  reason: collision with root package name */
        public PendingIntent f2536i;

        public a(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i2, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true);
        }

        public PendingIntent a() {
            return this.f2536i;
        }

        public boolean b() {
            return this.f2531d;
        }

        public r[] c() {
            return this.f2530c;
        }

        public Bundle d() {
            return this.f2528a;
        }

        public int e() {
            return this.f2534g;
        }

        public r[] f() {
            return this.f2529b;
        }

        public int g() {
            return this.f2533f;
        }

        public boolean h() {
            return this.f2532e;
        }

        public CharSequence i() {
            return this.f2535h;
        }

        public a(int i2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, r[] rVarArr, r[] rVarArr2, boolean z, int i3, boolean z2) {
            this.f2532e = true;
            this.f2534g = i2;
            this.f2535h = d.a(charSequence);
            this.f2536i = pendingIntent;
            this.f2528a = bundle == null ? new Bundle() : bundle;
            this.f2529b = rVarArr;
            this.f2530c = rVarArr2;
            this.f2531d = z;
            this.f2533f = i3;
            this.f2532e = z2;
        }
    }

    /* compiled from: NotificationCompat */
    public static class b extends e {

        /* renamed from: e  reason: collision with root package name */
        public Bitmap f2537e;

        /* renamed from: f  reason: collision with root package name */
        public Bitmap f2538f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f2539g;

        public b a(CharSequence charSequence) {
            this.f2554b = d.a(charSequence);
            return this;
        }

        public b b(CharSequence charSequence) {
            this.f2555c = d.a(charSequence);
            this.f2556d = true;
            return this;
        }

        public b a(Bitmap bitmap) {
            this.f2538f = bitmap;
            this.f2539g = true;
            return this;
        }

        public b b(Bitmap bitmap) {
            this.f2537e = bitmap;
            return this;
        }

        public void a(m mVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(mVar.a()).setBigContentTitle(this.f2554b).bigPicture(this.f2537e);
                if (this.f2539g) {
                    bigPicture.bigLargeIcon(this.f2538f);
                }
                if (this.f2556d) {
                    bigPicture.setSummaryText(this.f2555c);
                }
            }
        }
    }

    /* compiled from: NotificationCompat */
    public static class c extends e {

        /* renamed from: e  reason: collision with root package name */
        public CharSequence f2540e;

        public c a(CharSequence charSequence) {
            this.f2540e = d.a(charSequence);
            return this;
        }

        public c b(CharSequence charSequence) {
            this.f2554b = d.a(charSequence);
            return this;
        }

        public c c(CharSequence charSequence) {
            this.f2555c = d.a(charSequence);
            this.f2556d = true;
            return this;
        }

        public void a(m mVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(mVar.a()).setBigContentTitle(this.f2554b).bigText(this.f2540e);
                if (this.f2556d) {
                    bigText.setSummaryText(this.f2555c);
                }
            }
        }
    }

    /* compiled from: NotificationCompat */
    public static class d {
        public String A;
        public Bundle B;
        public int C;
        public int D;
        public Notification E;
        public RemoteViews F;
        public RemoteViews G;
        public RemoteViews H;
        public String I;
        public int J;
        public String K;
        public long L;
        public int M;
        public Notification N;
        @Deprecated
        public ArrayList<String> O;

        /* renamed from: a  reason: collision with root package name */
        public Context f2541a;

        /* renamed from: b  reason: collision with root package name */
        public ArrayList<a> f2542b;

        /* renamed from: c  reason: collision with root package name */
        public ArrayList<a> f2543c;

        /* renamed from: d  reason: collision with root package name */
        public CharSequence f2544d;

        /* renamed from: e  reason: collision with root package name */
        public CharSequence f2545e;

        /* renamed from: f  reason: collision with root package name */
        public PendingIntent f2546f;

        /* renamed from: g  reason: collision with root package name */
        public PendingIntent f2547g;

        /* renamed from: h  reason: collision with root package name */
        public RemoteViews f2548h;

        /* renamed from: i  reason: collision with root package name */
        public Bitmap f2549i;

        /* renamed from: j  reason: collision with root package name */
        public CharSequence f2550j;

        /* renamed from: k  reason: collision with root package name */
        public int f2551k;

        /* renamed from: l  reason: collision with root package name */
        public int f2552l;
        public boolean m;
        public boolean n;
        public e o;
        public CharSequence p;
        public CharSequence[] q;
        public int r;
        public int s;
        public boolean t;
        public String u;
        public boolean v;
        public String w;
        public boolean x;
        public boolean y;
        public boolean z;

        public d(Context context, String str) {
            this.f2542b = new ArrayList<>();
            this.f2543c = new ArrayList<>();
            this.m = true;
            this.x = false;
            this.C = 0;
            this.D = 0;
            this.J = 0;
            this.M = 0;
            this.N = new Notification();
            this.f2541a = context;
            this.I = str;
            this.N.when = System.currentTimeMillis();
            this.N.audioStreamType = -1;
            this.f2552l = 0;
            this.O = new ArrayList<>();
        }

        public d a(long j2) {
            this.N.when = j2;
            return this;
        }

        public d b(CharSequence charSequence) {
            this.f2545e = a(charSequence);
            return this;
        }

        public d c(int i2) {
            this.N.icon = i2;
            return this;
        }

        public d d(boolean z2) {
            this.m = z2;
            return this;
        }

        public d e(boolean z2) {
            this.n = z2;
            return this;
        }

        public d a(int i2, int i3, boolean z2) {
            this.r = i2;
            this.s = i3;
            this.t = z2;
            return this;
        }

        public d b(PendingIntent pendingIntent) {
            this.N.deleteIntent = pendingIntent;
            return this;
        }

        public d c(CharSequence charSequence) {
            this.f2544d = a(charSequence);
            return this;
        }

        public d d(CharSequence charSequence) {
            this.N.tickerText = a(charSequence);
            return this;
        }

        public long e() {
            if (this.m) {
                return this.N.when;
            }
            return 0;
        }

        public d b(Bitmap bitmap) {
            this.f2549i = a(bitmap);
            return this;
        }

        public d c(boolean z2) {
            a(2, z2);
            return this;
        }

        public d d(int i2) {
            this.D = i2;
            return this;
        }

        public d b(boolean z2) {
            this.x = z2;
            return this;
        }

        public Bundle c() {
            if (this.B == null) {
                this.B = new Bundle();
            }
            return this.B;
        }

        public int d() {
            return this.f2552l;
        }

        public d a(PendingIntent pendingIntent) {
            this.f2546f = pendingIntent;
            return this;
        }

        public d b(int i2) {
            this.f2552l = i2;
            return this;
        }

        public final Bitmap a(Bitmap bitmap) {
            if (bitmap != null && Build.VERSION.SDK_INT < 27) {
                Resources resources = this.f2541a.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(b.i.b.compat_notification_large_icon_max_width);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(b.i.b.compat_notification_large_icon_max_height);
                if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                    return bitmap;
                }
                double d2 = (double) dimensionPixelSize;
                double max = (double) Math.max(1, bitmap.getWidth());
                Double.isNaN(d2);
                Double.isNaN(max);
                double d3 = d2 / max;
                double d4 = (double) dimensionPixelSize2;
                double max2 = (double) Math.max(1, bitmap.getHeight());
                Double.isNaN(d4);
                Double.isNaN(max2);
                double min = Math.min(d3, d4 / max2);
                double width = (double) bitmap.getWidth();
                Double.isNaN(width);
                double height = (double) bitmap.getHeight();
                Double.isNaN(height);
                bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(width * min), (int) Math.ceil(height * min), true);
            }
            return bitmap;
        }

        public int b() {
            return this.C;
        }

        @Deprecated
        public d(Context context) {
            this(context, null);
        }

        public d a(Uri uri) {
            Notification notification = this.N;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public d a(boolean z2) {
            a(16, z2);
            return this;
        }

        public final void a(int i2, boolean z2) {
            if (z2) {
                Notification notification = this.N;
                notification.flags = i2 | notification.flags;
                return;
            }
            Notification notification2 = this.N;
            notification2.flags = (i2 ^ -1) & notification2.flags;
        }

        public d a(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f2542b.add(new a(i2, charSequence, pendingIntent));
            return this;
        }

        public d a(a aVar) {
            this.f2542b.add(aVar);
            return this;
        }

        public d a(e eVar) {
            if (this.o != eVar) {
                this.o = eVar;
                e eVar2 = this.o;
                if (eVar2 != null) {
                    eVar2.a(this);
                }
            }
            return this;
        }

        public d a(int i2) {
            this.C = i2;
            return this;
        }

        public d a(String str) {
            this.I = str;
            return this;
        }

        public Notification a() {
            return new o(this).b();
        }

        public static CharSequence a(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            if (charSequence.length() > 5120) {
                charSequence = charSequence.subSequence(0, 5120);
            }
            return charSequence;
        }
    }

    /* compiled from: NotificationCompat */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        public d f2553a;

        /* renamed from: b  reason: collision with root package name */
        public CharSequence f2554b;

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f2555c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f2556d = false;

        public void a(Bundle bundle) {
        }

        public abstract void a(m mVar);

        public void a(d dVar) {
            if (this.f2553a != dVar) {
                this.f2553a = dVar;
                d dVar2 = this.f2553a;
                if (dVar2 != null) {
                    dVar2.a(this);
                }
            }
        }

        public RemoteViews b(m mVar) {
            return null;
        }

        public RemoteViews c(m mVar) {
            return null;
        }

        public RemoteViews d(m mVar) {
            return null;
        }

        /* JADX WARNING: Removed duplicated region for block: B:63:0x0183  */
        /* JADX WARNING: Removed duplicated region for block: B:64:0x018f  */
        /* JADX WARNING: Removed duplicated region for block: B:70:0x019d  */
        /* JADX WARNING: Removed duplicated region for block: B:74:0x01bf  */
        /* JADX WARNING: Removed duplicated region for block: B:83:0x0204  */
        /* JADX WARNING: Removed duplicated region for block: B:84:0x0206  */
        /* JADX WARNING: Removed duplicated region for block: B:87:0x0210  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public android.widget.RemoteViews a(boolean r13, int r14, boolean r15) {
            /*
                r12 = this;
                b.i.a.n$d r0 = r12.f2553a
                android.content.Context r0 = r0.f2541a
                android.content.res.Resources r0 = r0.getResources()
                android.widget.RemoteViews r7 = new android.widget.RemoteViews
                b.i.a.n$d r1 = r12.f2553a
                android.content.Context r1 = r1.f2541a
                java.lang.String r1 = r1.getPackageName()
                r7.<init>(r1, r14)
                b.i.a.n$d r14 = r12.f2553a
                int r14 = r14.d()
                r1 = -1
                r8 = 1
                r9 = 0
                if (r14 >= r1) goto L_0x0022
                r14 = 1
                goto L_0x0023
            L_0x0022:
                r14 = 0
            L_0x0023:
                int r2 = android.os.Build.VERSION.SDK_INT
                r3 = 21
                r10 = 16
                if (r2 < r10) goto L_0x004e
                if (r2 >= r3) goto L_0x004e
                java.lang.String r2 = "setBackgroundResource"
                if (r14 == 0) goto L_0x0040
                int r14 = b.i.d.notification_background
                int r4 = b.i.c.notification_bg_low
                r7.setInt(r14, r2, r4)
                int r14 = b.i.d.icon
                int r4 = b.i.c.notification_template_icon_low_bg
                r7.setInt(r14, r2, r4)
                goto L_0x004e
            L_0x0040:
                int r14 = b.i.d.notification_background
                int r4 = b.i.c.notification_bg
                r7.setInt(r14, r2, r4)
                int r14 = b.i.d.icon
                int r4 = b.i.c.notification_template_icon_bg
                r7.setInt(r14, r2, r4)
            L_0x004e:
                b.i.a.n$d r14 = r12.f2553a
                android.graphics.Bitmap r2 = r14.f2549i
                r11 = 8
                if (r2 == 0) goto L_0x00b5
                int r14 = android.os.Build.VERSION.SDK_INT
                if (r14 < r10) goto L_0x0069
                int r14 = b.i.d.icon
                r7.setViewVisibility(r14, r9)
                int r14 = b.i.d.icon
                b.i.a.n$d r2 = r12.f2553a
                android.graphics.Bitmap r2 = r2.f2549i
                r7.setImageViewBitmap(r14, r2)
                goto L_0x006e
            L_0x0069:
                int r14 = b.i.d.icon
                r7.setViewVisibility(r14, r11)
            L_0x006e:
                if (r13 == 0) goto L_0x00fc
                b.i.a.n$d r13 = r12.f2553a
                android.app.Notification r13 = r13.N
                int r13 = r13.icon
                if (r13 == 0) goto L_0x00fc
                int r13 = b.i.b.notification_right_icon_size
                int r13 = r0.getDimensionPixelSize(r13)
                int r14 = b.i.b.notification_small_icon_background_padding
                int r14 = r0.getDimensionPixelSize(r14)
                int r14 = r14 * 2
                int r14 = r13 - r14
                int r2 = android.os.Build.VERSION.SDK_INT
                if (r2 < r3) goto L_0x00a0
                b.i.a.n$d r1 = r12.f2553a
                android.app.Notification r2 = r1.N
                int r2 = r2.icon
                int r1 = r1.b()
                android.graphics.Bitmap r13 = r12.a(r2, r13, r14, r1)
                int r14 = b.i.d.right_icon
                r7.setImageViewBitmap(r14, r13)
                goto L_0x00af
            L_0x00a0:
                int r13 = b.i.d.right_icon
                b.i.a.n$d r14 = r12.f2553a
                android.app.Notification r14 = r14.N
                int r14 = r14.icon
                android.graphics.Bitmap r14 = r12.a(r14, r1)
                r7.setImageViewBitmap(r13, r14)
            L_0x00af:
                int r13 = b.i.d.right_icon
                r7.setViewVisibility(r13, r9)
                goto L_0x00fc
            L_0x00b5:
                if (r13 == 0) goto L_0x00fc
                android.app.Notification r13 = r14.N
                int r13 = r13.icon
                if (r13 == 0) goto L_0x00fc
                int r13 = b.i.d.icon
                r7.setViewVisibility(r13, r9)
                int r13 = android.os.Build.VERSION.SDK_INT
                if (r13 < r3) goto L_0x00ed
                int r13 = b.i.b.notification_large_icon_width
                int r13 = r0.getDimensionPixelSize(r13)
                int r14 = b.i.b.notification_big_circle_margin
                int r14 = r0.getDimensionPixelSize(r14)
                int r13 = r13 - r14
                int r14 = b.i.b.notification_small_icon_size_as_large
                int r14 = r0.getDimensionPixelSize(r14)
                b.i.a.n$d r1 = r12.f2553a
                android.app.Notification r2 = r1.N
                int r2 = r2.icon
                int r1 = r1.b()
                android.graphics.Bitmap r13 = r12.a(r2, r13, r14, r1)
                int r14 = b.i.d.icon
                r7.setImageViewBitmap(r14, r13)
                goto L_0x00fc
            L_0x00ed:
                int r13 = b.i.d.icon
                b.i.a.n$d r14 = r12.f2553a
                android.app.Notification r14 = r14.N
                int r14 = r14.icon
                android.graphics.Bitmap r14 = r12.a(r14, r1)
                r7.setImageViewBitmap(r13, r14)
            L_0x00fc:
                b.i.a.n$d r13 = r12.f2553a
                java.lang.CharSequence r13 = r13.f2544d
                if (r13 == 0) goto L_0x0107
                int r14 = b.i.d.title
                r7.setTextViewText(r14, r13)
            L_0x0107:
                b.i.a.n$d r13 = r12.f2553a
                java.lang.CharSequence r13 = r13.f2545e
                if (r13 == 0) goto L_0x0114
                int r14 = b.i.d.text
                r7.setTextViewText(r14, r13)
                r13 = 1
                goto L_0x0115
            L_0x0114:
                r13 = 0
            L_0x0115:
                int r14 = android.os.Build.VERSION.SDK_INT
                if (r14 >= r3) goto L_0x0121
                b.i.a.n$d r14 = r12.f2553a
                android.graphics.Bitmap r14 = r14.f2549i
                if (r14 == 0) goto L_0x0121
                r14 = 1
                goto L_0x0122
            L_0x0121:
                r14 = 0
            L_0x0122:
                b.i.a.n$d r1 = r12.f2553a
                java.lang.CharSequence r2 = r1.f2550j
                if (r2 == 0) goto L_0x0135
                int r13 = b.i.d.info
                r7.setTextViewText(r13, r2)
                int r13 = b.i.d.info
                r7.setViewVisibility(r13, r9)
            L_0x0132:
                r13 = 1
                r14 = 1
                goto L_0x016e
            L_0x0135:
                int r1 = r1.f2551k
                if (r1 <= 0) goto L_0x0169
                int r13 = b.i.e.status_bar_notification_info_maxnum
                int r13 = r0.getInteger(r13)
                b.i.a.n$d r14 = r12.f2553a
                int r14 = r14.f2551k
                if (r14 <= r13) goto L_0x0151
                int r13 = b.i.d.info
                int r14 = b.i.f.status_bar_notification_info_overflow
                java.lang.String r14 = r0.getString(r14)
                r7.setTextViewText(r13, r14)
                goto L_0x0163
            L_0x0151:
                java.text.NumberFormat r13 = java.text.NumberFormat.getIntegerInstance()
                int r14 = b.i.d.info
                b.i.a.n$d r1 = r12.f2553a
                int r1 = r1.f2551k
                long r1 = (long) r1
                java.lang.String r13 = r13.format(r1)
                r7.setTextViewText(r14, r13)
            L_0x0163:
                int r13 = b.i.d.info
                r7.setViewVisibility(r13, r9)
                goto L_0x0132
            L_0x0169:
                int r1 = b.i.d.info
                r7.setViewVisibility(r1, r11)
            L_0x016e:
                b.i.a.n$d r1 = r12.f2553a
                java.lang.CharSequence r1 = r1.p
                if (r1 == 0) goto L_0x0194
                int r2 = android.os.Build.VERSION.SDK_INT
                if (r2 < r10) goto L_0x0194
                int r2 = b.i.d.text
                r7.setTextViewText(r2, r1)
                b.i.a.n$d r1 = r12.f2553a
                java.lang.CharSequence r1 = r1.f2545e
                if (r1 == 0) goto L_0x018f
                int r2 = b.i.d.text2
                r7.setTextViewText(r2, r1)
                int r1 = b.i.d.text2
                r7.setViewVisibility(r1, r9)
                r1 = 1
                goto L_0x0195
            L_0x018f:
                int r1 = b.i.d.text2
                r7.setViewVisibility(r1, r11)
            L_0x0194:
                r1 = 0
            L_0x0195:
                if (r1 == 0) goto L_0x01b3
                int r1 = android.os.Build.VERSION.SDK_INT
                if (r1 < r10) goto L_0x01b3
                if (r15 == 0) goto L_0x01a9
                int r15 = b.i.b.notification_subtext_size
                int r15 = r0.getDimensionPixelSize(r15)
                float r15 = (float) r15
                int r0 = b.i.d.text
                r7.setTextViewTextSize(r0, r9, r15)
            L_0x01a9:
                int r2 = b.i.d.line1
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r1 = r7
                r1.setViewPadding(r2, r3, r4, r5, r6)
            L_0x01b3:
                b.i.a.n$d r15 = r12.f2553a
                long r0 = r15.e()
                r2 = 0
                int r15 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r15 == 0) goto L_0x0200
                b.i.a.n$d r14 = r12.f2553a
                boolean r14 = r14.n
                if (r14 == 0) goto L_0x01ed
                int r14 = android.os.Build.VERSION.SDK_INT
                if (r14 < r10) goto L_0x01ed
                int r14 = b.i.d.chronometer
                r7.setViewVisibility(r14, r9)
                int r14 = b.i.d.chronometer
                b.i.a.n$d r15 = r12.f2553a
                long r0 = r15.e()
                long r2 = android.os.SystemClock.elapsedRealtime()
                long r4 = java.lang.System.currentTimeMillis()
                long r2 = r2 - r4
                long r0 = r0 + r2
                java.lang.String r15 = "setBase"
                r7.setLong(r14, r15, r0)
                int r14 = b.i.d.chronometer
                java.lang.String r15 = "setStarted"
                r7.setBoolean(r14, r15, r8)
                goto L_0x01ff
            L_0x01ed:
                int r14 = b.i.d.time
                r7.setViewVisibility(r14, r9)
                int r14 = b.i.d.time
                b.i.a.n$d r15 = r12.f2553a
                long r0 = r15.e()
                java.lang.String r15 = "setTime"
                r7.setLong(r14, r15, r0)
            L_0x01ff:
                r14 = 1
            L_0x0200:
                int r15 = b.i.d.right_side
                if (r14 == 0) goto L_0x0206
                r14 = 0
                goto L_0x0208
            L_0x0206:
                r14 = 8
            L_0x0208:
                r7.setViewVisibility(r15, r14)
                int r14 = b.i.d.line3
                if (r13 == 0) goto L_0x0210
                goto L_0x0212
            L_0x0210:
                r9 = 8
            L_0x0212:
                r7.setViewVisibility(r14, r9)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: b.i.a.n.e.a(boolean, int, boolean):android.widget.RemoteViews");
        }

        public Bitmap a(int i2, int i3) {
            return a(i2, i3, 0);
        }

        public final Bitmap a(int i2, int i3, int i4) {
            Drawable drawable = this.f2553a.f2541a.getResources().getDrawable(i2);
            int intrinsicWidth = i4 == 0 ? drawable.getIntrinsicWidth() : i4;
            if (i4 == 0) {
                i4 = drawable.getIntrinsicHeight();
            }
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i4, Bitmap.Config.ARGB_8888);
            drawable.setBounds(0, 0, intrinsicWidth, i4);
            if (i3 != 0) {
                drawable.mutate().setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_IN));
            }
            drawable.draw(new Canvas(createBitmap));
            return createBitmap;
        }

        public final Bitmap a(int i2, int i3, int i4, int i5) {
            int i6 = b.i.c.notification_icon_background;
            if (i5 == 0) {
                i5 = 0;
            }
            Bitmap a2 = a(i6, i5, i3);
            Canvas canvas = new Canvas(a2);
            Drawable mutate = this.f2553a.f2541a.getResources().getDrawable(i2).mutate();
            mutate.setFilterBitmap(true);
            int i7 = (i3 - i4) / 2;
            int i8 = i4 + i7;
            mutate.setBounds(i7, i7, i8, i8);
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            mutate.draw(canvas);
            return a2;
        }
    }

    public static Bundle a(Notification notification) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            return notification.extras;
        }
        if (i2 >= 16) {
            return p.a(notification);
        }
        return null;
    }
}
