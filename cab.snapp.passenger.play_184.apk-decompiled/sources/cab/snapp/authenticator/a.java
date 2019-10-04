package cab.snapp.authenticator;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cab.snapp.authenticator.a.a.b;

final class a extends AbstractAccountAuthenticator {

    /* renamed from: a  reason: collision with root package name */
    private Context f172a;

    /* renamed from: b  reason: collision with root package name */
    private Class<?> f173b;

    public final Bundle confirmCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, Bundle bundle) throws NetworkErrorException {
        return null;
    }

    public final Bundle editProperties(AccountAuthenticatorResponse accountAuthenticatorResponse, String str) {
        return null;
    }

    public final Bundle hasFeatures(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String[] strArr) throws NetworkErrorException {
        return null;
    }

    public final Bundle updateCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
        return null;
    }

    a(Context context, Class<?> cls) {
        super(context);
        this.f172a = context;
        this.f173b = cls;
    }

    public final Bundle addAccount(AccountAuthenticatorResponse accountAuthenticatorResponse, String str, String str2, String[] strArr, Bundle bundle) throws NetworkErrorException {
        Intent intent = new Intent(this.f172a, this.f173b);
        intent.putExtra("AC_YPE", str);
        intent.putExtra("AUH_TYE", str2);
        intent.putExtra("IS_ANG_ACNT", true);
        intent.putExtra("accountAuthenticatorResponse", accountAuthenticatorResponse);
        if (bundle.containsKey("A_L_EM") && bundle.containsKey("A_L_PS")) {
            intent.putExtra("A_L_EM", bundle.getString("A_L_EM"));
            intent.putExtra("A_L_PS", bundle.getString("A_L_PS"));
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("intent", intent);
        return bundle2;
    }

    public final Bundle getAuthToken(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
        if (!str.equals("FULL_ACCESS_TOKEN")) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("errorMessage", "invalid authTokenType");
            return bundle2;
        }
        String peekAuthToken = b.builder().accountModule(new cab.snapp.authenticator.a.b.a(this.f172a)).build().provideAccountManager().peekAuthToken(account, str);
        if (!TextUtils.isEmpty(peekAuthToken)) {
            Bundle bundle3 = new Bundle();
            bundle3.putString("authAccount", account.name);
            bundle3.putString("accountType", account.type);
            bundle3.putString("authtoken", peekAuthToken);
            return bundle3;
        }
        Intent intent = new Intent(this.f172a, this.f173b);
        intent.putExtra("accountAuthenticatorResponse", accountAuthenticatorResponse);
        intent.putExtra("AC_YPE", account.type);
        intent.putExtra("AUH_TYE", str);
        intent.putExtra("ANT_NME", account.name);
        Bundle bundle4 = new Bundle();
        bundle4.putParcelable("intent", intent);
        return bundle4;
    }

    public final String getAuthTokenLabel(String str) {
        if ("FULL_ACCESS_TOKEN".equals(str)) {
            return "Full Access to an SNAPP account";
        }
        return str + " (Label)";
    }
}
