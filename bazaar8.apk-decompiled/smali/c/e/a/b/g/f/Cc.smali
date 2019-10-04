.class public final Lc/e/a/b/g/f/Cc;
.super Ljava/util/AbstractList;

# interfaces
.implements Lc/e/a/b/g/f/Cb;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lc/e/a/b/g/f/Cb;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/b/g/f/Cb;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/Cb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/g/f/Cc;->a:Lc/e/a/b/g/f/Cb;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/g/f/Cc;)Lc/e/a/b/g/f/Cb;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/e/a/b/g/f/Cc;->a:Lc/e/a/b/g/f/Cb;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Cc;->a:Lc/e/a/b/g/f/Cb;

    invoke-interface {v0, p1}, Lc/e/a/b/g/f/Cb;->d(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Cc;->a:Lc/e/a/b/g/f/Cb;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/b/g/f/Ec;

    invoke-direct {v0, p0}, Lc/e/a/b/g/f/Ec;-><init>(Lc/e/a/b/g/f/Cc;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/b/g/f/Dc;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/g/f/Dc;-><init>(Lc/e/a/b/g/f/Cc;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Cc;->a:Lc/e/a/b/g/f/Cb;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final u()Lc/e/a/b/g/f/Cb;
    .locals 0

    return-object p0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Cc;->a:Lc/e/a/b/g/f/Cb;

    invoke-interface {v0}, Lc/e/a/b/g/f/Cb;->v()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
