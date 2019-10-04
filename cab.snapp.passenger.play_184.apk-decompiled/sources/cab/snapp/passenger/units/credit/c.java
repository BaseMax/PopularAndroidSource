package cab.snapp.passenger.units.credit;

import android.app.Activity;
import androidx.fragment.app.FragmentManager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.Transaction;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.credit.adapter.CreditItemAdapter;
import cab.snapp.snappuikit.c.a;
import java.util.List;
import javax.inject.Inject;

public final class c extends BasePresenter<CreditView, a> {

    /* renamed from: a  reason: collision with root package name */
    protected CreditItemAdapter f697a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    cab.snapp.passenger.f.b.b.c f698b;
    private FragmentManager c;

    public final void showError(String str) {
        CreditView creditView = (CreditView) getView();
        if (creditView != null) {
            creditView.showErrorDialog(str);
        }
    }

    public final void showLoading() {
        if (getView() != null) {
            ((CreditView) getView()).showLoadingDialog();
        }
    }

    public final void hideLoading() {
        if (getView() != null) {
            ((CreditView) getView()).hideLoadingDialog();
        }
    }

    public final void onDataRequestSucceed(List<Transaction> list) {
        CreditView creditView = (CreditView) getView();
        if (creditView != null) {
            if (list == null || list.size() <= 0) {
                creditView.showEmptyLayout();
                return;
            }
            creditView.hideEmptyLayout();
            this.f697a = new CreditItemAdapter(list);
            creditView.setupRecyclerView(this.f697a);
        }
    }

    public final void addCreditButtonClicked() {
        this.f698b.sendAnalyticsEvent(c.C0021c.UX, c.b.PAYMENT, "Credit History");
        if (getView() != null) {
            ((CreditView) getView()).showAddCreditDialog();
        }
    }

    public final void rowItemClicked(int i, Transaction transaction) {
        if (getView() != null) {
            ((CreditView) getView()).showSupportDialog(transaction);
        }
    }

    public final FragmentManager getFragmentManager() {
        return this.c;
    }

    public final void setFragmentManager(FragmentManager fragmentManager) {
        this.c = fragmentManager;
    }

    public final void initViews() {
        if (getView() != null && ((CreditView) getView()).getContext() != null) {
            BaseApplication.get(((CreditView) getView()).getContext()).getAppComponent().inject(this);
            ((CreditView) getView()).setToolbarTitle(R.string.transactions);
            ((CreditView) getView()).setToolbarBackButton();
        }
    }

    public final void onBackPressed() {
        if (getInteractor() != null) {
            ((a) getInteractor()).goBack();
        }
    }

    public final void onSupportItemClicked(String str) {
        if (getInteractor() != null) {
            ((a) getInteractor()).goToItemSupport(str);
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((CreditView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((CreditView) getView()).getContext(), R.color.colorPrimary);
        }
    }
}
