package com.google.android.gms.auth.api.signin;

import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.h;

public interface b {
    public static final String EXTRA_SIGN_IN_ACCOUNT = "signInAccount";

    Intent getSignInIntent(f fVar);

    e getSignInResultFromIntent(Intent intent);

    h<Status> revokeAccess(f fVar);

    h<Status> signOut(f fVar);

    g<e> silentSignIn(f fVar);
}
