package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class ArrivalEta {
    @c("is_enabled")
    private boolean isEnabled;
    @c("reload_interval")
    private int reloadInterval;

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    public int getReloadInterval() {
        return this.reloadInterval;
    }

    public void setReloadInterval(int i) {
        this.reloadInterval = i;
    }
}
