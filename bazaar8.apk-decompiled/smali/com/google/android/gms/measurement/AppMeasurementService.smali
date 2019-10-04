.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;

# interfaces
.implements Lc/e/a/b/h/b/Ib;


# instance fields
.field public a:Lc/e/a/b/h/b/Eb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/h/b/Eb<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lc/e/a/b/h/b/Eb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/h/b/Eb<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lc/e/a/b/h/b/Eb;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/e/a/b/h/b/Eb;

    invoke-direct {v0, p0}, Lc/e/a/b/h/b/Eb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lc/e/a/b/h/b/Eb;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lc/e/a/b/h/b/Eb;

    return-object v0
.end method

.method public final a(Landroid/app/job/JobParameters;Z)V
    .locals 0

    .line 5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 0

    .line 6
    invoke-static {p1}, Lb/q/a/a;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public final a(I)Z
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lc/e/a/b/h/b/Eb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/Eb;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lc/e/a/b/h/b/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/Eb;->a()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lc/e/a/b/h/b/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/Eb;->b()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lc/e/a/b/h/b/Eb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/Eb;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lc/e/a/b/h/b/Eb;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc/e/a/b/h/b/Eb;->a(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a()Lc/e/a/b/h/b/Eb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/Eb;->c(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
