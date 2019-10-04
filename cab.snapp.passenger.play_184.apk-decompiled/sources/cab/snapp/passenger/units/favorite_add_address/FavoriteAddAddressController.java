package cab.snapp.passenger.units.favorite_add_address;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.f.k;
import cab.snapp.passenger.play.R;
import javax.inject.Inject;

public class FavoriteAddAddressController extends BaseController<b, d, FavoriteAddAddressView, e> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    b f700a;

    public int getLayout() {
        return R.layout.view_favorite_add_address;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        BaseApplication.get(layoutInflater.getContext()).getDataManagerComponent().inject(this);
        if (this.f700a.getConfig() != null) {
            k.initMap(layoutInflater.getContext(), this.f700a.getMapType(), this.f700a.getMapBoxToken(), this.f700a.getMapBoxStyleUrl());
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    public Class<b> getInteractorClass() {
        return b.class;
    }

    public NavController getNavigationController() {
        return getOvertheMapNavigationController();
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new d();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new e();
    }
}
