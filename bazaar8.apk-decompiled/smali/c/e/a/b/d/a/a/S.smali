.class public final Lc/e/a/b/d/a/a/S;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lc/e/a/b/d/a/a/Q;

.field public final synthetic b:Lc/e/a/b/d/a/a/P;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/P;Lc/e/a/b/d/a/a/Q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lc/e/a/b/d/a/a/S;->a:Lc/e/a/b/d/a/a/Q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    iget-boolean v0, v0, Lc/e/a/b/d/a/a/P;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/a/b/d/a/a/S;->a:Lc/e/a/b/d/a/a/Q;

    invoke-virtual {v0}, Lc/e/a/b/d/a/a/Q;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lc/e/a/b/d/a/a/f;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->z()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lc/e/a/b/d/a/a/S;->a:Lc/e/a/b/d/a/a/Q;

    .line 7
    invoke-virtual {v3}, Lc/e/a/b/d/a/a/Q;->b()I

    move-result v3

    const/4 v4, 0x0

    .line 8
    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 9
    invoke-interface {v2, v0, v1}, Lc/e/a/b/d/a/a/f;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    iget-object v1, v1, Lc/e/a/b/d/a/a/P;->e:Lc/e/a/b/d/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->x()I

    move-result v2

    invoke-virtual {v1, v2}, Lc/e/a/b/d/c;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    iget-object v2, v1, Lc/e/a/b/d/a/a/P;->e:Lc/e/a/b/d/c;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lc/e/a/b/d/a/a/f;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->x()I

    move-result v5

    const/4 v6, 0x2

    iget-object v7, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    .line 14
    invoke-virtual/range {v2 .. v7}, Lc/e/a/b/d/c;->a(Landroid/app/Activity;Lc/e/a/b/d/a/a/f;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    .line 15
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->x()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 16
    iget-object v0, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    invoke-static {v0, v1}, Lc/e/a/b/d/c;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    iget-object v2, v1, Lc/e/a/b/d/a/a/P;->e:Lc/e/a/b/d/c;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lc/e/a/b/d/a/a/T;

    invoke-direct {v3, p0, v0}, Lc/e/a/b/d/a/a/T;-><init>(Lc/e/a/b/d/a/a/S;Landroid/app/Dialog;)V

    .line 20
    invoke-virtual {v2, v1, v3}, Lc/e/a/b/d/c;->a(Landroid/content/Context;Lc/e/a/b/d/a/a/A;)Lc/e/a/b/d/a/a/z;

    return-void

    .line 21
    :cond_3
    iget-object v1, p0, Lc/e/a/b/d/a/a/S;->b:Lc/e/a/b/d/a/a/P;

    iget-object v2, p0, Lc/e/a/b/d/a/a/S;->a:Lc/e/a/b/d/a/a/Q;

    invoke-virtual {v2}, Lc/e/a/b/d/a/a/Q;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lc/e/a/b/d/a/a/P;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
