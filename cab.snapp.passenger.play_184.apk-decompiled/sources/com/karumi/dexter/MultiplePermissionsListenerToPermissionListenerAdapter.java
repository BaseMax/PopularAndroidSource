package com.karumi.dexter;

import com.karumi.dexter.listener.PermissionDeniedResponse;
import com.karumi.dexter.listener.PermissionGrantedResponse;
import com.karumi.dexter.listener.PermissionRequest;
import com.karumi.dexter.listener.multi.MultiplePermissionsListener;
import com.karumi.dexter.listener.single.PermissionListener;
import java.util.List;

final class MultiplePermissionsListenerToPermissionListenerAdapter implements MultiplePermissionsListener {
    private final PermissionListener listener;

    MultiplePermissionsListenerToPermissionListenerAdapter(PermissionListener permissionListener) {
        this.listener = permissionListener;
    }

    public final void onPermissionRationaleShouldBeShown(List<PermissionRequest> list, PermissionToken permissionToken) {
        this.listener.onPermissionRationaleShouldBeShown(list.get(0), permissionToken);
    }

    public final void onPermissionsChecked(MultiplePermissionsReport multiplePermissionsReport) {
        List<PermissionDeniedResponse> deniedPermissionResponses = multiplePermissionsReport.getDeniedPermissionResponses();
        List<PermissionGrantedResponse> grantedPermissionResponses = multiplePermissionsReport.getGrantedPermissionResponses();
        if (!deniedPermissionResponses.isEmpty()) {
            this.listener.onPermissionDenied(deniedPermissionResponses.get(0));
            return;
        }
        this.listener.onPermissionGranted(grantedPermissionResponses.get(0));
    }
}
