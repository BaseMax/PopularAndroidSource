package cab.snapp.passenger.units.tour;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.play.R;
import java.util.ArrayList;
import javax.inject.Inject;

public class b extends BaseInteractor<g, e> implements a {
    private static String c = "TOUR_FINISHED_PRIVATE_CHANNEL_ID";
    @Inject

    /* renamed from: a  reason: collision with root package name */
    o f1393a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f1394b;

    public void lastPageOfViewPager(boolean z) {
    }

    public static String getTourFinishedPrivateChannelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(c);
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getPresenter() != null) {
            ArrayList arrayList = new ArrayList();
            d dVar = new d("TITLE ONE");
            dVar.setLayoutResId(R.layout.layout_tour_page1);
            d dVar2 = new d("TITLE TWO");
            dVar2.setLayoutResId(R.layout.layout_tour_page2);
            d dVar3 = new d("TITLE THREE");
            dVar3.setLayoutResId(R.layout.layout_tour_page3);
            if (g.getSavedLocale() == 10) {
                addItemsAsRtl(arrayList, dVar, dVar2, dVar3);
            } else {
                addItemsAsLtr(arrayList, dVar, dVar2, dVar3);
            }
            if (!(getRouter() == null || getController() == null)) {
                ((g) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
            }
            ((e) getPresenter()).onInitialize(this, arrayList);
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.f1394b.reportScreenName("");
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        if (getPresenter() != null) {
            ((e) getPresenter()).onTourUnitIsInForeground(getActivity());
        }
        if (getActivity() != null) {
            ((RootActivity) getActivity()).setShouldHandleBack(false);
        }
        this.f1393a.cancelAll();
    }

    public void addItemsAsRtl(ArrayList<d> arrayList, d dVar, d dVar2, d dVar3) {
        if (arrayList != null) {
            arrayList.add(dVar3);
            arrayList.add(dVar2);
            arrayList.add(dVar);
        }
    }

    public void addItemsAsLtr(ArrayList<d> arrayList, d dVar, d dVar2, d dVar3) {
        if (arrayList != null) {
            arrayList.add(dVar);
            arrayList.add(dVar2);
            arrayList.add(dVar3);
        }
    }

    public void requestNextPage() {
        if (getPresenter() != null) {
            if (g.getSavedLocale() == 10) {
                ((e) getPresenter()).displayPreviousPage();
            } else {
                ((e) getPresenter()).displayNextPage();
            }
        }
    }

    public void onCancelTourViewClick() {
        finish();
    }

    public void finish() {
        if (getActivity() instanceof RootActivity) {
            ((RootActivity) getActivity()).setShouldHandleBack(true);
        }
        if (getRouter() != null) {
            ((g) getRouter()).navigateUp();
        }
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getTourFinishedPrivateChannelId(), Boolean.TRUE);
    }

    public void onApplicationRootBackPressed() {
        finish();
    }
}
