package cab.snapp.passenger.units.tour;

import android.app.Activity;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;
import java.util.ArrayList;
import javax.inject.Inject;

public final class e extends BasePresenter<TourView, b> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    c f1399a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public boolean f1400b = false;
    /* access modifiers changed from: private */
    public int c;

    public final void lastPageIsSelected(boolean z) {
        if (getView() != null) {
            if (z) {
                ((TourView) getView()).showEnterButton();
                ((TourView) getView()).hideNextImageView();
                return;
            }
            ((TourView) getView()).hideEnterButton();
            ((TourView) getView()).showNextImageView();
        }
    }

    public final void onEnterButtonClick() {
        if (getInteractor() != null && getView() != null) {
            int a2 = a(((TourView) getView()).viewPager.getCurrentItem());
            if (getView() != null && a2 >= 0) {
                this.f1399a.sendNestedEventViaAppmetrica("JekOnboarding", new b.a().addKeyValue("Slide".concat(String.valueOf(a2)), "Done").build());
            }
            ((b) getInteractor()).finish();
        }
    }

    public final void onNextPageImageViewClick() {
        if (getInteractor() != null && getView() != null) {
            this.f1400b = true;
            int a2 = a(((TourView) getView()).viewPager.getCurrentItem());
            if (getView() != null && a2 >= 0) {
                this.f1399a.sendNestedEventViaAppmetrica("JekOnboarding", new b.a().addKeyValue("Slide".concat(String.valueOf(a2)), "ButtonNext").build());
            }
            ((b) getInteractor()).requestNextPage();
        }
    }

    /* access modifiers changed from: private */
    public int a(int i) {
        if (getView() == null || ((TourView) getView()).viewPager.getAdapter() == null) {
            return -1;
        }
        int savedLocale = g.getSavedLocale();
        if (savedLocale == 50 || savedLocale == 10) {
            return ((TourView) getView()).viewPager.getAdapter().getCount() - i;
        }
        return i + 1;
    }

    public final void displayNextPage() {
        if (!(getView() == null || ((TourView) getView()).viewPager.getCurrentItem() == 2)) {
            ((TourView) getView()).viewPager.setCurrentItem(((TourView) getView()).viewPager.getCurrentItem() + 1);
        }
    }

    public final void displayPreviousPage() {
        if (!(getView() == null || ((TourView) getView()).viewPager.getCurrentItem() == 0)) {
            ((TourView) getView()).viewPager.setCurrentItem(((TourView) getView()).viewPager.getCurrentItem() - 1);
        }
    }

    public final void onCancelTourClick() {
        if (getInteractor() != null && getView() != null) {
            ((b) getInteractor()).onCancelTourViewClick();
            int a2 = a(((TourView) getView()).viewPager.getCurrentItem());
            if (getView() != null && a2 >= 0) {
                this.f1399a.sendNestedEventViaAppmetrica("JekOnboarding", new b.a().addKeyValue("Slide".concat(String.valueOf(a2)), "Close").build());
            }
        }
    }

    public final void prepareTourAdapter(b bVar, ArrayList<d> arrayList) {
        if (getView() != null && bVar != null && arrayList != null) {
            ((TourView) getView()).viewPager.setAdapter(new h(bVar, arrayList));
            ((TourView) getView()).circleIndicatorView.setPageIndicators(arrayList.size());
        }
    }

    public final void addOnPageListenerForLastPageChecking() {
        if (getView() != null) {
            ((TourView) getView()).viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {

                /* renamed from: a  reason: collision with root package name */
                boolean f1401a = false;

                public final void onPageScrolled(int i, float f, int i2) {
                }

                public final void onPageSelected(int i) {
                    e eVar = e.this;
                    eVar.b(eVar.a(i));
                    if (!e.this.f1400b && this.f1401a) {
                        e eVar2 = e.this;
                        e.a(eVar2, eVar2.c, i);
                    }
                    ((TourView) e.this.getView()).circleIndicatorView.setCurrentPage(i);
                    boolean z = true;
                    if (g.isCurrentLocalRtl()) {
                        e eVar3 = e.this;
                        if (i != 0) {
                            z = false;
                        }
                        eVar3.lastPageIsSelected(z);
                    } else {
                        e eVar4 = e.this;
                        if (i != 2) {
                            z = false;
                        }
                        eVar4.lastPageIsSelected(z);
                    }
                    int unused = e.this.c = i;
                    boolean unused2 = e.this.f1400b = false;
                }

                public final void onPageScrollStateChanged(int i) {
                    this.f1401a = i == 2;
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void b(int i) {
        if (getView() != null && i >= 0) {
            this.f1399a.sendNestedEventViaAppmetrica("JekOnboarding", new b.a().addKeyValue("Slide".concat(String.valueOf(i)), "Show").build());
        }
    }

    public final void addPageTransformerForAnimations() {
        ((TourView) getView()).viewPager.setPageTransformer(false, new ViewPager.PageTransformer() {
            public final void transformPage(View view, float f) {
                view.getWidth();
                if (f <= -1.0f || f >= 1.0f) {
                }
            }
        });
    }

    public final void selectActiveItemAccordingToLanguageDirection(int i) {
        if (i == 10) {
            ((TourView) getView()).viewPager.setCurrentItem(2);
            ((TourView) getView()).circleIndicatorView.setCurrentPage(2);
            this.c = 2;
            return;
        }
        ((TourView) getView()).circleIndicatorView.setCurrentPage(0);
        this.c = 0;
        b(1);
    }

    public final void rotateNextDrawableForRTLLanguages() {
        if (getView() != null) {
            ((TourView) getView()).rotateNextImageViewForRTLLanguages();
        }
    }

    public final void onInitialize(b bVar, ArrayList<d> arrayList) {
        BaseApplication.get(((TourView) getView()).getContext()).getAppComponent().inject(this);
        prepareTourAdapter(bVar, arrayList);
        addOnPageListenerForLastPageChecking();
        selectActiveItemAccordingToLanguageDirection(g.getSavedLocale());
        addPageTransformerForAnimations();
        if (g.getSavedLocale() == 50 || g.getSavedLocale() == 10) {
            rotateNextDrawableForRTLLanguages();
        }
        setStatusBarColor();
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((TourView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((TourView) getView()).getContext(), R.color.pure_white);
        }
    }

    public final void onTourUnitIsInForeground(Activity activity) {
        if (activity instanceof RootActivity) {
            ((RootActivity) activity).hideLoadingForSnappCabItemClickedFromSnappServices();
        }
    }

    static /* synthetic */ void a(e eVar, int i, int i2) {
        org.a.c cVar;
        if (eVar.getView() != null) {
            int a2 = eVar.a(i);
            int a3 = eVar.a(i2);
            String concat = "Slide".concat(String.valueOf(a2));
            if (a3 > a2) {
                cVar = new b.a().addKeyValue(concat, "SwipeNext").build();
            } else {
                cVar = new b.a().addKeyValue(concat, "SwipePrevious").build();
            }
            eVar.f1399a.sendNestedEventViaAppmetrica("JekOnboarding", cVar);
        }
    }
}
