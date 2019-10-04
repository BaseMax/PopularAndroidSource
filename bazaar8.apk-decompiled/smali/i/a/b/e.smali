.class public final Li/a/b/e;
.super Li/a/c/k$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/a/b/d;->a(Li/a/b/w;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Li/a/c/k;

.field public final synthetic e:Li/a/b/d;


# direct methods
.method public constructor <init>(Li/a/c/k;Li/a/c/k;Li/a/b/d;)V
    .locals 0

    iput-object p1, p0, Li/a/b/e;->d:Li/a/c/k;

    iput-object p3, p0, Li/a/b/e;->e:Li/a/b/d;

    .line 1
    invoke-direct {p0, p2}, Li/a/c/k$a;-><init>(Li/a/c/k;)V

    return-void
.end method


# virtual methods
.method public a(Li/a/c/k;)Ljava/lang/Object;
    .locals 1

    const-string v0, "affected"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Li/a/b/e;->e:Li/a/b/d;

    invoke-virtual {p1}, Li/a/b/d;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Li/a/c/j;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Li/a/c/k;

    invoke-virtual {p0, p1}, Li/a/b/e;->a(Li/a/c/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
