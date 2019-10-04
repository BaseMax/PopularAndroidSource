.class final Lcom/google/android/gms/internal/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/aw<",
        "Lcom/google/android/gms/internal/bj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/z;

.field private final b:Lcom/google/android/gms/internal/bj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bi;->a:Lcom/google/android/gms/internal/z;

    new-instance p1, Lcom/google/android/gms/internal/bj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/bj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bi;->b:Lcom/google/android/gms/internal/bj;

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bi;->b:Lcom/google/android/gms/internal/bj;

    iput p2, p1, Lcom/google/android/gms/internal/bj;->zzdxs:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/bi;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object p2

    const-string v0, "Bool xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/w;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bi;->b:Lcom/google/android/gms/internal/bj;

    iput p2, p1, Lcom/google/android/gms/internal/bj;->zzdxr:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/bi;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object p2

    const-string v0, "Int xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/w;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bi;->b:Lcom/google/android/gms/internal/bj;

    iput-object p2, p1, Lcom/google/android/gms/internal/bj;->zzdqz:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/bi;->b:Lcom/google/android/gms/internal/bj;

    iput-object p2, p1, Lcom/google/android/gms/internal/bj;->zzdra:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/bi;->b:Lcom/google/android/gms/internal/bj;

    iput-object p2, p1, Lcom/google/android/gms/internal/bj;->zzdxq:Ljava/lang/String;

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/bi;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object p2

    const-string v0, "String xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/w;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic zzyo()Lcom/google/android/gms/internal/au;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bi;->b:Lcom/google/android/gms/internal/bj;

    return-object v0
.end method
