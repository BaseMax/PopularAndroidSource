.class public final Li/a/Qa;
.super Li/a/c/s;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/c/s<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lh/c/e;Lh/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/e;",
            "Lh/c/b<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uCont"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Li/a/c/s;-><init>(Lh/c/e;Lh/c/b;)V

    return-void
.end method


# virtual methods
.method public n()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
