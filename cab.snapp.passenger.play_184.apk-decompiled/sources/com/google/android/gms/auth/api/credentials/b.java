package com.google.android.gms.auth.api.credentials;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;

public interface b {
    public static final int ACTIVITY_RESULT_ADD_ACCOUNT = 1000;
    public static final int ACTIVITY_RESULT_NO_HINTS_AVAILABLE = 1002;
    public static final int ACTIVITY_RESULT_OTHER_ACCOUNT = 1001;
    public static final int CREDENTIAL_PICKER_REQUEST_CODE = 2000;

    h<Status> delete(f fVar, Credential credential);

    h<Status> disableAutoSignIn(f fVar);

    PendingIntent getHintPickerIntent(f fVar, HintRequest hintRequest);

    h<a> request(f fVar, CredentialRequest credentialRequest);

    h<Status> save(f fVar, Credential credential);
}
