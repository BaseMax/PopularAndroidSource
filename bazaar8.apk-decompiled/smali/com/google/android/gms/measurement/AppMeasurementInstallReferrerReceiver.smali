.class public final Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lc/e/a/b/h/b/S;


# instance fields
.field public a:Lc/e/a/b/h/b/O;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->a:Lc/e/a/b/h/b/O;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/e/a/b/h/b/O;

    invoke-direct {v0, p0}, Lc/e/a/b/h/b/O;-><init>(Lc/e/a/b/h/b/S;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->a:Lc/e/a/b/h/b/O;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->a:Lc/e/a/b/h/b/O;

    .line 4
    invoke-virtual {v0, p1, p2}, Lc/e/a/b/h/b/O;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
