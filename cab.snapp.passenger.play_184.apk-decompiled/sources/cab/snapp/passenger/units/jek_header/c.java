package cab.snapp.passenger.units.jek_header;

import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.j;
import cab.snapp.passenger.f.g;

public final class c extends BasePresenter<JekHeaderView, a> {
    public final void addCreditClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).showCreditBottomSheet();
        }
    }

    public final void setCurrentCredit(long j) {
        if (getView() != null) {
            if (j <= 0) {
                ((JekHeaderView) getView()).showAddCreditLayout();
                return;
            }
            String changeNumbersBasedOnCurrentLocale = g.changeNumbersBasedOnCurrentLocale(String.valueOf(j.formatLong(j)));
            ((JekHeaderView) getView()).hideAddCreditLayout();
            ((JekHeaderView) getView()).creditTextView.setText(changeNumbersBasedOnCurrentLocale);
        }
    }
}
