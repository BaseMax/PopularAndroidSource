package cab.snapp.passenger.data.models;

import com.google.gson.a.c;

public class ABTestBean {
    @c("emq")
    private boolean emq;
    @c("eta")
    private boolean eta;
    @c("fake_driver_apps")
    private boolean fakeDriverApps;
    @c("force_update_driver")
    private boolean forceUpdateDriver;
    @c("golchin")
    private boolean golchin;
    @c("map")
    private boolean map;
    @c("number_masking_test")
    private boolean numberMaskingTest;
    @c("snapp_group")
    private boolean snappGroup;
    @c("snapp_group_0")
    private boolean snappGroup0;

    public boolean isEta() {
        return this.eta;
    }

    public void setEta(boolean z) {
        this.eta = z;
    }

    public boolean isMap() {
        return this.map;
    }

    public void setMap(boolean z) {
        this.map = z;
    }

    public boolean isSnappGroup() {
        return this.snappGroup;
    }

    public void setSnappGroup(boolean z) {
        this.snappGroup = z;
    }

    public boolean isNumberMaskingTest() {
        return this.numberMaskingTest;
    }

    public void setNumberMaskingTest(boolean z) {
        this.numberMaskingTest = z;
    }

    public boolean isFakeDriverApps() {
        return this.fakeDriverApps;
    }

    public void setFakeDriverApps(boolean z) {
        this.fakeDriverApps = z;
    }

    public boolean isSnappGroup0() {
        return this.snappGroup0;
    }

    public void setSnappGroup0(boolean z) {
        this.snappGroup0 = z;
    }

    public boolean isForceUpdateDriver() {
        return this.forceUpdateDriver;
    }

    public void setForceUpdateDriver(boolean z) {
        this.forceUpdateDriver = z;
    }

    public boolean isGolchin() {
        return this.golchin;
    }

    public void setGolchin(boolean z) {
        this.golchin = z;
    }

    public boolean isEmq() {
        return this.emq;
    }

    public void setEmq(boolean z) {
        this.emq = z;
    }
}
