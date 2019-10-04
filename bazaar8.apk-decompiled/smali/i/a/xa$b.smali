.class public final Li/a/xa$b;
.super Li/a/wa;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a/wa<",
        "Li/a/ra;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Li/a/xa;

.field public final f:Li/a/xa$c;

.field public final g:Li/a/p;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li/a/xa;Li/a/xa$c;Li/a/p;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p3, Li/a/p;->e:Li/a/q;

    invoke-direct {p0, v0}, Li/a/wa;-><init>(Li/a/ra;)V

    iput-object p1, p0, Li/a/xa$b;->e:Li/a/xa;

    iput-object p2, p0, Li/a/xa$b;->f:Li/a/xa$c;

    iput-object p3, p0, Li/a/xa$b;->g:Li/a/p;

    iput-object p4, p0, Li/a/xa$b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li/a/xa$b;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Li/a/xa$b;->e:Li/a/xa;

    iget-object v0, p0, Li/a/xa$b;->f:Li/a/xa$c;

    iget-object v1, p0, Li/a/xa$b;->g:Li/a/p;

    iget-object v2, p0, Li/a/xa$b;->h:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Li/a/xa;->a(Li/a/xa;Li/a/xa$c;Li/a/p;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/xa$b;->g:Li/a/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/xa$b;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
