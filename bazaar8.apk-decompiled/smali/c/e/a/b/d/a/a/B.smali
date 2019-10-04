.class public final Lc/e/a/b/d/a/a/B;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lc/e/a/b/d/a/a/r;

.field public final b:I

.field public final c:Lc/e/a/b/d/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/r;ILc/e/a/b/d/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/a/r;",
            "I",
            "Lc/e/a/b/d/a/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/d/a/a/B;->a:Lc/e/a/b/d/a/a/r;

    .line 3
    iput p2, p0, Lc/e/a/b/d/a/a/B;->b:I

    .line 4
    iput-object p3, p0, Lc/e/a/b/d/a/a/B;->c:Lc/e/a/b/d/a/c;

    return-void
.end method
