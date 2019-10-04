.class public Lcom/google/android/gms/analytics/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/q;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/analytics/r;

.field protected final c:Lcom/google/android/gms/analytics/o;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/r;Lcom/google/android/gms/common/util/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/q;->b:Lcom/google/android/gms/analytics/r;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/q;->a:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/analytics/o;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/analytics/o;-><init>(Lcom/google/android/gms/analytics/q;Lcom/google/android/gms/common/util/d;)V

    const/4 p2, 0x1

    .line 1000
    iput-boolean p2, p1, Lcom/google/android/gms/analytics/o;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/analytics/q;->c:Lcom/google/android/gms/analytics/o;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/gms/analytics/o;)V
    .locals 0

    return-void
.end method

.method public zzun()Lcom/google/android/gms/analytics/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/q;->c:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/o;->zzus()Lcom/google/android/gms/analytics/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/q;->a()V

    return-object v0
.end method
