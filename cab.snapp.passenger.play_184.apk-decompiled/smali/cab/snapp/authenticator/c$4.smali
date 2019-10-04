.class final Lcab/snapp/authenticator/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/authenticator/c;->getAuthToken(Lcab/snapp/authenticator/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/authenticator/c$b;

.field final synthetic b:Lcab/snapp/authenticator/c;


# direct methods
.method constructor <init>(Lcab/snapp/authenticator/c;Lcab/snapp/authenticator/c$b;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcab/snapp/authenticator/c$4;->b:Lcab/snapp/authenticator/c;

    iput-object p2, p0, Lcab/snapp/authenticator/c$4;->a:Lcab/snapp/authenticator/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "authtoken"

    .line 662
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 665
    iget-object v1, p0, Lcab/snapp/authenticator/c$4;->a:Lcab/snapp/authenticator/c$b;

    invoke-interface {v1, p1}, Lcab/snapp/authenticator/c$b;->onTokenReceived(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcab/snapp/authenticator/c$4;->b:Lcab/snapp/authenticator/c;

    .line 1160
    iget-object v1, v1, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    if-eqz v1, :cond_0

    .line 666
    iget-object v1, p0, Lcab/snapp/authenticator/c$4;->b:Lcab/snapp/authenticator/c;

    invoke-virtual {v1}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcab/snapp/authenticator/c$4;->b:Lcab/snapp/authenticator/c;

    .line 2160
    iget-object v1, v1, Lcab/snapp/authenticator/c;->b:Landroid/accounts/AccountManager;

    .line 668
    iget-object v2, p0, Lcab/snapp/authenticator/c$4;->b:Lcab/snapp/authenticator/c;

    invoke-virtual {v2}, Lcab/snapp/authenticator/c;->getAvailableAccounts()[Landroid/accounts/Account;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 688
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    .line 684
    invoke-virtual {p1}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    return-void

    :catch_2
    move-exception p1

    .line 680
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_3
    move-exception p1

    .line 676
    invoke-virtual {p1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    return-void
.end method
