.class public abstract Lc/e/a/a/n/g;
.super Ljava/lang/Object;
.source "BaseDataSource.java"

# interfaces
.implements Lc/e/a/a/n/j;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/n/A;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lc/e/a/a/n/l;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lc/e/a/a/n/g;->a:Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/n/g;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lc/e/a/a/n/i;->a(Lc/e/a/a/n/j;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    .line 4
    iget-object v0, p0, Lc/e/a/a/n/g;->d:Lc/e/a/a/n/l;

    invoke-static {v0}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/n/l;

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lc/e/a/a/n/g;->c:I

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lc/e/a/a/n/g;->b:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/n/A;

    iget-boolean v3, p0, Lc/e/a/a/n/g;->a:Z

    .line 8
    invoke-interface {v2, p0, v0, v3, p1}, Lc/e/a/a/n/A;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/l;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/a/n/A;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/n/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget p1, p0, Lc/e/a/a/n/g;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/a/a/n/g;->c:I

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 3
    iget-object v0, p0, Lc/e/a/a/n/g;->d:Lc/e/a/a/n/l;

    invoke-static {v0}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/n/l;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lc/e/a/a/n/g;->c:I

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lc/e/a/a/n/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/n/A;

    iget-boolean v3, p0, Lc/e/a/a/n/g;->a:Z

    invoke-interface {v2, p0, v0, v3}, Lc/e/a/a/n/A;->a(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lc/e/a/a/n/g;->d:Lc/e/a/a/n/l;

    return-void
.end method

.method public final b(Lc/e/a/a/n/l;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lc/e/a/a/n/g;->c:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lc/e/a/a/n/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/n/A;

    iget-boolean v2, p0, Lc/e/a/a/n/g;->a:Z

    invoke-interface {v1, p0, p1, v2}, Lc/e/a/a/n/A;->c(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lc/e/a/a/n/l;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lc/e/a/a/n/g;->d:Lc/e/a/a/n/l;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lc/e/a/a/n/g;->c:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lc/e/a/a/n/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/n/A;

    iget-boolean v2, p0, Lc/e/a/a/n/g;->a:Z

    invoke-interface {v1, p0, p1, v2}, Lc/e/a/a/n/A;->b(Lc/e/a/a/n/j;Lc/e/a/a/n/l;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
