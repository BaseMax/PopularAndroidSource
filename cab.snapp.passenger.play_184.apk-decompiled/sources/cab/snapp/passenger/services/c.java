package cab.snapp.passenger.services;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import cab.snapp.passenger.b.a;
import cab.snapp.passenger.data.models.DriverInfo;
import cab.snapp.passenger.data.models.PlateNumber;
import cab.snapp.passenger.f.m;
import com.webengage.sdk.android.actions.render.PushNotificationData;
import org.eclipse.paho.a.a.w;

public final class c implements a, b {
    public final boolean onRender(Context context, PushNotificationData pushNotificationData) {
        a(pushNotificationData);
        return true;
    }

    public final boolean onRerender(Context context, PushNotificationData pushNotificationData, Bundle bundle) {
        a(pushNotificationData);
        return true;
    }

    private static void a(PushNotificationData pushNotificationData) {
        Bundle customData = pushNotificationData.getCustomData();
        if (customData != null && (customData.getString("event_type", "").equals(a.DRIVER_ACCEPTED_RIDE_EVENT) || customData.getString("event_type", "").equals(a.DRIVER_ARRIVED_EVENT))) {
            DriverInfo driverInfo = new DriverInfo();
            String[] split = customData.getString("plate_data", "").split(w.MULTI_LEVEL_WILDCARD);
            PlateNumber plateNumber = new PlateNumber();
            if (split.length > 0) {
                plateNumber.setType(Integer.parseInt(split[0]));
                plateNumber.setPartA(split[1]);
                plateNumber.setCharacter(split[2]);
                plateNumber.setPartB(split[3]);
                plateNumber.setIranId(split[4]);
            }
            driverInfo.setPlateNumber(plateNumber);
            String string = customData.getString("service_type", "1");
            driverInfo.setVehicleModel(customData.getString("car_model"));
            driverInfo.setImageUrl(customData.getString("driver_image"));
            driverInfo.setPlateNumber(plateNumber);
            int i = customData.getString("event_type", "").equals(a.DRIVER_ACCEPTED_RIDE_EVENT) ? 5001 : 5002;
            if (Build.VERSION.SDK_INT >= 21) {
                m.getInstance().handleDriverInfoNotification(i, Integer.parseInt(string), driverInfo, pushNotificationData.getContentText(), new long[]{1000, 1000, 1000, 1000});
                return;
            }
            m.getInstance().handleNotification(i, "", pushNotificationData.getContentText(), new long[]{1000, 1000, 1000, 1000});
        }
    }
}
