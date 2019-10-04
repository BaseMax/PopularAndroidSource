.class public final Li/a/b/p$d;
.super Li/a/b/q;
.source "ConflatedBroadcastChannel.kt"

# interfaces
.implements Li/a/b/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/b/q<",
        "TE;>;",
        "Li/a/b/t<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Li/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/p<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/a/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/p<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "broadcastChannel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Li/a/b/q;-><init>()V

    iput-object p1, p0, Li/a/b/p$d;->c:Li/a/b/p;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Li/a/b/q;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Li/a/b/d;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Li/a/b/p$d;->c:Li/a/b/p;

    invoke-static {v0, p0}, Li/a/b/p;->a(Li/a/b/p;Li/a/b/p$d;)V

    :cond_0
    return p1
.end method
