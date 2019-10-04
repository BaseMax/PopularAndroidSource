.class public final Lcom/google/android/gms/internal/ak;
.super Lcom/google/android/gms/internal/x;


# instance fields
.field private final a:Lcom/google/android/gms/internal/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/internal/z;)V

    new-instance p1, Lcom/google/android/gms/internal/a;

    invoke-direct {p1}, Lcom/google/android/gms/internal/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/a;

    return-void
.end method


# virtual methods
.method protected final zzvf()V
    .locals 3

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwv()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/r;->zzvc()Lcom/google/android/gms/internal/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/a;->zza(Lcom/google/android/gms/internal/a;)V

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzwz()Lcom/google/android/gms/internal/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->zzvi()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/a;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/a;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->zzvj()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/a;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzxy()Lcom/google/android/gms/internal/a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/x;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/a;

    return-object v0
.end method
