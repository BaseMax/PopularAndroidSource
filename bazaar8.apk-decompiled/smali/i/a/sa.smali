.class public abstract Li/a/sa;
.super Li/a/wa;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Li/a/ra;",
        ">",
        "Li/a/wa<",
        "TJ;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Li/a/ra;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Li/a/wa;-><init>(Li/a/ra;)V

    return-void
.end method
