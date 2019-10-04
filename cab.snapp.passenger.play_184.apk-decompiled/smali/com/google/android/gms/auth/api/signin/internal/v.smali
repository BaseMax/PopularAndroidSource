.class public final Lcom/google/android/gms/auth/api/signin/internal/v;
.super Lcom/google/android/gms/auth/api/signin/internal/q;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/q;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/v;->a:Landroid/content/Context;

    return-void
.end method

.method private final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/v;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzf(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zzabo()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/v;->a()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/v;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/x;->zzbt(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/x;->zzabt()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/x;->zzabu()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/f$a;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/internal/v;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/google/android/gms/common/api/f$a;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/android/gms/auth/api/a;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/api/f$a;->addApi(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a$c;)Lcom/google/android/gms/common/api/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f$a;->build()Lcom/google/android/gms/common/api/f;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/auth/api/a;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/b;

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/api/signin/b;->revokeAccess(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/h;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->disconnect()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->disconnect()V

    throw v1
.end method

.method public final zzabp()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/v;->a()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/v;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/n;->zzbr(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/n;->clear()V

    return-void
.end method
