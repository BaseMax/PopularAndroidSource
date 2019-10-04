package cab.snapp.passenger.units.sideMenu;

import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.a.m;
import cab.snapp.passenger.data.models.SideMenuData;
import cab.snapp.passenger.f.o;
import java.util.List;
import javax.inject.Inject;

public final class c extends BasePresenter<SideMenuView, a> implements m.e {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    o f1245a;

    /* renamed from: b  reason: collision with root package name */
    private m f1246b;

    public final m getSideMenuAdapter() {
        return this.f1246b;
    }

    public final void setSideMenuAdapter(m mVar) {
        this.f1246b = mVar;
    }

    public final void onInitDefaults() {
        if (getView() != null) {
            ((SideMenuView) getView()).initScrollGestures();
            BaseApplication.get(((SideMenuView) getView()).getContext()).getAppComponent().inject(this);
        }
    }

    public final void onLoadingSideMenu(String str, boolean z, boolean z2, List<SideMenuData> list) {
        SideMenuView sideMenuView = (SideMenuView) getView();
        if (sideMenuView != null) {
            m mVar = this.f1246b;
            if (mVar == null) {
                m mVar2 = new m(sideMenuView.getContext(), list, str, z, !z2, this);
                this.f1246b = mVar2;
            } else {
                mVar.updateData(str, z, !z2);
            }
            sideMenuView.loadSideMenuItems(this.f1246b);
        }
    }

    public final void onUpdateData(String str, boolean z, boolean z2) {
        m mVar = this.f1246b;
        if (mVar != null) {
            mVar.updateData(str, z, !z2);
        }
    }

    public final void updateCredit(long j) {
        m mVar = this.f1246b;
        if (mVar != null) {
            mVar.updateCredit(j);
        }
    }

    public final void onMenuIsOpened() {
        if (getView() != null) {
            ((SideMenuView) getView()).hideSoftKeyboard();
            ((SideMenuView) getView()).scrollToTop();
        }
    }

    public final void onFreeRideClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).proceedFreeRide();
        }
    }

    public final void onSnappFoodClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).proceedSnappFood();
        }
    }

    public final void onItemClick(int i, SideMenuData sideMenuData) {
        a aVar = (a) getInteractor();
        switch (sideMenuData.getType()) {
            case 0:
                if (aVar != null) {
                    aVar.proceedAddCredit();
                    this.f1245a.cancelAll();
                    break;
                }
                break;
            case 1:
                if (aVar != null) {
                    aVar.proceedProfile();
                    this.f1245a.cancelAll();
                    return;
                }
                break;
            case 2:
                if (aVar != null) {
                    aVar.proceedTransactions();
                    this.f1245a.cancelAll();
                    return;
                }
                break;
            case 3:
                if (aVar != null) {
                    aVar.proceedRideHistory();
                    this.f1245a.cancelAll();
                    return;
                }
                break;
            case 4:
                if (aVar != null) {
                    aVar.proceedFavorites();
                    this.f1245a.cancelAll();
                    return;
                }
                break;
            case 5:
                if (aVar != null) {
                    aVar.proceedMessages();
                    this.f1245a.cancelAll();
                    return;
                }
                break;
            case 6:
                if (aVar != null) {
                    aVar.proceedSupport();
                    this.f1245a.cancelAll();
                    return;
                }
                break;
            case 7:
                if (aVar != null) {
                    aVar.proceedSettings();
                    this.f1245a.cancelAll();
                    return;
                }
                break;
            case 8:
                if (aVar != null) {
                    aVar.proceedAbout();
                    this.f1245a.cancelAll();
                    return;
                }
                break;
            case 9:
                if (aVar != null) {
                    aVar.proceedExit();
                    this.f1245a.cancelAll();
                    break;
                }
                break;
        }
    }
}
