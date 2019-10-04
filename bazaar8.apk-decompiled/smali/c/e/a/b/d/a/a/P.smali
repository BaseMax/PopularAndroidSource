.class public abstract Lc/e/a/b/d/a/a/P;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public volatile b:Z

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lc/e/a/b/d/a/a/Q;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/os/Handler;

.field public final e:Lc/e/a/b/d/c;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/f;)V
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/d/c;->a()Lc/e/a/b/d/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc/e/a/b/d/a/a/P;-><init>(Lc/e/a/b/d/a/a/f;Lc/e/a/b/d/c;)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/b/d/a/a/f;Lc/e/a/b/d/c;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lc/e/a/b/d/a/a/f;)V

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lc/e/a/b/d/a/a/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Lc/e/a/b/g/c/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/e/a/b/g/c/e;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lc/e/a/b/d/a/a/P;->d:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lc/e/a/b/d/a/a/P;->e:Lc/e/a/b/d/c;

    return-void
.end method

.method public static a(Lc/e/a/b/d/a/a/Q;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/Q;->b()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lc/e/a/b/d/a/a/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/d/a/a/Q;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object p1, p0, Lc/e/a/b/d/a/a/P;->e:Lc/e/a/b/d/c;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/e/a/b/d/c;->b(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-virtual {v0}, Lc/e/a/b/d/a/a/Q;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->x()I

    move-result p2

    const/16 p3, 0x12

    if-ne p2, p3, :cond_7

    if-ne p1, p3, :cond_7

    return-void

    :cond_3
    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    goto :goto_2

    :cond_4
    if-nez p2, :cond_6

    const/16 p1, 0xd

    if-eqz p3, :cond_5

    const-string p2, "<<ResolutionFailureErrorDetail>>"

    .line 13
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 14
    :cond_5
    new-instance p2, Lc/e/a/b/d/a/a/Q;

    new-instance p3, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 15
    invoke-static {v0}, Lc/e/a/b/d/a/a/P;->a(Lc/e/a/b/d/a/a/Q;)I

    move-result p1

    invoke-direct {p2, p3, p1}, Lc/e/a/b/d/a/a/Q;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 16
    iget-object p1, p0, Lc/e/a/b/d/a/a/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, p2

    :cond_6
    :goto_1
    const/4 v1, 0x0

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 17
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/P;->g()V

    return-void

    :cond_8
    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {v0}, Lc/e/a/b/d/a/a/Q;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    .line 19
    invoke-virtual {v0}, Lc/e/a/b/d/a/a/Q;->b()I

    move-result p2

    .line 20
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/d/a/a/P;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    :cond_9
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    const-string v2, "resolving_error"

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string v2, "failed_status"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "failed_resolution"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v2, -0x1

    const-string v3, "failed_client_id"

    .line 6
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 7
    new-instance v2, Lc/e/a/b/d/a/a/Q;

    invoke-direct {v2, v1, p1}, Lc/e/a/b/d/a/a/Q;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public abstract a(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/a/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/d/a/a/Q;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "resolving_error"

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {v0}, Lc/e/a/b/d/a/a/Q;->b()I

    move-result v1

    const-string v2, "failed_client_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0}, Lc/e/a/b/d/a/a/Q;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->x()I

    move-result v1

    const-string v2, "failed_status"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0}, Lc/e/a/b/d/a/a/Q;->a()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->z()Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "failed_resolution"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    .line 7
    new-instance v0, Lc/e/a/b/d/a/a/Q;

    invoke-direct {v0, p1, p2}, Lc/e/a/b/d/a/a/Q;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 8
    iget-object p1, p0, Lc/e/a/b/d/a/a/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lc/e/a/b/d/a/a/P;->d:Landroid/os/Handler;

    new-instance p2, Lc/e/a/b/d/a/a/S;

    invoke-direct {p2, p0, v0}, Lc/e/a/b/d/a/a/S;-><init>(Lc/e/a/b/d/a/a/P;Lc/e/a/b/d/a/a/Q;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->d()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/e/a/b/d/a/a/P;->b:Z

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->e()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/e/a/b/d/a/a/P;->b:Z

    return-void
.end method

.method public abstract f()V
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/P;->f()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lc/e/a/b/d/a/a/P;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/d/a/a/Q;

    invoke-static {v0}, Lc/e/a/b/d/a/a/P;->a(Lc/e/a/b/d/a/a/Q;)I

    move-result v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/d/a/a/P;->a(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/d/a/a/P;->g()V

    return-void
.end method
