package cab.snapp.passenger.units.second_destination;

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

public class SecondDestinationController extends BaseController<b, d, SecondDestinationView, f> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    b f1162a;

    public int getLayout() {
        return R.layout.view_second_destination;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        BaseApplication.get(layoutInflater.getContext()).getDataManagerComponent().inject(this);
        if (this.f1162a.getConfig() != null) {
            k.initMap(layoutInflater.getContext(), this.f1162a.getMapType(), this.f1162a.getMapBoxToken(), this.f1162a.getMapBoxStyleUrl());
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
        return new f();
    }
}
