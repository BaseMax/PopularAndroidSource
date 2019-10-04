.class public final Lcab/snapp/authenticator/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/authenticator/c$a;,
        Lcab/snapp/authenticator/c$b;
    }
.end annotation


# static fields
.field private static c:Lcab/snapp/authenticator/c;


# instance fields
.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field b:Landroid/accounts/AccountManager;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/accounts/Account;

.field private h:Lcab/snapp/authenticator/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcab/snapp/authenticator/c;->e:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcab/snapp/authenticator/c;->f:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    .line 80
    iput-object v0, p0, Lcab/snapp/authenticator/c;->h:Lcab/snapp/authenticator/a/a/a;

    .line 98
    iput-object p2, p0, Lcab/snapp/authenticator/c;->a:Ljava/lang/Class;

    .line 99
    iput-object p1, p0, Lcab/snapp/authenticator/c;->d:Landroid/content/Context;

    if-eqz p1, :cond_6

    .line 1232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1233
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "snp_account_icon"

    const-string v3, "drawable"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_5

    .line 1234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 1238
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1239
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "snp_account_label"

    const-string v3, "string"

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_4

    .line 1240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1246
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "snp_account_type"

    invoke-virtual {p2, v4, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_3

    .line 1247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1325
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v4, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 1332
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 101
    :goto_0
    iput-object p2, p0, Lcab/snapp/authenticator/c;->e:Ljava/lang/String;

    .line 1344
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1345
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 1352
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_1
    iput-object v0, p0, Lcab/snapp/authenticator/c;->f:Ljava/lang/String;

    .line 2306
    iget-object p2, p0, Lcab/snapp/authenticator/c;->h:Lcab/snapp/authenticator/a/a/a;

    if-nez p2, :cond_2

    .line 2309
    invoke-static {}, Lcab/snapp/authenticator/a/a/b;->builder()Lcab/snapp/authenticator/a/a/b$a;

    move-result-object p2

    new-instance v0, Lcab/snapp/authenticator/a/b/a;

    invoke-direct {v0, p1}, Lcab/snapp/authenticator/a/b/a;-><init>(Landroid/content/Context;)V

    .line 2310
    invoke-virtual {p2, v0}, Lcab/snapp/authenticator/a/a/b$a;->accountModule(Lcab/snapp/authenticator/a/b/a;)Lcab/snapp/authenticator/a/a/b$a;

    move-result-object p1

    .line 2311
    invoke-virtual {p1}, Lcab/snapp/authenticator/a/a/b$a;->build()Lcab/snapp/authenticator/a/a/a;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/authenticator/c;->h:Lcab/snapp/authenticator/a/a/a;

    .line 2313
    :cond_2
    iget-object p1, p0, Lcab/snapp/authenticator/c;->h:Lcab/snapp/authenticator/a/a/a;

    invoke-interface {p1}, Lcab/snapp/authenticator/a/a/a;->provideAccountManager()Landroid/accounts/AccountManager;

    move-result-object p1

    .line 103
    iput-object p1, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    return-void

    .line 1249
    :cond_3
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    const-string p2, "snp_account_type string must be added in string resources"

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1242
    :cond_4
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    const-string p2, "snp_account_label string must be added in string resources"

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1236
    :cond_5
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    const-string p2, "snp_account_icon resource must be placed in drawable resources"

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1230
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Application content must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lcab/snapp/authenticator/c;
    .locals 2

    .line 3265
    sget-object v0, Lcab/snapp/authenticator/c;->c:Lcab/snapp/authenticator/c;

    if-eqz v0, :cond_5

    .line 4160
    iget-object v1, v0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    if-eqz v1, :cond_4

    .line 5116
    iget-object v0, v0, Lcab/snapp/authenticator/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3273
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3277
    sget-object v0, Lcab/snapp/authenticator/c;->c:Lcab/snapp/authenticator/c;

    .line 6150
    iget-object v0, v0, Lcab/snapp/authenticator/c;->a:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 3285
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3286
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/accounts/AccountAuthenticatorActivity;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AuthenticatorActivity should extend from AccountAuthenticatorActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3293
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    :cond_1
    :goto_0
    sget-object v0, Lcab/snapp/authenticator/c;->c:Lcab/snapp/authenticator/c;

    return-object v0

    .line 3279
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AuthenticatorActivity should be passed in constructor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3275
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account type should be implemented first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3271
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AccountManager is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3267
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SnappAccountManager should be implemented first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initDefault(Lcab/snapp/authenticator/c;)V
    .locals 0

    .line 364
    sput-object p0, Lcab/snapp/authenticator/c;->c:Lcab/snapp/authenticator/c;

    return-void
.end method

.method public static release()V
    .locals 2

    .line 885
    sget-object v0, Lcab/snapp/authenticator/c;->c:Lcab/snapp/authenticator/c;

    const/4 v1, 0x0

    .line 35213
    iput-object v1, v0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 36097
    sput-object v1, Lcab/snapp/authenticator/b;->a:Ljava/lang/Class;

    .line 887
    sput-object v1, Lcab/snapp/authenticator/c;->c:Lcab/snapp/authenticator/c;

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 8

    .line 18116
    iget-object v1, p0, Lcab/snapp/authenticator/c;->e:Ljava/lang/String;

    .line 18511
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 18518
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    new-instance v6, Lcab/snapp/authenticator/c$1;

    invoke-direct {v6, p0, p1, v4}, Lcab/snapp/authenticator/c$1;-><init>(Lcab/snapp/authenticator/c;Landroid/content/Context;Landroid/os/Bundle;)V

    const-string v2, "FULL_ACCESS_TOKEN"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 18519
    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public final createAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "accountType"

    const-string v1, "authAccount"

    const-string v2, "KEY_EXPIRED_AT"

    const-string v3, "KEY_REFRESH_TOKEN"

    const-string v4, "KEY_USER_ID"

    const-string v5, "authtoken"

    .line 400
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x0

    if-eqz p3, :cond_b

    .line 403
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_1

    .line 8126
    :cond_0
    iget-object v8, p0, Lcab/snapp/authenticator/c;->f:Ljava/lang/String;

    .line 408
    invoke-virtual {v6, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9116
    iget-object v8, p0, Lcab/snapp/authenticator/c;->e:Ljava/lang/String;

    .line 409
    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v6, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 411
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 413
    invoke-virtual {v6, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 416
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 418
    invoke-virtual {v6, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p5, :cond_3

    .line 420
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 422
    invoke-virtual {v6, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 426
    invoke-virtual {v6, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 431
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "errorMessage"

    invoke-virtual {v6, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_4
    :goto_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 435
    invoke-virtual {p2, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9449
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 9450
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 9451
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 9453
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 9454
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 9455
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9754
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_5

    .line 9755
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 9757
    invoke-virtual {v1, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p3, :cond_6

    .line 9759
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 9761
    invoke-virtual {v1, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p5, :cond_7

    .line 9763
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 9765
    invoke-virtual {v1, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v0, :cond_8

    .line 9767
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 9769
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10136
    :cond_8
    iget-object v6, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    if-nez v6, :cond_9

    .line 10138
    new-instance v6, Landroid/accounts/Account;

    .line 11126
    iget-object v8, p0, Lcab/snapp/authenticator/c;->f:Ljava/lang/String;

    .line 12116
    iget-object v9, p0, Lcab/snapp/authenticator/c;->e:Ljava/lang/String;

    .line 10138
    invoke-direct {v6, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    .line 10140
    :cond_9
    iget-object v6, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    .line 9459
    iput-object v6, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    .line 12160
    iget-object v6, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 9460
    iget-object v8, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    .line 13160
    iget-object v6, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 9461
    iget-object v8, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    const-string v9, "FULL_ACCESS_TOKEN"

    invoke-virtual {v6, v8, v9, p3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 14160
    iget-object v6, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 9462
    iget-object v8, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    invoke-virtual {v6, v8, v4, p4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 15160
    iget-object p4, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 9463
    iget-object v4, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    invoke-virtual {p4, v4, v5, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 16160
    iget-object p3, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 9464
    iget-object p4, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    invoke-virtual {p3, p4, v3, p5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 17160
    iget-object p3, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 9465
    iget-object p4, p0, Lcab/snapp/authenticator/c;->g:Landroid/accounts/Account;

    invoke-virtual {p3, p4, v2, v0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 9467
    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_a

    .line 9469
    check-cast p1, Landroid/app/Activity;

    .line 9470
    instance-of p3, p1, Landroid/accounts/AccountAuthenticatorActivity;

    if-eqz p3, :cond_a

    .line 9472
    check-cast p1, Landroid/accounts/AccountAuthenticatorActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/accounts/AccountAuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    const/4 p3, -0x1

    .line 9473
    invoke-virtual {p1, p3, p2}, Landroid/accounts/AccountAuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    .line 9477
    :cond_a
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz v1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_1
    return v7
.end method

.method public final getAuthToken()Ljava/lang/String;
    .locals 3

    .line 21160
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 22160
    :cond_0
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 630
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "authtoken"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAuthToken(Lcab/snapp/authenticator/c$b;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 23160
    :cond_0
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 644
    invoke-interface {p1, v0}, Lcab/snapp/authenticator/c$b;->onTokenReceived(Ljava/lang/String;)V

    .line 647
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 649
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcab/snapp/authenticator/c$b;->onTokenReceived(Ljava/lang/String;)V

    return-void

    .line 24160
    :cond_3
    iget-object v1, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 652
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lcab/snapp/authenticator/c$4;

    invoke-direct {v6, p0, p1}, Lcab/snapp/authenticator/c$4;-><init>(Lcab/snapp/authenticator/c;Lcab/snapp/authenticator/c$b;)V

    const/4 v7, 0x0

    const-string v3, "FULL_ACCESS_TOKEN"

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public final getAvailableAccounts()[Landroid/accounts/Account;
    .locals 2

    .line 7160
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 385
    sget-object v1, Lcab/snapp/authenticator/c;->c:Lcab/snapp/authenticator/c;

    .line 8116
    iget-object v1, v1, Lcab/snapp/authenticator/c;->e:Ljava/lang/String;

    .line 385
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 3

    .line 736
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 28160
    :cond_0
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 740
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 4

    .line 826
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 32160
    :cond_0
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 830
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, "KEY_REFRESH_TOKEN"

    invoke-virtual {v0, v1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 33160
    :cond_1
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 838
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-virtual {p0, v0}, Lcab/snapp/authenticator/c;->setRefreshToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 3

    .line 795
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 30160
    :cond_0
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 799
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invalidateAuthToken(Ljava/lang/String;)V
    .locals 4

    .line 702
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25160
    :cond_0
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 706
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, "FULL_ACCESS_TOKEN"

    invoke-virtual {v0, v1, v3, p1}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 26160
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 709
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    aget-object v1, v1, v2

    const-string v2, "authtoken"

    invoke-virtual {v0, v1, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isExpiredToken()Z
    .locals 8

    .line 865
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 35160
    :cond_0
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 869
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v4, "KEY_EXPIRED_AT"

    invoke-virtual {v0, v2, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 870
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 874
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 875
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    return v1

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public final isUserAuthorized()Z
    .locals 3

    .line 554
    iget-object v0, p0, Lcab/snapp/authenticator/c;->d:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 558
    :cond_0
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final removeAccount(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 585
    invoke-virtual {p0, p1}, Lcab/snapp/authenticator/c;->a(Landroid/content/Context;)V

    return-void

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 590
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 19160
    iget-object v1, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 592
    new-instance v2, Lcab/snapp/authenticator/c$2;

    invoke-direct {v2, p0, p1}, Lcab/snapp/authenticator/c$2;-><init>(Lcab/snapp/authenticator/c;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void

    .line 20160
    :cond_2
    iget-object v1, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 605
    new-instance v2, Lcab/snapp/authenticator/c$3;

    invoke-direct {v2, p0, p1}, Lcab/snapp/authenticator/c$3;-><init>(Lcab/snapp/authenticator/c;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v3, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public final setExpiredAt(Ljava/lang/String;)V
    .locals 3

    .line 851
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34160
    :cond_0
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 855
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "KEY_EXPIRED_AT"

    invoke-virtual {v0, v1, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2

    .line 722
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object p1

    array-length p1, p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 27160
    :cond_0
    iget-object p1, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 726
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0, p2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setRefreshToken(Ljava/lang/String;)V
    .locals 3

    .line 809
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 31160
    :cond_0
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 814
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "KEY_REFRESH_TOKEN"

    .line 813
    invoke-virtual {v0, v1, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 3

    .line 781
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29160
    :cond_0
    iget-object v0, p0, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 785
    invoke-virtual {p0}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v0, v1, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
