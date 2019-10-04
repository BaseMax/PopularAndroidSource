.class final Lcom/google/android/gms/maps/StreetViewPanoramaView$b;
.super Lcom/google/android/gms/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/c<",
        "Lcom/google/android/gms/maps/StreetViewPanoramaView$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/a/n<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/a/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->h:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->d:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->g:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-void
.end method


# virtual methods
.method public final getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/g;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/a/c;->zzapw()Lcom/google/android/gms/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/a/c;->zzapw()Lcom/google/android/gms/a/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/g;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/a/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/a/n<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->f:Lcom/google/android/gms/a/n;

    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->f:Lcom/google/android/gms/a/n;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/a/c;->zzapw()Lcom/google/android/gms/a/b;

    move-result-object p1

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/maps/e;->initialize(Landroid/content/Context;)I

    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/maps/a/bn;->zzdt(Landroid/content/Context;)Lcom/google/android/gms/maps/a/bq;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/a/m;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->g:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/maps/a/bq;->zza(Lcom/google/android/gms/a/a;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/a/i;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->f:Lcom/google/android/gms/a/n;

    new-instance v1, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->d:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/a/i;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/a/n;->zza(Lcom/google/android/gms/a/b;)V

    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/g;

    invoke-virtual {p0}, Lcom/google/android/gms/a/c;->zzapw()Lcom/google/android/gms/a/b;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/g;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    :cond_1
    return-void
.end method
