package cab.snapp.passenger.units.sideMenu;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.e;
import cab.snapp.passenger.a.m;

public class SideMenuView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    private c f1232a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public int f1233b;
    @BindView(2131362470)
    LinearLayout footerFreeRideLayout;
    @BindView(2131362471)
    LinearLayout footerLayout;
    @BindView(2131362472)
    LinearLayout footerSnappFoodLayout;
    @BindView(2131362473)
    ImageView headerCarIv;
    @BindView(2131362474)
    RelativeLayout headerLayout;
    @BindView(2131362475)
    ImageView headerRoadIv;
    @BindView(2131362476)
    RecyclerView recycler;

    public SideMenuView(Context context) {
        super(context);
    }

    public SideMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SideMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362470})
    public void onFooterFreeRideLayoutClicked() {
        c cVar = this.f1232a;
        if (cVar != null) {
            cVar.onFreeRideClicked();
        }
    }

    @OnClick({2131362472})
    public void onFooterSnappFoodLayoutClicked() {
        c cVar = this.f1232a;
        if (cVar != null) {
            cVar.onSnappFoodClicked();
        }
    }

    public void initScrollGestures() {
        this.headerCarIv.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
            public final void onGlobalLayout() {
                SideMenuView sideMenuView = SideMenuView.this;
                int unused = sideMenuView.f1233b = sideMenuView.headerLayout.getWidth();
                SideMenuView.this.headerCarIv.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (SideMenuView.this.recycler.computeVerticalScrollRange() > SideMenuView.this.recycler.computeVerticalScrollExtent()) {
                    SideMenuView.this.recycler.addOnScrollListener(new RecyclerView.OnScrollListener() {
                        public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
                            super.onScrolled(recyclerView, i, i2);
                            int computeVerticalScrollOffset = SideMenuView.this.recycler.computeVerticalScrollOffset();
                            SideMenuView.this.headerCarIv.setPivotX(((float) (SideMenuView.this.f1233b / 2)) - e.convertDpToPixel(SideMenuView.this.getContext(), 42.0f));
                            SideMenuView.this.headerCarIv.setPivotY(0.0f);
                            SideMenuView.this.headerCarIv.setRotation(-(((float) (computeVerticalScrollOffset * 360)) / ((float) (SideMenuView.this.recycler.computeVerticalScrollRange() - SideMenuView.this.recycler.computeVerticalScrollExtent()))));
                        }
                    });
                }
            }
        });
    }

    public void loadSideMenuItems(m mVar) {
        this.recycler.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        this.recycler.setAdapter(mVar);
    }

    public void scrollToTop() {
        this.recycler.smoothScrollToPosition(0);
    }

    public void hideSoftKeyboard() {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            Context context = getContext();
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                if (activity.getCurrentFocus() != null && activity.getCurrentFocus().getWindowToken() != null) {
                    inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 0);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f1232a = cVar;
    }
}
