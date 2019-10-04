package cab.snapp.arch.protocol;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.arch.protocol.BaseView;
import java.lang.ref.SoftReference;

public abstract class BasePresenter<V extends BaseView, I extends BaseInteractor> {
    protected SoftReference<I> interactor;
    public V view;

    public V getView() {
        return this.view;
    }

    public void setView(V v) {
        this.view = v;
    }

    public I getInteractor() {
        return (BaseInteractor) this.interactor.get();
    }

    public void setInteractor(I i) {
        this.interactor = new SoftReference<>(i);
    }
}
