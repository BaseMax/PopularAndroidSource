.class public final Lcab/snapp/passenger/f/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/f/i$a;
    }
.end annotation


# instance fields
.field private final a:Lcab/snapp/passenger/f/i$a;

.field private final b:Lcab/snapp/arch/protocol/BaseController;

.field private final c:Lcab/snapp/passenger/f/b/b/c;


# direct methods
.method public constructor <init>(Lcab/snapp/arch/protocol/BaseController;Lcab/snapp/passenger/f/i$a;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcab/snapp/passenger/f/i;->b:Lcab/snapp/arch/protocol/BaseController;

    .line 42
    iput-object p2, p0, Lcab/snapp/passenger/f/i;->a:Lcab/snapp/passenger/f/i$a;

    .line 43
    iput-object p3, p0, Lcab/snapp/passenger/f/i;->c:Lcab/snapp/passenger/f/b/b/c;

    return-void
.end method


# virtual methods
.method public final loginOrSignUpWithGoogle()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/f/i;->b:Lcab/snapp/arch/protocol/BaseController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    iget-object v1, p0, Lcab/snapp/passenger/f/i;->b:Lcab/snapp/arch/protocol/BaseController;

    const v2, 0x7f1200d6

    .line 65
    invoke-virtual {v1, v2}, Lcab/snapp/arch/protocol/BaseController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcab/snapp/passenger/f/i;->b:Lcab/snapp/arch/protocol/BaseController;

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/a;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/c;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcab/snapp/passenger/f/i;->b:Lcab/snapp/arch/protocol/BaseController;

    const/16 v2, 0x85

    invoke-virtual {v1, v0, v2}, Lcab/snapp/arch/protocol/BaseController;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/f/i;->a:Lcab/snapp/passenger/f/i$a;

    if-eqz v0, :cond_2

    const-string v1, "Context was null!"

    .line 58
    invoke-interface {v0, v1}, Lcab/snapp/passenger/f/i$a;->onGoogleTokenError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x85

    if-ne p1, p2, :cond_2

    .line 92
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/a;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/c/f;

    move-result-object p1

    .line 96
    :try_start_0
    const-class p2, Lcom/google/android/gms/common/api/b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/c/f;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 97
    iget-object p2, p0, Lcab/snapp/passenger/f/i;->a:Lcab/snapp/passenger/f/i$a;

    if-eqz p2, :cond_0

    .line 99
    iget-object p2, p0, Lcab/snapp/passenger/f/i;->a:Lcab/snapp/passenger/f/i$a;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcab/snapp/passenger/f/i$a;->onGoogleTokenSucceed(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 104
    iget-object p2, p0, Lcab/snapp/passenger/f/i;->a:Lcab/snapp/passenger/f/i$a;

    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/b;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcab/snapp/passenger/f/i$a;->onGoogleTokenError(Ljava/lang/String;)V

    .line 108
    :cond_1
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
