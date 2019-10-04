package cab.snapp.arch.protocol;

import cab.snapp.arch.protocol.BasePresenter;

public interface BaseView<P extends BasePresenter> {
    void setPresenter(P p);
}
