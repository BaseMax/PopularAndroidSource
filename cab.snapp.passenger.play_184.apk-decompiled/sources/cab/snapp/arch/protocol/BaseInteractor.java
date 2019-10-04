package cab.snapp.arch.protocol;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.lifecycle.ViewModel;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import io.reactivex.b.b;
import io.reactivex.b.c;
import java.lang.ref.SoftReference;

public abstract class BaseInteractor<R extends BaseRouter, P extends BasePresenter> extends ViewModel {
    protected Bundle arguments;
    protected b compositeDisposable;
    protected SoftReference<BaseController> controller;
    protected SoftReference<P> presenter;
    protected SoftReference<R> router;

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onApplicationRootBackPressed() {
    }

    public void onUnitPause() {
    }

    public void onUnitResume() {
    }

    public P getPresenter() {
        return (BasePresenter) this.presenter.get();
    }

    public void setPresenter(P p) {
        this.presenter = new SoftReference<>(p);
    }

    public R getRouter() {
        SoftReference<R> softReference = this.router;
        if (softReference != null) {
            return (BaseRouter) softReference.get();
        }
        return null;
    }

    public void setRouter(R r) {
        this.router = new SoftReference<>(r);
    }

    public BaseController getController() {
        return this.controller.get();
    }

    public void setController(BaseController baseController) {
        this.controller = new SoftReference<>(baseController);
    }

    public Activity getActivity() {
        if (getController() != null) {
            return getController().getActivity();
        }
        return null;
    }

    public NavController getNavigationController() {
        if (getActivity() == null || !(getActivity() instanceof BaseArchActivity)) {
            return null;
        }
        return ((BaseArchActivity) getActivity()).getNavigationController();
    }

    @Deprecated
    public void onReady() {
        if (this.compositeDisposable == null) {
            this.compositeDisposable = new b();
        }
    }

    public void onUnitCreated() {
        if (this.compositeDisposable == null) {
            this.compositeDisposable = new b();
        }
    }

    public final void onUnitStop() {
        disposeAll();
    }

    public void onDestroy() {
        disposeAll();
    }

    public void addDisposable(c cVar) {
        if (this.compositeDisposable == null) {
            this.compositeDisposable = new b();
        }
        this.compositeDisposable.add(cVar);
    }

    private void disposeAll() {
        b bVar = this.compositeDisposable;
        if (bVar != null) {
            bVar.dispose();
            this.compositeDisposable = null;
        }
    }

    private void clearAll() {
        b bVar = this.compositeDisposable;
        if (bVar != null) {
            bVar.clear();
        }
    }

    public void onCleared() {
        super.onCleared();
        onDestroy();
    }

    public Bundle getArguments() {
        return this.arguments;
    }

    public void setArguments(Bundle bundle) {
        this.arguments = bundle;
    }
}
