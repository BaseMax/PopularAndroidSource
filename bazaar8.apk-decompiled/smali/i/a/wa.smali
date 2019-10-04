.class public abstract Li/a/wa;
.super Li/a/z;
.source "JobSupport.kt"

# interfaces
.implements Li/a/X;
.implements Li/a/ma;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Li/a/ra;",
        ">",
        "Li/a/z;",
        "Li/a/X;",
        "Li/a/ma;"
    }
.end annotation


# instance fields
.field public final d:Li/a/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


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
    invoke-direct {p0}, Li/a/z;-><init>()V

    iput-object p1, p0, Li/a/wa;->d:Li/a/ra;

    return-void
.end method


# virtual methods
.method public b()Li/a/Da;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/wa;->d:Li/a/ra;

    if-eqz v0, :cond_0

    check-cast v0, Li/a/xa;

    invoke-virtual {v0, p0}, Li/a/xa;->b(Li/a/wa;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
