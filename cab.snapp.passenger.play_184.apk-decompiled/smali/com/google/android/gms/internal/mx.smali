.class final Lcom/google/android/gms/internal/mx;
.super Lcom/google/android/gms/internal/ih;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/mw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/jx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mx;->a:Lcom/google/android/gms/internal/mw;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ih;-><init>(Lcom/google/android/gms/internal/jx;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->a:Lcom/google/android/gms/internal/mw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mw;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->a:Lcom/google/android/gms/internal/mw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawy()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iz;->zzazj()Lcom/google/android/gms/internal/jb;

    move-result-object v0

    const-string v1, "Sending upload intent from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->a:Lcom/google/android/gms/internal/mw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->a:Lcom/google/android/gms/internal/mw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
