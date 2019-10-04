.class public abstract Li/a/b/s;
.super Li/a/c/k;
.source "AbstractChannel.kt"

# interfaces
.implements Li/a/b/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/c/k;",
        "Li/a/b/u<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Li/a/b/o;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/o<",
            "*>;)V"
        }
    .end annotation
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Li/a/b/c;->a:Ljava/lang/Object;

    return-object v0
.end method
