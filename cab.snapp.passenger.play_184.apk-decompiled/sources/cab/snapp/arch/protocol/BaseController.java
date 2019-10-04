package cab.snapp.arch.protocol;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProviders;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.arch.protocol.BaseView;
import java.lang.ref.SoftReference;

public abstract class BaseController<I extends BaseInteractor<AR, P>, P extends BasePresenter<V, I>, V extends BaseView<P>, AR extends BaseRouter<I>> extends Fragment implements a {
    protected I interactor;
    protected SoftReference<P> presenter;
    protected AR router;

    /* access modifiers changed from: protected */
    public abstract P buildPresenter();

    /* access modifiers changed from: protected */
    public abstract AR buildRouter();

    public abstract Class<I> getInteractorClass();

    /* access modifiers changed from: protected */
    public abstract int getLayout();

    public boolean handleBack() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void onViewAttached() {
    }

    /* access modifiers changed from: protected */
    public void onViewDetached() {
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setupInteractor();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(getLayout(), viewGroup, false);
    }

    public void onResume() {
        super.onResume();
        I i = this.interactor;
        if (i != null) {
            i.onUnitResume();
        }
    }

    public void onPause() {
        super.onPause();
        I i = this.interactor;
        if (i != null) {
            i.onUnitPause();
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setupInteractor();
        setupRouter();
        setupPresenter((BaseView) view);
        this.interactor.onReady();
        this.interactor.onUnitCreated();
    }

    private void setupRouter() {
        if (this.router == null) {
            AR buildRouter = buildRouter();
            buildRouter.setFragmentManager(getChildFragmentManager());
            buildRouter.setNavigationController(getNavigationController());
            buildRouter.setInteractor(this.interactor);
            this.interactor.setRouter(buildRouter);
            this.router = buildRouter;
        }
    }

    public NavController getOvertheMapNavigationController() {
        if (getActivity() != null && (getActivity() instanceof BaseArchActivity)) {
            return ((BaseArchActivity) getActivity()).getOverTheMapNavController();
        }
        throw new IllegalStateException("Base Activity must extend BaseArchActivity");
    }

    public NavController getNavigationController() {
        if (getActivity() != null && (getActivity() instanceof BaseArchActivity)) {
            return ((BaseArchActivity) getActivity()).getNavigationController();
        }
        throw new IllegalStateException("Base Activity must extend BaseArchActivity");
    }

    private void setupPresenter(V v) {
        BasePresenter basePresenter;
        SoftReference<P> softReference = this.presenter;
        if (softReference == null || softReference.get() == null) {
            basePresenter = buildPresenter();
        } else {
            basePresenter = (BasePresenter) this.presenter.get();
        }
        basePresenter.setView(v);
        I i = this.interactor;
        if (i != null) {
            i.setPresenter(basePresenter);
            basePresenter.setInteractor(this.interactor);
        }
        v.setPresenter(basePresenter);
        this.presenter = new SoftReference<>(basePresenter);
    }

    private void setupInteractor() {
        if (this.interactor == null) {
            I i = (BaseInteractor) ViewModelProviders.of((Fragment) this).get(getInteractorClass());
            i.setArguments(getArguments());
            i.setController(this);
            this.interactor = i;
        }
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        onViewAttached();
    }

    public void onStart() {
        super.onStart();
        if (getActivity() != null && (getActivity() instanceof BaseArchActivity) && handleBack()) {
            ((BaseArchActivity) getActivity()).addBackPressedListener(this);
        }
    }

    public void onStop() {
        super.onStop();
        if (getActivity() != null && (getActivity() instanceof BaseArchActivity) && handleBack()) {
            ((BaseArchActivity) getActivity()).removeBackPressedListener(this);
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        I i = this.interactor;
        if (i != null) {
            i.onUnitStop();
        }
    }

    public void onDetach() {
        super.onDetach();
        onViewDetached();
    }

    public void onDestroy() {
        super.onDestroy();
        this.presenter = null;
        this.router = null;
    }

    public P getControllerPresenter() {
        if (this.presenter == null) {
            this.presenter = new SoftReference<>(buildPresenter());
        }
        return (BasePresenter) this.presenter.get();
    }

    public V getControllerView() {
        return (BaseView) getView();
    }

    public AR getControllerRouter() {
        if (this.router == null) {
            this.router = buildRouter();
        }
        return this.router;
    }

    public I getControllerInteractor() {
        return this.interactor;
    }

    public BaseInteractor getParentInteractor() {
        if (getParentFragment() == null || !(getParentFragment() instanceof BaseController)) {
            return null;
        }
        return (BaseInteractor) ViewModelProviders.of(getParentFragment()).get(((BaseController) getParentFragment()).getInteractorClass());
    }

    public BaseController getParentController() {
        if (getParentFragment() == null || !(getParentFragment() instanceof BaseController)) {
            return null;
        }
        return (BaseController) getParentFragment();
    }

    public Context getContext() {
        return getActivity();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        I i3 = this.interactor;
        if (i3 != null) {
            i3.onActivityResult(i, i2, intent);
        }
    }

    public void onApplicationRootBackPressed() {
        I i = this.interactor;
        if (i != null) {
            i.onApplicationRootBackPressed();
        }
    }

    public boolean hasParent() {
        return getParentFragment() != null;
    }

    public void removeFromBackPress() {
        if (getActivity() instanceof BaseArchActivity) {
            ((BaseArchActivity) getActivity()).removeBackPressedListener(this);
        }
    }

    public void removeAllFromBackPress() {
        if (getActivity() instanceof BaseArchActivity) {
            ((BaseArchActivity) getActivity()).removeAllBackPressListener();
        }
    }

    public void doRemoveFromBackPressed() {
        removeFromBackPress();
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }
}
