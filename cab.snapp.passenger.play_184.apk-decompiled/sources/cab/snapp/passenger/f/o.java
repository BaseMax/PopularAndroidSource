package cab.snapp.passenger.f;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Handler;
import androidx.core.content.res.ResourcesCompat;
import cab.snapp.b.a;
import cab.snapp.passenger.data.models.ShowCaseItemDao;
import cab.snapp.passenger.play.R;
import com.getkeepsafe.taptargetview.TapTargetView;
import com.getkeepsafe.taptargetview.c;

public final class o {

    /* renamed from: a  reason: collision with root package name */
    static Handler f585a;
    public static o instance;

    /* renamed from: b  reason: collision with root package name */
    Runnable f586b;
    Runnable c;
    Runnable d;
    Runnable e;
    Runnable f;
    Runnable g;
    private TapTargetView.a h = new TapTargetView.a() {
        public final void onTargetClick(TapTargetView tapTargetView) {
            if (tapTargetView != null) {
                super.onTargetClick(tapTargetView);
            }
        }

        public final void onTargetLongClick(TapTargetView tapTargetView) {
            super.onTargetLongClick(tapTargetView);
        }

        public final void onTargetCancel(TapTargetView tapTargetView) {
            super.onTargetCancel(tapTargetView);
        }

        public final void onOuterCircleClick(TapTargetView tapTargetView) {
            super.onOuterCircleClick(tapTargetView);
        }

        public final void onTargetDismissed(TapTargetView tapTargetView, boolean z) {
            super.onTargetDismissed(tapTargetView, z);
        }
    };
    private TapTargetView i;
    private TapTargetView j;
    private TapTargetView k;
    private TapTargetView l;
    private TapTargetView m;
    private TapTargetView n;

    public final void cancelAll() {
        Handler handler = f585a;
        if (handler != null) {
            handler.removeCallbacks(this.f586b);
            f585a.removeCallbacks(this.g);
            f585a.removeCallbacks(this.f);
            f585a.removeCallbacks(this.c);
            f585a.removeCallbacks(this.d);
        }
        TapTargetView tapTargetView = this.i;
        if (tapTargetView != null) {
            tapTargetView.dismiss(false);
        }
        TapTargetView tapTargetView2 = this.k;
        if (tapTargetView2 != null) {
            tapTargetView2.dismiss(false);
        }
        TapTargetView tapTargetView3 = this.l;
        if (tapTargetView3 != null) {
            tapTargetView3.dismiss(false);
        }
        TapTargetView tapTargetView4 = this.m;
        if (tapTargetView4 != null) {
            tapTargetView4.dismiss(false);
        }
        TapTargetView tapTargetView5 = this.n;
        if (tapTargetView5 != null) {
            tapTargetView5.dismiss(false);
        }
        TapTargetView.a aVar = this.h;
        if (aVar != null) {
            TapTargetView tapTargetView6 = this.i;
            if (tapTargetView6 != null) {
                aVar.onTargetClick(tapTargetView6);
            }
            TapTargetView tapTargetView7 = this.j;
            if (tapTargetView7 != null) {
                this.h.onTargetClick(tapTargetView7);
            }
            TapTargetView tapTargetView8 = this.k;
            if (tapTargetView8 != null) {
                this.h.onTargetClick(tapTargetView8);
            }
            TapTargetView tapTargetView9 = this.l;
            if (tapTargetView9 != null) {
                this.h.onTargetClick(tapTargetView9);
            }
            TapTargetView tapTargetView10 = this.m;
            if (tapTargetView10 != null) {
                this.h.onTargetClick(tapTargetView10);
            }
            TapTargetView tapTargetView11 = this.n;
            if (tapTargetView11 != null) {
                this.h.onTargetClick(tapTargetView11);
            }
            f585a = null;
            this.h = null;
            this.f586b = null;
            this.g = null;
            this.f = null;
            this.c = null;
            this.d = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            this.m = null;
            this.n = null;
        }
    }

    public final void showTapTargetForRideOptions(ShowCaseItemDao showCaseItemDao) {
        cancelAll();
        if (b("show_case_options", showCaseItemDao)) {
            this.f586b = new Runnable(showCaseItemDao) {
                private final /* synthetic */ ShowCaseItemDao f$1;

                {
                    this.f$1 = r2;
                }

                public final void run() {
                    o.this.f(this.f$1);
                }
            };
            Handler handler = new Handler();
            f585a = handler;
            handler.postDelayed(this.f586b, 2000);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void f(ShowCaseItemDao showCaseItemDao) {
        this.i = TapTargetView.showFor(showCaseItemDao.getActivity(), c.forView(showCaseItemDao.getView(), showCaseItemDao.getTitle(), showCaseItemDao.getDescription()).textTypeface(a(showCaseItemDao.getActivity())).outerCircleColor(showCaseItemDao.getOuterCircleColor()).targetCircleColor(showCaseItemDao.getTargetCircleColor()).titleTextColor(showCaseItemDao.getTitleTextColor()).titleTextSize(showCaseItemDao.getTitleTextSize()).descriptionTextColor(showCaseItemDao.getDescTextColor()).descriptionTextSize(showCaseItemDao.getDescTextSize()).dimColor(17170444).drawShadow(true).cancelable(true).transparentTarget(true), this.h);
        a("show_case_options", showCaseItemDao);
    }

    public final void showTapTargetForSearch(ShowCaseItemDao showCaseItemDao) {
        cancelAll();
        if (b("show_case_voice_search", showCaseItemDao)) {
            this.c = new Runnable(showCaseItemDao) {
                private final /* synthetic */ ShowCaseItemDao f$1;

                {
                    this.f$1 = r2;
                }

                public final void run() {
                    o.this.e(this.f$1);
                }
            };
            Handler handler = new Handler();
            f585a = handler;
            handler.postDelayed(this.c, 2000);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void e(ShowCaseItemDao showCaseItemDao) {
        this.k = TapTargetView.showFor(showCaseItemDao.getActivity(), c.forView(showCaseItemDao.getView(), showCaseItemDao.getTitle(), showCaseItemDao.getDescription()).textTypeface(a(showCaseItemDao.getActivity())).outerCircleColor(showCaseItemDao.getOuterCircleColor()).targetCircleColor(showCaseItemDao.getTargetCircleColor()).titleTextColor(showCaseItemDao.getTitleTextColor()).titleTextSize(showCaseItemDao.getTitleTextSize()).descriptionTextColor(showCaseItemDao.getDescTextColor()).descriptionTextSize(showCaseItemDao.getDescTextSize()).dimColor(17170444).drawShadow(true).cancelable(true).transparentTarget(true), this.h);
        a("show_case_voice_search", showCaseItemDao);
    }

    public final void showTapTargetForOriginPin(ShowCaseItemDao showCaseItemDao) {
        cancelAll();
        if (b("show_case_origin_pin", showCaseItemDao)) {
            this.d = new Runnable(showCaseItemDao) {
                private final /* synthetic */ ShowCaseItemDao f$1;

                {
                    this.f$1 = r2;
                }

                public final void run() {
                    o.this.d(this.f$1);
                }
            };
            Handler handler = new Handler();
            f585a = handler;
            handler.postDelayed(this.d, 2000);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void d(ShowCaseItemDao showCaseItemDao) {
        this.j = TapTargetView.showFor(showCaseItemDao.getActivity(), c.forView(showCaseItemDao.getView(), showCaseItemDao.getTitle(), showCaseItemDao.getDescription()).textTypeface(a(showCaseItemDao.getActivity())).outerCircleColor(showCaseItemDao.getOuterCircleColor()).targetCircleColor(showCaseItemDao.getTargetCircleColor()).titleTextColor(showCaseItemDao.getTitleTextColor()).titleTextSize(showCaseItemDao.getTitleTextSize()).descriptionTextColor(showCaseItemDao.getDescTextColor()).descriptionTextSize(showCaseItemDao.getDescTextSize()).dimColor(17170444).drawShadow(true).cancelable(true).transparentTarget(true), this.h);
        a("show_case_origin_pin", showCaseItemDao);
    }

    public final void showTapTargetForRideShare(ShowCaseItemDao showCaseItemDao) {
        cancelAll();
        if (b("show_case_ride_share", showCaseItemDao)) {
            this.e = new Runnable(showCaseItemDao) {
                private final /* synthetic */ ShowCaseItemDao f$1;

                {
                    this.f$1 = r2;
                }

                public final void run() {
                    o.this.c(this.f$1);
                }
            };
            Handler handler = new Handler();
            f585a = handler;
            handler.postDelayed(this.e, 2000);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(ShowCaseItemDao showCaseItemDao) {
        this.l = TapTargetView.showFor(showCaseItemDao.getActivity(), c.forView(showCaseItemDao.getView(), showCaseItemDao.getTitle(), showCaseItemDao.getDescription()).textTypeface(a(showCaseItemDao.getActivity())).outerCircleColor(showCaseItemDao.getOuterCircleColor()).targetCircleColor(showCaseItemDao.getTargetCircleColor()).titleTextColor(showCaseItemDao.getTitleTextColor()).titleTextSize(showCaseItemDao.getTitleTextSize()).descriptionTextColor(showCaseItemDao.getDescTextColor()).descriptionTextSize(showCaseItemDao.getDescTextSize()).dimColor(17170444).drawShadow(true).cancelable(true).transparentTarget(true), this.h);
        a("show_case_ride_share", showCaseItemDao);
    }

    public final void showTapTargetForMessageToDriver(ShowCaseItemDao showCaseItemDao) {
        cancelAll();
        if (b("show_case_ride_message_to_driver", showCaseItemDao)) {
            this.f = new Runnable(showCaseItemDao) {
                private final /* synthetic */ ShowCaseItemDao f$1;

                {
                    this.f$1 = r2;
                }

                public final void run() {
                    o.this.b(this.f$1);
                }
            };
            Handler handler = new Handler();
            f585a = handler;
            handler.postDelayed(this.f, 2000);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(ShowCaseItemDao showCaseItemDao) {
        this.m = TapTargetView.showFor(showCaseItemDao.getActivity(), c.forView(showCaseItemDao.getView(), showCaseItemDao.getTitle(), showCaseItemDao.getDescription()).textTypeface(a(showCaseItemDao.getActivity())).outerCircleColor(showCaseItemDao.getOuterCircleColor()).targetCircleColor(showCaseItemDao.getTargetCircleColor()).titleTextColor(showCaseItemDao.getTitleTextColor()).titleTextSize(showCaseItemDao.getTitleTextSize()).descriptionTextColor(showCaseItemDao.getDescTextColor()).descriptionTextSize(showCaseItemDao.getDescTextSize()).dimColor(17170444).drawShadow(true).cancelable(true).transparentTarget(true), this.h);
        a("show_case_ride_message_to_driver", showCaseItemDao);
    }

    public final void showTapTargetForPayment(ShowCaseItemDao showCaseItemDao) {
        cancelAll();
        if (b("show_case_online_payment", showCaseItemDao)) {
            this.g = new Runnable(showCaseItemDao) {
                private final /* synthetic */ ShowCaseItemDao f$1;

                {
                    this.f$1 = r2;
                }

                public final void run() {
                    o.this.a(this.f$1);
                }
            };
            Handler handler = new Handler();
            f585a = handler;
            handler.postDelayed(this.g, 2000);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ShowCaseItemDao showCaseItemDao) {
        this.n = TapTargetView.showFor(showCaseItemDao.getActivity(), c.forView(showCaseItemDao.getView(), showCaseItemDao.getTitle(), showCaseItemDao.getDescription()).textTypeface(a(showCaseItemDao.getActivity())).outerCircleColor(showCaseItemDao.getOuterCircleColor()).targetCircleColor(showCaseItemDao.getTargetCircleColor()).targetRadius(60).titleTextColor(showCaseItemDao.getTitleTextColor()).titleTextSize(showCaseItemDao.getTitleTextSize()).descriptionTextColor(showCaseItemDao.getDescTextColor()).descriptionTextSize(showCaseItemDao.getDescTextSize()).dimColor(17170444).drawShadow(true).cancelable(true).transparentTarget(true), this.h);
        a("show_case_online_payment", showCaseItemDao);
    }

    private static void a(String str, ShowCaseItemDao showCaseItemDao) {
        new a(showCaseItemDao.getActivity()).put(str, Boolean.TRUE);
    }

    private static Typeface a(Activity activity) {
        if (activity == null) {
            return null;
        }
        return ResourcesCompat.getFont(activity, R.font.iran_sans_mobile_light);
    }

    private static boolean b(String str, ShowCaseItemDao showCaseItemDao) {
        if (showCaseItemDao == null || showCaseItemDao.getActivity() == null) {
            return false;
        }
        a aVar = new a(showCaseItemDao.getActivity());
        if (!aVar.containsKey(str) || aVar.get(str) != Boolean.TRUE) {
            return true;
        }
        return false;
    }
}
