.class final Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;
.super Lcom/google/android/gms/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/c<",
        "Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroidx/fragment/app/Fragment;

.field private e:Lcom/google/android/gms/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/a/n<",
            "Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/app/Activity;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/a/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->g:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->d:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->e:Lcom/google/android/gms/a/n;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/a/c;->zzapw()Lcom/google/android/gms/a/b;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/e;->initialize(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/bn;->zzdt(Landroid/content/Context;)Lcom/google/android/gms/maps/a/bq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->f:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/a/m;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/bq;->zzab(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/maps/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->e:Lcom/google/android/gms/a/n;

    new-instance v2, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;

    iget-object v3, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->d:Landroidx/fragment/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;-><init>(Landroidx/fragment/app/Fragment;Lcom/google/android/gms/maps/a/h;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/a/n;->zza(Lcom/google/android/gms/a/b;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/g;

    invoke-virtual {p0}, Lcom/google/android/gms/a/c;->zzapw()Lcom/google/android/gms/a/b;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/j;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->f:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->a()V

    return-void
.end method

.method public final getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/g;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/a/c;->zzapw()Lcom/google/android/gms/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/a/c;->zzapw()Lcom/google/android/gms/a/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/g;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/a/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/a/n<",
            "Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->e:Lcom/google/android/gms/a/n;

    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$b;->a()V

    return-void
.end method
