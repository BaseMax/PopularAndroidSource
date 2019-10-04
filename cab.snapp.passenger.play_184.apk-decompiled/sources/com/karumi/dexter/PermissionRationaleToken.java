package com.karumi.dexter;

final class PermissionRationaleToken implements PermissionToken {
    private final DexterInstance dexterInstance;
    private boolean isTokenResolved = false;

    PermissionRationaleToken(DexterInstance dexterInstance2) {
        this.dexterInstance = dexterInstance2;
    }

    public final void cancelPermissionRequest() {
        if (!this.isTokenResolved) {
            this.dexterInstance.onCancelPermissionRequest();
            this.isTokenResolved = true;
        }
    }

    public final void continuePermissionRequest() {
        if (!this.isTokenResolved) {
            this.dexterInstance.onContinuePermissionRequest();
            this.isTokenResolved = true;
        }
    }
}
