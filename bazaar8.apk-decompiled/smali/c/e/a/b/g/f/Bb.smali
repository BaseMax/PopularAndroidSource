.class public final Lc/e/a/b/g/f/Bb;
.super Lc/e/a/b/g/f/Fa;

# interfaces
.implements Lc/e/a/b/g/f/Cb;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/Fa<",
        "Ljava/lang/String;",
        ">;",
        "Lc/e/a/b/g/f/Cb;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final b:Lc/e/a/b/g/f/Bb;

.field public static final c:Lc/e/a/b/g/f/Cb;


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/g/f/Bb;

    invoke-direct {v0}, Lc/e/a/b/g/f/Bb;-><init>()V

    .line 2
    sput-object v0, Lc/e/a/b/g/f/Bb;->b:Lc/e/a/b/g/f/Bb;

    invoke-virtual {v0}, Lc/e/a/b/g/f/Fa;->t()V

    .line 3
    sget-object v0, Lc/e/a/b/g/f/Bb;->b:Lc/e/a/b/g/f/Bb;

    sput-object v0, Lc/e/a/b/g/f/Bb;->c:Lc/e/a/b/g/f/Cb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/b/g/f/Bb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lc/e/a/b/g/f/Bb;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lc/e/a/b/g/f/Fa;-><init>()V

    .line 4
    iput-object p1, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdp;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lc/e/a/b/g/f/qb;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzdp;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Fa;->a()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/g/f/Fa;->a()V

    .line 3
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/g/f/Fa;->a()V

    .line 3
    instance-of v0, p2, Lc/e/a/b/g/f/Cb;

    if-eqz v0, :cond_0

    check-cast p2, Lc/e/a/b/g/f/Cb;

    invoke-interface {p2}, Lc/e/a/b/g/f/Cb;->v()Ljava/util/List;

    move-result-object p2

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 5
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Bb;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lc/e/a/b/g/f/Bb;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic c(I)Lc/e/a/b/g/f/vb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Bb;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object p1, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance p1, Lc/e/a/b/g/f/Bb;

    invoke-direct {p1, v0}, Lc/e/a/b/g/f/Bb;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Fa;->a()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzdp;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdp;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdp;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdp;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 9
    :cond_2
    check-cast v0, [B

    .line 10
    invoke-static {v0}, Lc/e/a/b/g/f/qb;->c([B)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0}, Lc/e/a/b/g/f/qb;->b([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Fa;->a()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 4
    invoke-static {p1}, Lc/e/a/b/g/f/Bb;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/g/f/Fa;->a()V

    .line 3
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lc/e/a/b/g/f/Bb;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final u()Lc/e/a/b/g/f/Cb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Fa;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lc/e/a/b/g/f/Cc;

    invoke-direct {v0, p0}, Lc/e/a/b/g/f/Cc;-><init>(Lc/e/a/b/g/f/Cb;)V

    return-object v0

    :cond_0
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
    iget-object v0, p0, Lc/e/a/b/g/f/Bb;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
