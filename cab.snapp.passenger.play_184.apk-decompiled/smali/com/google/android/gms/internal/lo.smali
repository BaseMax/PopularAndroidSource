.class final Lcom/google/android/gms/internal/lo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/google/android/gms/measurement/AppMeasurement$g;

.field private synthetic c:Lcom/google/android/gms/internal/lq;

.field private synthetic d:Lcom/google/android/gms/internal/ln;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ln;ZLcom/google/android/gms/measurement/AppMeasurement$g;Lcom/google/android/gms/internal/lq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lo;->d:Lcom/google/android/gms/internal/ln;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/lo;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/lo;->b:Lcom/google/android/gms/measurement/AppMeasurement$g;

    iput-object p4, p0, Lcom/google/android/gms/internal/lo;->c:Lcom/google/android/gms/internal/lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/lo;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->d:Lcom/google/android/gms/internal/ln;

    iget-object v0, v0, Lcom/google/android/gms/internal/ln;->a:Lcom/google/android/gms/internal/lq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->d:Lcom/google/android/gms/internal/ln;

    iget-object v1, v0, Lcom/google/android/gms/internal/ln;->a:Lcom/google/android/gms/internal/lq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ln;->a(Lcom/google/android/gms/internal/ln;Lcom/google/android/gms/internal/lq;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->b:Lcom/google/android/gms/measurement/AppMeasurement$g;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$g;->zziwm:J

    iget-object v2, p0, Lcom/google/android/gms/internal/lo;->c:Lcom/google/android/gms/internal/lq;

    iget-wide v2, v2, Lcom/google/android/gms/internal/lq;->zziwm:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->b:Lcom/google/android/gms/measurement/AppMeasurement$g;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$g;->zziwl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->c:Lcom/google/android/gms/internal/lq;

    iget-object v1, v1, Lcom/google/android/gms/internal/lq;->zziwl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/na;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->b:Lcom/google/android/gms/measurement/AppMeasurement$g;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$g;->zziwk:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->c:Lcom/google/android/gms/internal/lq;

    iget-object v1, v1, Lcom/google/android/gms/internal/lq;->zziwk:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/na;->zzas(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->c:Lcom/google/android/gms/internal/lq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ln;->zza(Lcom/google/android/gms/measurement/AppMeasurement$g;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->b:Lcom/google/android/gms/measurement/AppMeasurement$g;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$g;->zziwk:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->b:Lcom/google/android/gms/measurement/AppMeasurement$g;

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$g;->zziwk:Ljava/lang/String;

    const-string v2, "_pn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->b:Lcom/google/android/gms/measurement/AppMeasurement$g;

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$g;->zziwl:Ljava/lang/String;

    const-string v2, "_pc"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->b:Lcom/google/android/gms/measurement/AppMeasurement$g;

    iget-wide v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$g;->zziwm:J

    const-string v3, "_pi"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->d:Lcom/google/android/gms/internal/ln;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kv;->zzawm()Lcom/google/android/gms/internal/ky;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ky;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/lo;->d:Lcom/google/android/gms/internal/ln;

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->c:Lcom/google/android/gms/internal/lq;

    iput-object v1, v0, Lcom/google/android/gms/internal/ln;->a:Lcom/google/android/gms/internal/lq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kv;->zzawp()Lcom/google/android/gms/internal/lr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lo;->c:Lcom/google/android/gms/internal/lq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lr;->a(Lcom/google/android/gms/measurement/AppMeasurement$g;)V

    return-void
.end method
