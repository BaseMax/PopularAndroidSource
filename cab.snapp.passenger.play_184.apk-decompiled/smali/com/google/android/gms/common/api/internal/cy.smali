.class final Lcom/google/android/gms/common/api/internal/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/cw;

.field private final b:Lcom/google/android/gms/common/api/internal/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/cw;Lcom/google/android/gms/common/api/internal/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/cy;->b:Lcom/google/android/gms/common/api/internal/cx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/cw;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cy;->b:Lcom/google/android/gms/common/api/internal/cx;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cx;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/cw;->a:Lcom/google/android/gms/common/api/internal/bd;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/cy;->b:Lcom/google/android/gms/common/api/internal/cx;

    .line 2000
    iget v3, v3, Lcom/google/android/gms/common/api/internal/cx;->a:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zza(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/bd;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/cw;->e:Lcom/google/android/gms/common/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/j;->isUserResolvableError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/cw;->e:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/cw;->a:Lcom/google/android/gms/common/api/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/b;->zza(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/bd;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/b;->zza(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/cz;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/internal/cz;-><init>(Lcom/google/android/gms/common/api/internal/cy;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/b;->zza(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/ax;)Lcom/google/android/gms/common/api/internal/aw;

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cy;->b:Lcom/google/android/gms/common/api/internal/cx;

    .line 3000
    iget v2, v2, Lcom/google/android/gms/common/api/internal/cx;->a:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/cw;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
