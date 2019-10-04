.class public final Li/a/Aa;
.super Li/a/O;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/O<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:Lh/f/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/c<",
            "-",
            "Li/a/H;",
            "-",
            "Lh/c/b<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/c/e;Lh/f/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/e;",
            "Lh/f/a/c<",
            "-",
            "Li/a/H;",
            "-",
            "Lh/c/b<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Li/a/O;-><init>(Lh/c/e;Z)V

    .line 2
    iput-object p2, p0, Li/a/Aa;->d:Lh/f/a/c;

    return-void
.end method


# virtual methods
.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/Aa;->d:Lh/f/a/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Li/a/Aa;->d:Lh/f/a/c;

    .line 3
    invoke-static {v0, p0, p0}, Li/a/d/a;->a(Lh/f/a/c;Ljava/lang/Object;Lh/c/b;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
