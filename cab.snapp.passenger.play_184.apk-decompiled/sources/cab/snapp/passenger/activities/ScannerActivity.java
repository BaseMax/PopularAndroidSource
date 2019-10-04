package cab.snapp.passenger.activities;

import android.app.Activity;
import android.os.Bundle;
import android.widget.FrameLayout;
import cab.snapp.c.g;
import cab.snapp.passenger.data_access_layer.a.c;
import cab.snapp.passenger.play.R;
import com.google.zxing.l;
import java.util.ArrayList;
import me.dm7.barcodescanner.zxing.ZXingScannerView;

public class ScannerActivity extends Activity implements ZXingScannerView.a {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public ZXingScannerView f432a;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_scanner);
        this.f432a = new ZXingScannerView(this);
        ((FrameLayout) findViewById(R.id.activity_scanner_container)).addView(this.f432a);
        g.getPermission(this, new String[]{"android.permission.CAMERA"}, new g.a() {
            public final void onPermissionDenied(ArrayList<String> arrayList) {
            }

            public final void onPermissionGranted() {
                ScannerActivity.this.f432a.startCamera();
            }
        }, new String[0]);
    }

    public void onResume() {
        super.onResume();
        this.f432a.setResultHandler(this);
        if (g.isPermissionGranted(this, "android.permission.CAMERA")) {
            this.f432a.startCamera();
        }
    }

    public void onPause() {
        super.onPause();
        this.f432a.stopCamera();
    }

    public void handleResult(l lVar) {
        if (!(lVar == null || lVar.getText() == null)) {
            c.getInstance().emitToPrivateChannel(c.getInstance().getPrivateChannelId("PRIVATE_CHANNEL_FOR_SCANNER"), lVar.getText());
        }
        finish();
    }
}
