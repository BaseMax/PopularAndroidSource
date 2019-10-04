package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.FragmentActivity;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.auth.api.signin.b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;

public class SignInHubActivity extends FragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f2662a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2663b = false;
    private SignInConfiguration c;
    private boolean d;
    /* access modifiers changed from: private */
    public int e;
    /* access modifiers changed from: private */
    public Intent f;

    class a implements LoaderManager.LoaderCallbacks<Void> {
        private a() {
        }

        /* synthetic */ a(SignInHubActivity signInHubActivity, byte b2) {
            this();
        }

        public final Loader<Void> onCreateLoader(int i, Bundle bundle) {
            return new b(SignInHubActivity.this, f.zzagr());
        }

        public final /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
            SignInHubActivity signInHubActivity = SignInHubActivity.this;
            signInHubActivity.setResult(signInHubActivity.e, SignInHubActivity.this.f);
            SignInHubActivity.this.finish();
        }

        public final void onLoaderReset(Loader<Void> loader) {
        }
    }

    private final void a() {
        getSupportLoaderManager().initLoader(0, null, new a(this, (byte) 0));
        f2662a = false;
    }

    private final void a(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f2662a = false;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.f2663b) {
            setResult(0);
            if (i == 40962) {
                if (intent != null) {
                    SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra(b.EXTRA_SIGN_IN_ACCOUNT);
                    if (signInAccount != null && signInAccount.getGoogleSignInAccount() != null) {
                        GoogleSignInAccount googleSignInAccount = signInAccount.getGoogleSignInAccount();
                        n.zzbr(this).zza(this.c.zzabr(), googleSignInAccount);
                        intent.removeExtra(b.EXTRA_SIGN_IN_ACCOUNT);
                        intent.putExtra("googleSignInAccount", googleSignInAccount);
                        this.d = true;
                        this.e = i2;
                        this.f = intent;
                        a();
                        return;
                    } else if (intent.hasExtra("errorCode")) {
                        a(intent.getIntExtra("errorCode", 8));
                        return;
                    }
                }
                a(8);
            }
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        if ("com.google.android.gms.auth.NO_IMPL".equals(action)) {
            a(12500);
        } else if (f2662a) {
            setResult(0);
            a(12502);
        } else {
            f2662a = true;
            if (action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") || action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
                this.c = (SignInConfiguration) intent.getBundleExtra("config").getParcelable("config");
                if (this.c == null) {
                    setResult(0);
                    finish();
                } else if (bundle == null) {
                    Intent intent2 = new Intent(action);
                    intent2.setPackage(action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") ? "com.google.android.gms" : getPackageName());
                    intent2.putExtra("config", this.c);
                    try {
                        startActivityForResult(intent2, 40962);
                    } catch (ActivityNotFoundException unused) {
                        this.f2663b = true;
                        a(17);
                    }
                } else {
                    this.d = bundle.getBoolean("signingInGoogleApiClients");
                    if (this.d) {
                        this.e = bundle.getInt("signInResultCode");
                        this.f = (Intent) bundle.getParcelable("signInResultData");
                        a();
                    }
                }
            } else {
                String valueOf = String.valueOf(intent.getAction());
                if (valueOf.length() != 0) {
                    "Unknown action: ".concat(valueOf);
                } else {
                    new String("Unknown action: ");
                }
                finish();
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.d);
        if (this.d) {
            bundle.putInt("signInResultCode", this.e);
            bundle.putParcelable("signInResultData", this.f);
        }
    }
}
