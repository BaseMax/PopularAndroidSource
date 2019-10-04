.class public Lc/e/a/b/j/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/b/j/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/j/B<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/e/a/b/j/B;

    invoke-direct {v0}, Lc/e/a/b/j/B;-><init>()V

    iput-object v0, p0, Lc/e/a/b/j/h;->a:Lc/e/a/b/j/B;

    return-void
.end method


# virtual methods
.method public a()Lc/e/a/b/j/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/j/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/e/a/b/j/h;->a:Lc/e/a/b/j/B;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/b/j/h;->a:Lc/e/a/b/j/B;

    invoke-virtual {v0, p1}, Lc/e/a/b/j/B;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/j/h;->a:Lc/e/a/b/j/B;

    invoke-virtual {v0, p1}, Lc/e/a/b/j/B;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/b/j/h;->a:Lc/e/a/b/j/B;

    invoke-virtual {v0, p1}, Lc/e/a/b/j/B;->b(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/j/h;->a:Lc/e/a/b/j/B;

    invoke-virtual {v0, p1}, Lc/e/a/b/j/B;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
