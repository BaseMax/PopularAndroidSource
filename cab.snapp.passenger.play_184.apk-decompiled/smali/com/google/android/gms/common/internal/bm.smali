.class public final Lcom/google/android/gms/common/internal/bm;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/gms/internal/oc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/internal/bm;->c:I

    sget-object v0, Lcom/google/android/gms/internal/oc;->zzkbs:Lcom/google/android/gms/internal/oc;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/bm;->f:Lcom/google/android/gms/internal/oc;

    return-void
.end method


# virtual methods
.method public final zzald()Lcom/google/android/gms/common/internal/bl;
    .locals 10

    new-instance v9, Lcom/google/android/gms/common/internal/bl;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/bm;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/bm;->b:Landroidx/collection/ArraySet;

    iget-object v6, p0, Lcom/google/android/gms/common/internal/bm;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/internal/bm;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/internal/bm;->f:Lcom/google/android/gms/internal/oc;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/bl;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/oc;)V

    return-object v9
.end method

.method public final zze(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/bm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bm;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public final zze(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/bm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/bm;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->b:Landroidx/collection/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/bm;->b:Landroidx/collection/ArraySet;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->b:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final zzgf(Ljava/lang/String;)Lcom/google/android/gms/common/internal/bm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bm;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/internal/bm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bm;->e:Ljava/lang/String;

    return-object p0
.end method
