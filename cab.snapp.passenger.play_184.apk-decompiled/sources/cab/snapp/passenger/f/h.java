package cab.snapp.passenger.f;

import a.a.a.b;
import cab.snapp.passenger.data.models.PlaceLatLng;
import java.util.ArrayList;

public final class h {
    public static boolean shouldShowCenterOfTehranDialog(PlaceLatLng placeLatLng) {
        String geoHashStringWithCharacterPrecision = b.geoHashStringWithCharacterPrecision(placeLatLng.getLatitude(), placeLatLng.getLongitude(), 8);
        ArrayList arrayList = new ArrayList();
        arrayList.add("tnkdcjxf");
        arrayList.add("tnkdcjxc");
        arrayList.add("tnkdcjxb");
        arrayList.add("tnkdcjrz");
        arrayList.add("tnkdcm84");
        arrayList.add("tnkdcm81");
        arrayList.add("tnkdcm80");
        arrayList.add("tnkdcm2p");
        arrayList.add("tnkdcm86");
        arrayList.add("tnkdcm83");
        arrayList.add("tnkdcm82");
        arrayList.add("tnkdcm2r");
        if (geoHashStringWithCharacterPrecision != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (geoHashStringWithCharacterPrecision.equalsIgnoreCase((String) arrayList.get(i))) {
                    return true;
                }
            }
        }
        return false;
    }
}
