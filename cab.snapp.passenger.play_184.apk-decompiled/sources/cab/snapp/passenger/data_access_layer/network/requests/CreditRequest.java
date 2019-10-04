package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class CreditRequest extends d {
    @c("place")
    private String place;

    public enum PLACE {
        JEK_HOME("jek-home"),
        JEK_TOPUP("jek-topup"),
        SIDE_MENU("sidemenu"),
        SIDE_MENU_TOPUP("sidemenu-topup"),
        CREDIT_HISTORY("credit_history");
        
        public String string;

        private PLACE(String str) {
            this.string = str;
        }
    }

    public String getPlace() {
        return this.place;
    }

    public void setPlace(String str) {
        this.place = str;
    }
}
