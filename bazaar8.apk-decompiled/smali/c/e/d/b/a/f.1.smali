.class public final Lc/e/d/b/a/f;
.super Lc/e/d/d/c;
.source "JsonTreeWriter.java"


# static fields
.field public static final l:Ljava/io/Writer;

.field public static final m:Lc/e/d/t;


# instance fields
.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/d/p;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/String;

.field public p:Lc/e/d/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/d/b/a/e;

    invoke-direct {v0}, Lc/e/d/b/a/e;-><init>()V

    sput-object v0, Lc/e/d/b/a/f;->l:Ljava/io/Writer;

    .line 2
    new-instance v0, Lc/e/d/t;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lc/e/d/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/e/d/b/a/f;->m:Lc/e/d/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lc/e/d/b/a/f;->l:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lc/e/d/d/c;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    .line 3
    sget-object v0, Lc/e/d/q;->a:Lc/e/d/q;

    iput-object v0, p0, Lc/e/d/b/a/f;->p:Lc/e/d/p;

    return-void
.end method


# virtual methods
.method public C()Lc/e/d/d/c;
    .locals 1

    .line 1
    sget-object v0, Lc/e/d/q;->a:Lc/e/d/q;

    invoke-virtual {p0, v0}, Lc/e/d/b/a/f;->a(Lc/e/d/p;)V

    return-object p0
.end method

.method public final D()Lc/e/d/p;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/d/p;

    return-object v0
.end method

.method public F()Lc/e/d/p;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/d/b/a/f;->p:Lc/e/d/p;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Boolean;)Lc/e/d/d/c;
    .locals 1

    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lc/e/d/b/a/f;->C()Lc/e/d/d/c;

    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lc/e/d/t;

    invoke-direct {v0, p1}, Lc/e/d/t;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lc/e/d/b/a/f;->a(Lc/e/d/p;)V

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lc/e/d/d/c;
    .locals 3

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lc/e/d/b/a/f;->C()Lc/e/d/d/c;

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lc/e/d/d/c;->A()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_2
    :goto_0
    new-instance v0, Lc/e/d/t;

    invoke-direct {v0, p1}, Lc/e/d/t;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lc/e/d/b/a/f;->a(Lc/e/d/p;)V

    return-object p0
.end method

.method public final a(Lc/e/d/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/d/b/a/f;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lc/e/d/p;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/e/d/d/c;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/e/d/b/a/f;->D()Lc/e/d/p;

    move-result-object v0

    check-cast v0, Lc/e/d/r;

    .line 4
    iget-object v1, p0, Lc/e/d/b/a/f;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lc/e/d/r;->a(Ljava/lang/String;Lc/e/d/p;)V

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lc/e/d/b/a/f;->o:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iput-object p1, p0, Lc/e/d/b/a/f;->p:Lc/e/d/p;

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lc/e/d/b/a/f;->D()Lc/e/d/p;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lc/e/d/m;

    if-eqz v1, :cond_4

    .line 10
    check-cast v0, Lc/e/d/m;

    invoke-virtual {v0, p1}, Lc/e/d/m;->a(Lc/e/d/p;)V

    :goto_0
    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    sget-object v1, Lc/e/d/b/a/f;->m:Lc/e/d/t;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Z)Lc/e/d/d/c;
    .locals 1

    .line 1
    new-instance v0, Lc/e/d/t;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/e/d/t;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lc/e/d/b/a/f;->a(Lc/e/d/p;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lc/e/d/d/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/d/b/a/f;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/e/d/b/a/f;->D()Lc/e/d/p;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lc/e/d/r;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lc/e/d/b/a/f;->o:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public h(J)Lc/e/d/d/c;
    .locals 1

    .line 3
    new-instance v0, Lc/e/d/t;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/e/d/t;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lc/e/d/b/a/f;->a(Lc/e/d/p;)V

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lc/e/d/d/c;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lc/e/d/b/a/f;->C()Lc/e/d/d/c;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lc/e/d/t;

    invoke-direct {v0, p1}, Lc/e/d/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/e/d/b/a/f;->a(Lc/e/d/p;)V

    return-object p0
.end method

.method public u()Lc/e/d/d/c;
    .locals 2

    .line 1
    new-instance v0, Lc/e/d/m;

    invoke-direct {v0}, Lc/e/d/m;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lc/e/d/b/a/f;->a(Lc/e/d/p;)V

    .line 3
    iget-object v1, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public v()Lc/e/d/d/c;
    .locals 2

    .line 1
    new-instance v0, Lc/e/d/r;

    invoke-direct {v0}, Lc/e/d/r;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lc/e/d/b/a/f;->a(Lc/e/d/p;)V

    .line 3
    iget-object v1, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public w()Lc/e/d/d/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/d/b/a/f;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/e/d/b/a/f;->D()Lc/e/d/p;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lc/e/d/m;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public x()Lc/e/d/d/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/d/b/a/f;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/e/d/b/a/f;->D()Lc/e/d/p;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lc/e/d/r;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/e/d/b/a/f;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
