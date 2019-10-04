.class public final Li/a/n;
.super Li/a/sa;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a/sa<",
        "Li/a/ra;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Li/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/a/ra;Li/a/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/ra;",
            "Li/a/k<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Li/a/sa;-><init>(Li/a/ra;)V

    iput-object p2, p0, Li/a/n;->e:Li/a/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li/a/n;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Li/a/n;->e:Li/a/k;

    iget-object v0, p0, Li/a/wa;->d:Li/a/ra;

    invoke-virtual {p1, v0}, Li/a/k;->a(Li/a/ra;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/a/k;->b(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/n;->e:Li/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
