.class final Lcom/google/android/gms/internal/ku;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:J

.field private synthetic e:Lcom/google/android/gms/internal/kc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ku;->e:Lcom/google/android/gms/internal/kc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ku;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ku;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ku;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ku;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ku;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ku;->e:Lcom/google/android/gms/internal/kc;

    invoke-static {v0}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/kc;)Lcom/google/android/gms/internal/jx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jx;->zzawq()Lcom/google/android/gms/internal/ln;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ku;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ln;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$g;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$g;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/AppMeasurement$g;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ku;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$g;->zziwk:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ku;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$g;->zziwl:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ku;->d:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$g;->zziwm:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ku;->e:Lcom/google/android/gms/internal/kc;

    invoke-static {v1}, Lcom/google/android/gms/internal/kc;->a(Lcom/google/android/gms/internal/kc;)Lcom/google/android/gms/internal/jx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jx;->zzawq()Lcom/google/android/gms/internal/ln;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ku;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ln;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$g;)V

    return-void
.end method