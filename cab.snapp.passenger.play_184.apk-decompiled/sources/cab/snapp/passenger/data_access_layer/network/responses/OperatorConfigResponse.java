package cab.snapp.passenger.data_access_layer.network.responses;

import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.snappnetwork.model.f;
import java.util.ArrayList;
import java.util.Iterator;

public class OperatorConfigResponse extends f {
    private ArrayList<ChargePackage> packages;

    public ArrayList<ChargePackage> getPackages() {
        return this.packages;
    }

    public void setPackages(ArrayList<ChargePackage> arrayList) {
        this.packages = arrayList;
    }

    public ChargePackage getDefaultPackage() {
        if (getPackages() == null || getPackages().size() <= 0) {
            return null;
        }
        Iterator<ChargePackage> it = getPackages().iterator();
        while (it.hasNext()) {
            ChargePackage next = it.next();
            if (next.isDefault()) {
                return next;
            }
        }
        return getPackages().get(0);
    }
}
