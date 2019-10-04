package com.karumi.dexter.listener;

public final class PermissionDeniedResponse {
    private final boolean permanentlyDenied;
    private final PermissionRequest requestedPermission;

    public PermissionDeniedResponse(PermissionRequest permissionRequest, boolean z) {
        this.requestedPermission = permissionRequest;
        this.permanentlyDenied = z;
    }

    public static PermissionDeniedResponse from(String str, boolean z) {
        return new PermissionDeniedResponse(new PermissionRequest(str), z);
    }

    public final String getPermissionName() {
        return this.requestedPermission.getName();
    }

    public final PermissionRequest getRequestedPermission() {
        return this.requestedPermission;
    }

    public final boolean isPermanentlyDenied() {
        return this.permanentlyDenied;
    }
}
