package com.webengage.sdk.android.actions.render;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.NotificationClickHandlerService;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.actions.database.DataHolder;
import com.webengage.sdk.android.actions.exception.WebViewException;
import com.webengage.sdk.android.actions.render.InAppNotificationData;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.i;
import com.webengage.sdk.android.k;
import com.webengage.sdk.android.n;
import com.webengage.sdk.android.utils.e;
import java.util.HashMap;

public class m extends DialogFragment {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public c f5400a = null;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public org.a.c f5401b = null;
    /* access modifiers changed from: private */
    public boolean c = false;
    /* access modifiers changed from: private */
    public String d = "";
    /* access modifiers changed from: private */
    public InAppNotificationData e = null;
    /* access modifiers changed from: private */
    public RelativeLayout f = null;
    /* access modifiers changed from: private */
    public Animation g = null;
    /* access modifiers changed from: private */
    public Animation h = null;
    private Handler i = null;
    private int j = 0;
    private int k = 1;
    private int l = 2;
    private int m = 3;
    private int n = -1;
    private String o = "";
    private String p = "";
    private boolean q = false;
    private String r = "";
    private Context s = null;

    /* renamed from: com.webengage.sdk.android.actions.render.m$3  reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5404a = new int[InAppNotificationData.InAppType.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                com.webengage.sdk.android.actions.render.InAppNotificationData$InAppType[] r0 = com.webengage.sdk.android.actions.render.InAppNotificationData.InAppType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5404a = r0
                int[] r0 = f5404a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.actions.render.InAppNotificationData$InAppType r1 = com.webengage.sdk.android.actions.render.InAppNotificationData.InAppType.HEADER     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5404a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.actions.render.InAppNotificationData$InAppType r1 = com.webengage.sdk.android.actions.render.InAppNotificationData.InAppType.FOOTER     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.render.m.AnonymousClass3.<clinit>():void");
        }
    }

    final class a implements Animation.AnimationListener {
        private a() {
        }

        public final void onAnimationEnd(Animation animation) {
            try {
                m.this.e();
            } catch (Exception unused) {
            }
        }

        public final void onAnimationRepeat(Animation animation) {
        }

        public final void onAnimationStart(Animation animation) {
        }
    }

    final class b implements Animation.AnimationListener {
        private b() {
        }

        public final void onAnimationEnd(Animation animation) {
            try {
                if (Build.VERSION.SDK_INT >= 12) {
                    m.this.dismissAllowingStateLoss();
                } else {
                    m.this.dismiss();
                }
                m.this.e();
            } catch (Exception unused) {
            }
        }

        public final void onAnimationRepeat(Animation animation) {
        }

        public final void onAnimationStart(Animation animation) {
        }
    }

    final class c extends Dialog {

        /* renamed from: b  reason: collision with root package name */
        private g f5408b = null;

        public c(Context context, int i) {
            super(context, i);
            try {
                requestWindowFeature(1);
                getWindow().setBackgroundDrawable(new ColorDrawable(0));
                if (m.this.c) {
                    getWindow().setFlags(1024, 1024);
                }
                RelativeLayout unused = m.this.f = new RelativeLayout(getContext());
                m.this.f.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                this.f5408b = new g(m.this.e, m.this);
                m.this.a(getWindow(), m.this.getActivity().getResources().getConfiguration().orientation);
                if (m.this.g != null) {
                    getWindow().getDecorView().setVisibility(8);
                }
                o oVar = new o(m.this.d, "text/html", "UTF-8", this.f5408b, m.this.getActivity(), m.this.f5401b);
                m.this.f.addView(oVar.a());
                setContentView(m.this.f);
            } catch (Exception e) {
                Logger.e("ExceptionDialog", e.toString());
                WebEngage.startService(n.a(af.EXCEPTION, new WebViewException(e.getMessage()), m.this.getActivity().getApplicationContext()), m.this.getActivity().getApplicationContext());
            }
        }

        public final void onBackPressed() {
            m.this.c();
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0077, code lost:
        if (r13 != 0) goto L_0x0079;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x00ab, code lost:
        if (r13 != 0) goto L_0x0079;
     */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00b8  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0128  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0134 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0143  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x014c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.view.Window r12, int r13) {
        /*
            r11 = this;
            org.a.c r0 = r11.f5401b
            r1 = 0
            java.lang.String r2 = "allowLandscape"
            boolean r0 = r0.optBoolean(r2, r1)
            android.util.DisplayMetrics r2 = new android.util.DisplayMetrics
            r2.<init>()
            android.app.Activity r3 = r11.getActivity()
            android.view.Window r3 = r3.getWindow()
            android.view.WindowManager r3 = r3.getWindowManager()
            android.view.Display r3 = r3.getDefaultDisplay()
            r3.getMetrics(r2)
            int r3 = r2.widthPixels
            int r4 = r2.heightPixels
            r5 = 8
            r6 = 2
            if (r0 != 0) goto L_0x003b
            if (r13 != r6) goto L_0x0034
            android.view.View r12 = r12.getDecorView()
            r12.setVisibility(r5)
            return
        L_0x0034:
            android.view.View r13 = r12.getDecorView()
            r13.setVisibility(r1)
        L_0x003b:
            int r13 = r2.widthPixels
            float r13 = (float) r13
            float r0 = r2.density
            float r13 = r13 / r0
            org.a.c r0 = r11.f5401b
            r7 = 500(0x1f4, float:7.0E-43)
            java.lang.String r8 = "responsiveThreshold"
            int r0 = r0.optInt(r8, r7)
            float r0 = (float) r0
            java.lang.String r7 = "logoHeight"
            java.lang.String r8 = "height"
            java.lang.String r9 = "width"
            java.lang.String r10 = "RenderDialogFragment"
            int r13 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            if (r13 >= 0) goto L_0x008c
            java.lang.String r13 = "Portrait"
            com.webengage.sdk.android.Logger.d(r10, r13)
            org.a.c r13 = r11.f5401b
            java.lang.String r0 = "portrait"
            org.a.c r13 = r13.optJSONObject(r0)
            if (r13 == 0) goto L_0x00ae
            int r0 = r13.optInt(r9, r1)
            if (r0 == 0) goto L_0x0073
            float r0 = (float) r0
            float r3 = r2.density
            float r0 = r0 * r3
            int r3 = (int) r0
        L_0x0073:
            int r13 = r13.optInt(r8, r1)
            if (r13 == 0) goto L_0x00ae
        L_0x0079:
            float r13 = (float) r13
            float r0 = r2.density
            float r13 = r13 * r0
            org.a.c r0 = r11.f5401b
            int r0 = r0.optInt(r7, r1)
            float r0 = (float) r0
            float r4 = r2.density
            float r0 = r0 * r4
            float r13 = r13 + r0
            int r4 = (int) r13
            goto L_0x00ae
        L_0x008c:
            java.lang.String r13 = "Landscape"
            com.webengage.sdk.android.Logger.d(r10, r13)
            org.a.c r13 = r11.f5401b
            java.lang.String r0 = "landscape"
            org.a.c r13 = r13.optJSONObject(r0)
            if (r13 == 0) goto L_0x00ae
            int r0 = r13.optInt(r9, r1)
            if (r0 == 0) goto L_0x00a7
            float r0 = (float) r0
            float r3 = r2.density
            float r0 = r0 * r3
            int r3 = (int) r0
        L_0x00a7:
            int r13 = r13.optInt(r8, r1)
            if (r13 == 0) goto L_0x00ae
            goto L_0x0079
        L_0x00ae:
            com.webengage.sdk.android.actions.render.InAppNotificationData r13 = r11.e
            com.webengage.sdk.android.actions.render.InAppNotificationData$InAppType r13 = r13.getInAppType()
            boolean r0 = r11.c
            if (r0 != 0) goto L_0x0128
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            android.app.Activity r7 = r11.getActivity()
            android.view.Window r7 = r7.getWindow()
            android.view.View r7 = r7.getDecorView()
            r7.getWindowVisibleDisplayFrame(r0)
            int r0 = r0.top
            java.lang.String r7 = java.lang.String.valueOf(r0)
            java.lang.String r8 = "diff = "
            java.lang.String r7 = r8.concat(r7)
            com.webengage.sdk.android.Logger.d(r10, r7)
            if (r0 != 0) goto L_0x0129
            android.app.Activity r0 = r11.getActivity()
            android.content.Context r0 = r0.getApplicationContext()
            android.content.res.Resources r0 = r0.getResources()
            java.lang.String r7 = "status_bar_height"
            java.lang.String r8 = "dimen"
            java.lang.String r9 = "android"
            int r7 = r0.getIdentifier(r7, r8, r9)
            if (r7 <= 0) goto L_0x0107
            int r0 = r0.getDimensionPixelSize(r7)
            java.lang.String r7 = java.lang.String.valueOf(r0)
            java.lang.String r8 = "diff by resource = "
        L_0x00ff:
            java.lang.String r7 = r8.concat(r7)
            com.webengage.sdk.android.Logger.d(r10, r7)
            goto L_0x0129
        L_0x0107:
            int r7 = android.os.Build.VERSION.SDK_INT
            r8 = 23
            if (r7 < r8) goto L_0x0110
            r7 = 24
            goto L_0x0112
        L_0x0110:
            r7 = 25
        L_0x0112:
            float r7 = (float) r7
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            float r0 = r0.density
            float r7 = r7 * r0
            double r7 = (double) r7
            double r7 = java.lang.Math.ceil(r7)
            int r0 = (int) r7
            java.lang.String r7 = java.lang.String.valueOf(r0)
            java.lang.String r8 = "diff by constant = "
            goto L_0x00ff
        L_0x0128:
            r0 = 0
        L_0x0129:
            int[] r7 = com.webengage.sdk.android.actions.render.m.AnonymousClass3.f5404a
            int r8 = r13.ordinal()
            r7 = r7[r8]
            r8 = 1
            if (r7 == r8) goto L_0x0138
            if (r7 == r6) goto L_0x0138
            r13 = 0
            goto L_0x0152
        L_0x0138:
            r12.setFlags(r5, r5)
            com.webengage.sdk.android.actions.render.InAppNotificationData$InAppType r5 = com.webengage.sdk.android.actions.render.InAppNotificationData.InAppType.HEADER
            boolean r13 = r13.equals(r5)
            if (r13 == 0) goto L_0x014c
            int r13 = r2.heightPixels
            int r13 = -r13
            int r13 = r13 / r6
            int r2 = r4 / 2
            int r13 = r13 + r2
            int r13 = r13 + r0
            goto L_0x0152
        L_0x014c:
            int r13 = r2.heightPixels
            int r13 = r13 / r6
            int r0 = r4 / 2
            int r13 = r13 - r0
        L_0x0152:
            r12.setLayout(r3, r4)
            java.lang.String r0 = "x= 0"
            com.webengage.sdk.android.Logger.d(r10, r0)
            java.lang.String r0 = java.lang.String.valueOf(r13)
            java.lang.String r2 = "y= "
            java.lang.String r0 = r2.concat(r0)
            com.webengage.sdk.android.Logger.d(r10, r0)
            android.view.WindowManager$LayoutParams r0 = r12.getAttributes()
            r0.x = r1
            r0.y = r13
            r12.setAttributes(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.render.m.a(android.view.Window, int):void");
    }

    /* access modifiers changed from: private */
    public void e() {
        int i2 = this.n;
        if (i2 == 0) {
            DataHolder.get().a(false);
            HashMap hashMap = new HashMap();
            hashMap.put("id", this.e.getVariationId());
            hashMap.put("call_to_action", this.o);
            hashMap.put("experiment_id", this.e.getExperimentId());
            WebEngage.startService(n.a(af.EVENT, k.a("notification_click", hashMap, null, null, this.s), this.s), this.s);
            boolean onInAppNotificationClicked = i.a(this.s).onInAppNotificationClicked(this.s, this.e, this.o);
            String str = this.p;
            if (str != null && !str.isEmpty() && !"null".equals(this.p) && !onInAppNotificationClicked) {
                Intent intent = new Intent(this.s, NotificationClickHandlerService.class);
                intent.setAction("com.webengage.sdk.android.intent.ACTION");
                Bundle bundle = new Bundle();
                bundle.putString("action", "WebEngageDeeplink");
                bundle.putString("deeplink_uri", this.p);
                intent.putExtras(bundle);
                this.s.startService(intent);
            }
        } else if (i2 == 1) {
            DataHolder.get().a(false);
            HashMap hashMap2 = new HashMap();
            hashMap2.put("id", this.e.getVariationId());
            hashMap2.put("experiment_id", this.e.getExperimentId());
            WebEngage.startService(n.a(af.EVENT, k.a("notification_close", hashMap2, null, null, this.s), this.s), this.s);
            i.a(this.s).onInAppNotificationDismissed(this.s, this.e);
        } else if (i2 == 2) {
            DataHolder.get().a(false);
            WebEngage.startService(n.a(af.EXCEPTION, new WebViewException(this.r), this.s), this.s);
        } else if (i2 == 3) {
            if (e.a("android.permission.VIBRATE", this.s)) {
                Vibrator vibrator = (Vibrator) this.s.getSystemService("vibrator");
                if (Build.VERSION.SDK_INT >= 26) {
                    vibrator.vibrate(VibrationEffect.createOneShot(20, -1));
                } else {
                    vibrator.vibrate(20);
                }
            }
            HashMap hashMap3 = new HashMap();
            hashMap3.put("experiment_id", this.e.getExperimentId());
            hashMap3.put("id", this.e.getVariationId());
            WebEngage.startService(n.a(af.EVENT, k.a("notification_view", hashMap3, null, null, this.s), this.s), this.s);
            i.a(this.s).onInAppNotificationShown(this.s, this.e);
        }
    }

    /* access modifiers changed from: package-private */
    public void a() {
        this.i.post(new Runnable() {
            public void run() {
                try {
                    m.this.f5400a.getWindow().getDecorView().setVisibility(0);
                    if (m.this.g == null) {
                        m.this.e();
                    } else if (!m.this.g.hasStarted()) {
                        m.this.f.startAnimation(m.this.g);
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    /* access modifiers changed from: package-private */
    public void a(String str) {
        this.n = this.l;
        this.r = str;
        b();
    }

    /* access modifiers changed from: package-private */
    public void a(String str, String str2, boolean z) {
        this.n = this.j;
        this.o = str;
        this.p = str2;
        this.q = z;
        b();
    }

    /* access modifiers changed from: package-private */
    public void b() {
        this.i.post(new Runnable() {
            public void run() {
                try {
                    if (!(m.this.f5400a == null || m.this.f5400a.getWindow() == null || m.this.f5400a.getWindow().getDecorView() == null)) {
                        if (m.this.f5400a.getWindow().getDecorView().getVisibility() == 8) {
                            if (Build.VERSION.SDK_INT >= 12) {
                                m.this.dismissAllowingStateLoss();
                            } else {
                                m.this.dismiss();
                            }
                            DataHolder.get().a(false);
                        } else if (m.this.h == null) {
                            if (Build.VERSION.SDK_INT >= 12) {
                                m.this.dismissAllowingStateLoss();
                            } else {
                                m.this.dismiss();
                            }
                            m.this.e();
                        } else if (!m.this.h.hasStarted()) {
                            m.this.f.startAnimation(m.this.h);
                        }
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    /* access modifiers changed from: package-private */
    public void c() {
        this.n = this.k;
        b();
    }

    /* access modifiers changed from: package-private */
    public void d() {
        this.n = this.m;
        a();
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        Logger.d("RenderDialogFragment", "Attach");
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Logger.d("RenderDialogFragment", "Configuration Changed");
        a(this.f5400a.getWindow(), configuration.orientation);
    }

    public void onCreate(Bundle bundle) {
        Logger.d("RenderDialogFragment", "Create");
        super.onCreate(bundle);
        try {
            this.s = getActivity().getApplicationContext();
            Bundle arguments = getArguments();
            this.i = new Handler(Looper.myLooper());
            arguments.setClassLoader(InAppNotificationData.class.getClassLoader());
            this.e = (InAppNotificationData) arguments.getParcelable("notificationData");
            this.f5401b = this.e.getData().optJSONObject("layoutAttributes");
            this.d = arguments.getString("baseUrl");
            this.c = arguments.getBoolean("fullscreen", false);
            this.g = a.a(this.f5401b.optString("entryAnimation", "FADE_IN"), new a(), (long) this.f5401b.optInt("animDuration", 1000));
            this.h = a.a(this.f5401b.optString("exitAnimation", "FADE_OUT"), new b(), (long) this.f5401b.optInt("animDuration", 1000));
            this.f5400a = new c(getActivity(), 16973829);
        } catch (Exception unused) {
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Logger.d("RenderDialogFragment", "CreateDialog");
        return this.f5400a;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Logger.d("RenderDialogFragment", "CreateView");
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void onDestroy() {
        super.onDestroy();
        Logger.d("RenderDialogFragment", "Destroy");
    }

    public void onDestroyView() {
        Logger.d("RenderDialogFragment", "DestroyView");
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    public void onDetach() {
        super.onDetach();
        Logger.d("RenderDialogFragment", "Detach");
    }

    public void onPause() {
        super.onPause();
        DataHolder.get().a(false);
        Logger.d("RenderDialogFragment", "Pause");
    }

    public void onResume() {
        super.onResume();
        Logger.d("RenderDialogFragment", "Resume");
    }

    public void onStart() {
        super.onStart();
        DataHolder.get().a(true);
        Logger.d("RenderDialogFragment", "Start");
    }

    public void onStop() {
        super.onStop();
        Logger.d("RenderDialogFragment", "Stop");
    }
}
