package cab.snapp.passenger.f;

import android.app.PendingIntent;
import android.app.TaskStackBuilder;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RemoteViews;
import cab.snapp.c.e;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.DriverInfo;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappPlateNumberView;
import com.bumptech.glide.e.a;
import com.bumptech.glide.e.a.i;
import com.bumptech.glide.e.c;
import com.bumptech.glide.e.h;
import java.util.concurrent.ExecutionException;

public final class m {

    /* renamed from: a  reason: collision with root package name */
    private static m f582a;

    private m() {
    }

    public static m getInstance() {
        if (f582a == null) {
            f582a = new m();
        }
        return f582a;
    }

    public final void handleNotification(int i, String str, String str2, long[] jArr) {
        if (BaseApplication.notificationManager != null) {
            BaseApplication.notificationManager.cancelAllNotifications();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("snapp://open"));
            TaskStackBuilder create = TaskStackBuilder.create(BaseApplication.getContext());
            create.addNextIntentWithParentStack(intent);
            BaseApplication.notificationManager.showNotificationOnRideChannel(null, i, str, str2, R.drawable.ic_notification, create.getPendingIntent(0, 134217728), jArr);
        }
    }

    public final void handleDriverInfoNotification(int i, int i2, DriverInfo driverInfo, String str, long[] jArr) {
        Bitmap bitmap;
        Bitmap bitmap2;
        int i3 = i2;
        if (BaseApplication.notificationManager != null) {
            BaseApplication.notificationManager.cancelAllNotifications();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("snapp://open"));
            TaskStackBuilder create = TaskStackBuilder.create(BaseApplication.getContext());
            create.addNextIntentWithParentStack(intent);
            PendingIntent pendingIntent = create.getPendingIntent(0, 134217728);
            RemoteViews remoteViews = new RemoteViews(BaseApplication.getContext().getPackageName(), R.layout.view_notification_driver_accepted);
            LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(BaseApplication.getContext()).inflate(R.layout.view_driver_assigned_notification_view_number_plate, null, false);
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            boolean z = i3 == 5 || i3 == 7;
            int type = driverInfo.getPlateNumber().getType();
            String partA = driverInfo.getPlateNumber().getPartA();
            new SnappPlateNumberView.a(BaseApplication.getContext()).setViewFrame(linearLayout).setZoneType(type).setIsMotorcycle(z).setMainNumberPartA(partA).setMainNumberPartB(driverInfo.getPlateNumber().getPartB()).setIranId(driverInfo.getPlateNumber().getIranId()).setMainCharacter(driverInfo.getPlateNumber().getCharacter()).build();
            if (linearLayout.getMeasuredHeight() <= 0) {
                linearLayout.measure(View.MeasureSpec.makeMeasureSpec((int) e.convertDpToPixel(BaseApplication.getContext(), 283.0f), 0), View.MeasureSpec.makeMeasureSpec((int) e.convertDpToPixel(BaseApplication.getContext(), 60.0f), 0));
                bitmap = Bitmap.createBitmap(linearLayout.getMeasuredWidth(), linearLayout.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap);
                linearLayout.layout(0, 0, (int) e.convertDpToPixel(BaseApplication.getContext(), 283.0f), (int) e.convertDpToPixel(BaseApplication.getContext(), 60.0f));
                linearLayout.draw(canvas);
            } else {
                bitmap = null;
            }
            remoteViews.setBitmap(R.id.driver_assigned_notification_view_number_plate, "setImageBitmap", bitmap);
            remoteViews.setTextViewText(R.id.driver_assigned_notification_view_text_view, str);
            if (!z) {
                remoteViews.setTextViewText(R.id.driver_assigned_notification_view_cab_type_text_view, driverInfo.getVehicleModel());
            } else {
                remoteViews.setTextViewText(R.id.driver_assigned_notification_view_cab_type_text_view, "");
            }
            c submit = com.bumptech.glide.c.with(BaseApplication.getContext()).asBitmap().load(driverInfo.getImageUrl()).apply((a) h.circleCropTransform()).submit();
            try {
                bitmap2 = (Bitmap) submit.get();
            } catch (InterruptedException | ExecutionException e) {
                e.printStackTrace();
                bitmap2 = bitmap;
            }
            com.bumptech.glide.c.with(BaseApplication.getContext()).clear((i<?>) submit);
            remoteViews.setBitmap(R.id.driver_assigned_notification_driver_avatar, "setImageBitmap", bitmap2);
            BaseApplication.notificationManager.showNotificationWithCustomLayoutOnRideChannel(null, i, str, str, R.drawable.ic_notification, pendingIntent, jArr, remoteViews, null);
        }
    }
}
