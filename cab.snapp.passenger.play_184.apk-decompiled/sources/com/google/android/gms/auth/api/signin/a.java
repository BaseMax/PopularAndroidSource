package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.e;
import com.google.android.gms.auth.api.signin.internal.n;
import com.google.android.gms.c.f;
import com.google.android.gms.c.i;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.z;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

public final class a {
    private a() {
    }

    private static Intent a(Activity activity, GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        GoogleSignInOptions.a aVar = new GoogleSignInOptions.a();
        if (scopeArr.length > 0) {
            aVar.requestScopes(scopeArr[0], scopeArr);
        }
        if (googleSignInAccount != null && !TextUtils.isEmpty(googleSignInAccount.getEmail())) {
            aVar.setAccountName(googleSignInAccount.getEmail());
        }
        return new c(activity, aVar.build()).getSignInIntent();
    }

    private static Scope[] a(List<Scope> list) {
        return list == null ? new Scope[0] : (Scope[]) list.toArray(new Scope[list.size()]);
    }

    public static GoogleSignInAccount getAccountForExtension(Context context, d dVar) {
        ap.checkNotNull(context, "please provide a valid Context object");
        ap.checkNotNull(dVar, "please provide valid GoogleSignInOptionsExtension");
        GoogleSignInAccount lastSignedInAccount = getLastSignedInAccount(context);
        if (lastSignedInAccount == null) {
            lastSignedInAccount = GoogleSignInAccount.zzaaz();
        }
        return lastSignedInAccount.zza(a(dVar.getImpliedScopes()));
    }

    public static GoogleSignInAccount getAccountForScopes(Context context, Scope scope, Scope... scopeArr) {
        ap.checkNotNull(context, "please provide a valid Context object");
        ap.checkNotNull(scope, "please provide at least one valid scope");
        GoogleSignInAccount lastSignedInAccount = getLastSignedInAccount(context);
        if (lastSignedInAccount == null) {
            lastSignedInAccount = GoogleSignInAccount.zzaaz();
        }
        lastSignedInAccount.zza(scope);
        lastSignedInAccount.zza(scopeArr);
        return lastSignedInAccount;
    }

    public static c getClient(Activity activity, GoogleSignInOptions googleSignInOptions) {
        return new c(activity, (GoogleSignInOptions) ap.checkNotNull(googleSignInOptions));
    }

    public static c getClient(Context context, GoogleSignInOptions googleSignInOptions) {
        return new c(context, (GoogleSignInOptions) ap.checkNotNull(googleSignInOptions));
    }

    public static GoogleSignInAccount getLastSignedInAccount(Context context) {
        return n.zzbr(context).zzabl();
    }

    public static f<GoogleSignInAccount> getSignedInAccountFromIntent(Intent intent) {
        e signInResultFromIntent = e.getSignInResultFromIntent(intent);
        return signInResultFromIntent == null ? i.forException(z.zzy(Status.zzfnk)) : (!signInResultFromIntent.getStatus().isSuccess() || signInResultFromIntent.getSignInAccount() == null) ? i.forException(z.zzy(signInResultFromIntent.getStatus())) : i.forResult(signInResultFromIntent.getSignInAccount());
    }

    public static boolean hasPermissions(GoogleSignInAccount googleSignInAccount, d dVar) {
        ap.checkNotNull(dVar, "Please provide a non-null GoogleSignInOptionsExtension");
        return hasPermissions(googleSignInAccount, a(dVar.getImpliedScopes()));
    }

    public static boolean hasPermissions(GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        if (googleSignInAccount == null) {
            return false;
        }
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, scopeArr);
        return googleSignInAccount.getGrantedScopes().containsAll(hashSet);
    }

    public static void requestPermissions(Activity activity, int i, GoogleSignInAccount googleSignInAccount, d dVar) {
        ap.checkNotNull(activity, "Please provide a non-null Activity");
        ap.checkNotNull(dVar, "Please provide a non-null GoogleSignInOptionsExtension");
        requestPermissions(activity, i, googleSignInAccount, a(dVar.getImpliedScopes()));
    }

    public static void requestPermissions(Activity activity, int i, GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        ap.checkNotNull(activity, "Please provide a non-null Activity");
        ap.checkNotNull(scopeArr, "Please provide at least one scope");
        activity.startActivityForResult(a(activity, googleSignInAccount, scopeArr), i);
    }

    public static void requestPermissions(Fragment fragment, int i, GoogleSignInAccount googleSignInAccount, d dVar) {
        ap.checkNotNull(fragment, "Please provide a non-null Fragment");
        ap.checkNotNull(dVar, "Please provide a non-null GoogleSignInOptionsExtension");
        requestPermissions(fragment, i, googleSignInAccount, a(dVar.getImpliedScopes()));
    }

    public static void requestPermissions(Fragment fragment, int i, GoogleSignInAccount googleSignInAccount, Scope... scopeArr) {
        ap.checkNotNull(fragment, "Please provide a non-null Fragment");
        ap.checkNotNull(scopeArr, "Please provide at least one scope");
        fragment.startActivityForResult(a(fragment.getActivity(), googleSignInAccount, scopeArr), i);
    }
}
