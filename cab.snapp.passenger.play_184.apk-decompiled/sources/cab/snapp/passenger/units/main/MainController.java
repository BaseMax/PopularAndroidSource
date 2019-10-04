package cab.snapp.passenger.units.main;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.f.k;
import cab.snapp.passenger.play.R;
import javax.inject.Inject;

public class MainController extends BaseController<b, d, MainView, f> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    b f877a;

    public int getLayout() {
        return R.layout.view_main;
    }

    public boolean handleBack() {
        return true;
    }

    public void onViewAttached() {
    }

    public void onViewDetached() {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        BaseApplication.get(layoutInflater.getContext()).getDataManagerComponent().inject(this);
        if (this.f877a.getConfig() != null) {
            k.initMap(layoutInflater.getContext(), this.f877a.getMapType(), this.f877a.getMapBoxToken(), this.f877a.getMapBoxStyleUrl());
        }
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    public Class<b> getInteractorClass() {
        return b.class;
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new d();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new f();
    }
}
