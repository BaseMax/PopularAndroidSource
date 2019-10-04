package cab.snapp.passenger.f;

import android.content.Intent;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.b;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final a f572a;

    /* renamed from: b  reason: collision with root package name */
    private final BaseController f573b;
    private final c c;

    public interface a {
        void onGoogleTokenError(String str);

        void onGoogleTokenSucceed(String str);
    }

    public i(BaseController baseController, a aVar, c cVar) {
        this.f573b = baseController;
        this.f572a = aVar;
        this.c = cVar;
    }

    public final void loginOrSignUpWithGoogle() {
        BaseController baseController = this.f573b;
        if (baseController == null || baseController.getContext() == null) {
            a aVar = this.f572a;
            if (aVar != null) {
                aVar.onGoogleTokenError("Context was null!");
            }
            return;
        }
        this.f573b.startActivityForResult(com.google.android.gms.auth.api.signin.a.getClient(this.f573b.getContext(), new GoogleSignInOptions.a(GoogleSignInOptions.DEFAULT_SIGN_IN).requestIdToken(this.f573b.getString(R.string.firebase_server_token)).requestEmail().build()).getSignInIntent(), 133);
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 133) {
            try {
                GoogleSignInAccount result = com.google.android.gms.auth.api.signin.a.getSignedInAccountFromIntent(intent).getResult(b.class);
                if (this.f572a != null) {
                    this.f572a.onGoogleTokenSucceed(result.getIdToken());
                }
            } catch (b e) {
                a aVar = this.f572a;
                if (aVar != null) {
                    aVar.onGoogleTokenError(e.getMessage());
                }
                com.a.a.a.logException(e);
            }
        }
    }
}
