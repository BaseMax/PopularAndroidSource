package cab.snapp.passenger.data.models;

import com.google.gson.a.c;
import java.util.List;

public class AvailableServiceTypes {
    @c("is_enabled")
    private boolean isEnabled;
    @c("type")
    private int type;
    @c("vehicles")
    private List<Vehicle> vehicles;

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    public List<Vehicle> getVehicles() {
        return this.vehicles;
    }

    public void setVehicles(List<Vehicle> list) {
        this.vehicles = list;
    }
}
