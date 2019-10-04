.class public Lcom/google/android/gms/analytics/i;
.super Lcom/google/android/gms/analytics/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/q<",
        "Lcom/google/android/gms/analytics/i;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/z;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/z;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/z;->zzwv()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/z;->zzws()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/q;-><init>(Lcom/google/android/gms/analytics/r;Lcom/google/android/gms/common/util/d;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/analytics/o;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/j;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/o;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/j;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/j;->zzvz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzxl()Lcom/google/android/gms/internal/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aq;->zzyk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/j;->setClientId(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/i;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/j;->zzwa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzxk()Lcom/google/android/gms/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/n;->zzwi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/j;->zzdq(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/n;->zzwb()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/j;->zzai(Z)V

    :cond_1
    return-void
.end method

.method public final enableAdvertisingIdCollection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/i;->d:Z

    return-void
.end method

.method public final zzde(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/q;->c:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/o;->getTransports()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/u;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/u;->zzup()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->c:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->getTransports()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/j;

    iget-object v2, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/j;-><init>(Lcom/google/android/gms/internal/z;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzun()Lcom/google/android/gms/analytics/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->c:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->zzus()Lcom/google/android/gms/analytics/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/z;->zzxd()Lcom/google/android/gms/internal/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ak;->zzxy()Lcom/google/android/gms/internal/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/o;->zza(Lcom/google/android/gms/analytics/p;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/i;->a:Lcom/google/android/gms/internal/z;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/z;->zzxe()Lcom/google/android/gms/internal/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bb;->zzzc()Lcom/google/android/gms/internal/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/o;->zza(Lcom/google/android/gms/analytics/p;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/q;->a()V

    return-object v0
.end method
