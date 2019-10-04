.class public final Lc/e/a/a/k/b/a;
.super Lc/e/a/a/k/c;
.source "DvbDecoder.java"


# instance fields
.field public final o:Lc/e/a/a/k/b/b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "DvbDecoder"

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/k/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/e/a/a/o/v;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lc/e/a/a/o/v;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Lc/e/a/a/o/v;->A()I

    move-result p1

    .line 4
    invoke-virtual {v0}, Lc/e/a/a/o/v;->A()I

    move-result v0

    .line 5
    new-instance v1, Lc/e/a/a/k/b/b;

    invoke-direct {v1, p1, v0}, Lc/e/a/a/k/b/b;-><init>(II)V

    iput-object v1, p0, Lc/e/a/a/k/b/a;->o:Lc/e/a/a/k/b/b;

    return-void
.end method


# virtual methods
.method public a([BIZ)Lc/e/a/a/k/b/c;
    .locals 1

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lc/e/a/a/k/b/a;->o:Lc/e/a/a/k/b/b;

    invoke-virtual {p3}, Lc/e/a/a/k/b/b;->d()V

    .line 3
    :cond_0
    new-instance p3, Lc/e/a/a/k/b/c;

    iget-object v0, p0, Lc/e/a/a/k/b/a;->o:Lc/e/a/a/k/b/b;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/k/b/b;->a([BI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1}, Lc/e/a/a/k/b/c;-><init>(Ljava/util/List;)V

    return-object p3
.end method

.method public bridge synthetic a([BIZ)Lc/e/a/a/k/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/k/b/a;->a([BIZ)Lc/e/a/a/k/b/c;

    move-result-object p1

    return-object p1
.end method
