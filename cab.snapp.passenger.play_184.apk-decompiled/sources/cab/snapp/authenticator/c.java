package cab.snapp.authenticator;

import android.accounts.Account;
import android.accounts.AccountAuthenticatorActivity;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import java.io.IOException;

public final class c {
    private static c c;

    /* renamed from: a  reason: collision with root package name */
    Class<?> f179a;

    /* renamed from: b  reason: collision with root package name */
    AccountManager f180b;
    private Context d;
    private String e = null;
    private String f = null;
    private Account g = null;
    private cab.snapp.authenticator.a.a.a h = null;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Context f189a;

        /* renamed from: b  reason: collision with root package name */
        private Class<?> f190b;

        public final a with(Context context) {
            this.f189a = context;
            return this;
        }

        public final a setAuthenticatorActivity(Class<?> cls) {
            this.f190b = cls;
            return this;
        }

        public final c build() {
            Class<?> cls = this.f190b;
            b.f178a = cls;
            return new c(this.f189a, cls);
        }
    }

    public interface b {
        void onTokenReceived(String str);
    }

    public c(Context context, Class<?> cls) {
        String str;
        String str2 = null;
        this.f179a = cls;
        this.d = context;
        if (context != null) {
            int identifier = context.getResources().getIdentifier("snp_account_icon", "drawable", context.getPackageName());
            if (identifier == 0 || context.getResources().getString(identifier).isEmpty()) {
                throw new Resources.NotFoundException("snp_account_icon resource must be placed in drawable resources");
            }
            int identifier2 = context.getResources().getIdentifier("snp_account_label", "string", context.getPackageName());
            if (identifier2 == 0 || context.getResources().getString(identifier2).isEmpty()) {
                throw new Resources.NotFoundException("snp_account_label string must be added in string resources");
            }
            int identifier3 = context.getResources().getIdentifier("snp_account_type", "string", context.getPackageName());
            if (identifier3 == 0 || context.getResources().getString(identifier3).isEmpty()) {
                throw new Resources.NotFoundException("snp_account_type string must be added in string resources");
            }
            context.getResources().getString(identifier3);
            int identifier4 = context.getResources().getIdentifier("snp_account_type", "string", context.getPackageName());
            if (identifier4 == 0) {
                str = null;
            } else {
                str = context.getResources().getString(identifier4);
            }
            this.e = str;
            int identifier5 = context.getResources().getIdentifier("snp_account_label", "string", context.getPackageName());
            this.f = identifier5 != 0 ? context.getResources().getString(identifier5) : str2;
            if (this.h == null) {
                this.h = cab.snapp.authenticator.a.a.b.builder().accountModule(new cab.snapp.authenticator.a.b.a(context)).build();
            }
            this.f180b = this.h.provideAccountManager();
            return;
        }
        throw new NullPointerException("Application content must not be null");
    }

    public static void initDefault(c cVar) {
        c = cVar;
    }

    public final boolean createAccount(Context context, String str, String str2, String str3, String str4) {
        Bundle bundle = new Bundle();
        if (str2 != null) {
            try {
                if (!str2.isEmpty()) {
                    bundle.putString("authAccount", this.f);
                    bundle.putString("accountType", this.e);
                    bundle.putString("authtoken", str2);
                    if (str != null && !str.isEmpty()) {
                        bundle.putString("KEY_USER_ID", str);
                    }
                    if (str3 != null && !str3.isEmpty()) {
                        bundle.putString("KEY_REFRESH_TOKEN", str3);
                    }
                    if (str4 != null && !str4.isEmpty()) {
                        bundle.putString("KEY_EXPIRED_AT", str4);
                    }
                    if (!str2.isEmpty()) {
                        bundle.putString("authtoken", str2);
                    }
                    Intent intent = new Intent();
                    intent.putExtras(bundle);
                    intent.getStringExtra("authAccount");
                    intent.getStringExtra("accountType");
                    String stringExtra = intent.getStringExtra("authtoken");
                    String stringExtra2 = intent.getStringExtra("KEY_USER_ID");
                    String stringExtra3 = intent.getStringExtra("KEY_REFRESH_TOKEN");
                    String stringExtra4 = intent.getStringExtra("KEY_EXPIRED_AT");
                    Bundle bundle2 = new Bundle();
                    if (stringExtra2 != null && !stringExtra2.isEmpty()) {
                        bundle2.putString("KEY_USER_ID", stringExtra2);
                    }
                    if (stringExtra != null && !stringExtra.isEmpty()) {
                        bundle2.putString("authtoken", stringExtra);
                    }
                    if (stringExtra3 != null && !stringExtra3.isEmpty()) {
                        bundle2.putString("KEY_REFRESH_TOKEN", stringExtra3);
                    }
                    if (stringExtra4 != null && !stringExtra4.isEmpty()) {
                        bundle2.putString("KEY_EXPIRED_AT", stringExtra4);
                    }
                    if (this.g == null) {
                        this.g = new Account(this.f, this.e);
                    }
                    this.g = this.g;
                    boolean addAccountExplicitly = this.f180b.addAccountExplicitly(this.g, null, bundle2);
                    this.f180b.setAuthToken(this.g, "FULL_ACCESS_TOKEN", stringExtra);
                    this.f180b.setUserData(this.g, "KEY_USER_ID", stringExtra2);
                    this.f180b.setUserData(this.g, "authtoken", stringExtra);
                    this.f180b.setUserData(this.g, "KEY_REFRESH_TOKEN", stringExtra3);
                    this.f180b.setUserData(this.g, "KEY_EXPIRED_AT", stringExtra4);
                    if (context instanceof Activity) {
                        Activity activity = (Activity) context;
                        if (activity instanceof AccountAuthenticatorActivity) {
                            AccountAuthenticatorActivity accountAuthenticatorActivity = (AccountAuthenticatorActivity) activity;
                            accountAuthenticatorActivity.setAccountAuthenticatorResult(intent.getExtras());
                            accountAuthenticatorActivity.setResult(-1, intent);
                        }
                    }
                    if (isUserAuthorized() && addAccountExplicitly) {
                        return true;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                bundle.putString("errorMessage", e2.getMessage());
            }
        }
        return false;
    }

    public final boolean isUserAuthorized() {
        Context context = this.d;
        if (context == null) {
            return false;
        }
        if ((!(context instanceof Activity) || !((Activity) context).isFinishing()) && getAvailableAccounts().length != 0) {
            return true;
        }
        return false;
    }

    public final void removeAccount(final Context context) {
        if (context != null) {
            if (getAvailableAccounts().length == 0) {
                a(context);
                return;
            }
            Account account = getAvailableAccounts()[0];
            if (Build.VERSION.SDK_INT < 22) {
                this.f180b.removeAccount(account, new AccountManagerCallback<Boolean>() {
                    public final void run(AccountManagerFuture<Boolean> accountManagerFuture) {
                        if (accountManagerFuture.isDone()) {
                            c.this.a(context);
                        }
                    }
                }, null);
            } else {
                this.f180b.removeAccount(account, null, new AccountManagerCallback<Bundle>() {
                    public final void run(AccountManagerFuture<Bundle> accountManagerFuture) {
                        if (accountManagerFuture.isDone()) {
                            c.this.a(context);
                        }
                    }
                }, null);
            }
        }
    }

    public final void invalidateAuthToken(String str) {
        if (getAvailableAccounts().length != 0 && str != null && !str.isEmpty()) {
            this.f180b.setAuthToken(getAvailableAccounts()[0], "FULL_ACCESS_TOKEN", str);
            this.f180b.setUserData(getAvailableAccounts()[0], "authtoken", str);
        }
    }

    public final void setPassword(Account account, String str) {
        if (getAvailableAccounts().length != 0 && str != null && !str.isEmpty()) {
            this.f180b.setPassword(getAvailableAccounts()[0], str);
        }
    }

    public final String getPassword() {
        if (getAvailableAccounts().length == 0) {
            return null;
        }
        return this.f180b.getPassword(getAvailableAccounts()[0]);
    }

    public final void setUserId(String str) {
        if (getAvailableAccounts().length != 0 && str != null && !str.isEmpty()) {
            this.f180b.setUserData(getAvailableAccounts()[0], "KEY_USER_ID", str);
        }
    }

    public final String getUserId() {
        if (getAvailableAccounts().length == 0) {
            return null;
        }
        return this.f180b.getUserData(getAvailableAccounts()[0], "KEY_USER_ID");
    }

    public final void setRefreshToken(String str) {
        if (getAvailableAccounts().length != 0 && str != null && !str.isEmpty()) {
            this.f180b.setUserData(getAvailableAccounts()[0], "KEY_REFRESH_TOKEN", str);
        }
    }

    public final String getRefreshToken() {
        if (getAvailableAccounts().length == 0) {
            return null;
        }
        String userData = this.f180b.getUserData(getAvailableAccounts()[0], "KEY_REFRESH_TOKEN");
        if (userData != null) {
            return userData;
        }
        String password = this.f180b.getPassword(getAvailableAccounts()[0]);
        setRefreshToken(password);
        return password;
    }

    public final void setExpiredAt(String str) {
        if (getAvailableAccounts().length != 0 && str != null && !str.isEmpty()) {
            this.f180b.setUserData(getAvailableAccounts()[0], "KEY_EXPIRED_AT", str);
        }
    }

    public final boolean isExpiredToken() {
        if (getAvailableAccounts().length == 0) {
            return true;
        }
        String userData = this.f180b.getUserData(getAvailableAccounts()[0], "KEY_EXPIRED_AT");
        if (userData == null || userData.isEmpty() || System.currentTimeMillis() > Long.parseLong(userData)) {
            return true;
        }
        return false;
    }

    public static void release() {
        c.f180b = null;
        b.f178a = null;
        c = null;
    }

    public static c getInstance() {
        c cVar = c;
        if (cVar == null) {
            throw new NullPointerException("SnappAccountManager should be implemented first");
        } else if (cVar.f180b != null) {
            String str = cVar.e;
            if (str == null || str.isEmpty()) {
                throw new NullPointerException("Account type should be implemented first");
            }
            Class<?> cls = c.f179a;
            if (cls != null) {
                try {
                    Class<?> cls2 = Class.forName(cls.getName());
                    if (cls2 != null) {
                        if (!cls2.getSuperclass().equals(AccountAuthenticatorActivity.class)) {
                            throw new IllegalArgumentException("AuthenticatorActivity should extend from AccountAuthenticatorActivity");
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                return c;
            }
            throw new NullPointerException("AuthenticatorActivity should be passed in constructor");
        } else {
            throw new NullPointerException("AccountManager is null");
        }
    }

    public final Account[] getAvailableAccounts() {
        return this.f180b.getAccountsByType(c.e);
    }

    /* access modifiers changed from: package-private */
    public final void a(final Context context) {
        String str = this.e;
        final Bundle bundle = new Bundle();
        this.f180b.addAccount(str, "FULL_ACCESS_TOKEN", null, bundle, null, new AccountManagerCallback<Bundle>() {
            public final void run(AccountManagerFuture<Bundle> accountManagerFuture) {
                try {
                    if (context != null) {
                        accountManagerFuture.getResult();
                        Intent intent = new Intent(context, c.this.f179a);
                        intent.putExtras(bundle);
                        intent.addFlags(268435456);
                        context.startActivity(intent);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }, null);
    }

    public final String getAuthToken() {
        if (this.f180b == null || getAvailableAccounts().length == 0) {
            return null;
        }
        return this.f180b.getUserData(getAvailableAccounts()[0], "authtoken");
    }

    public final void getAuthToken(final b bVar) {
        if (bVar != null) {
            if (this.f180b == null || getAvailableAccounts().length == 0) {
                bVar.onTokenReceived(null);
            }
            if (getAuthToken() != null) {
                bVar.onTokenReceived(getAuthToken());
            } else {
                this.f180b.getAuthToken(getAvailableAccounts()[0], "FULL_ACCESS_TOKEN", null, true, new AccountManagerCallback<Bundle>() {
                    public final void run(AccountManagerFuture<Bundle> accountManagerFuture) {
                        try {
                            if (accountManagerFuture.isDone()) {
                                String string = accountManagerFuture.getResult().getString("authtoken");
                                bVar.onTokenReceived(string);
                                if (!(c.this.f180b == null || c.this.getAvailableAccounts().length == 0)) {
                                    c.this.f180b.setUserData(c.this.getAvailableAccounts()[0], "authtoken", string);
                                }
                            }
                        } catch (OperationCanceledException e) {
                            e.printStackTrace();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        } catch (AuthenticatorException e3) {
                            e3.printStackTrace();
                        } catch (NullPointerException e4) {
                            e4.printStackTrace();
                        }
                    }
                }, null);
            }
        }
    }
}
