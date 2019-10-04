.class public final Lc/e/a/b/d/a/a/y;
.super Lc/e/a/b/d/a/a/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/e/a/b/d/a/a$d;",
        ">",
        "Lc/e/a/b/d/a/a/q;"
    }
.end annotation


# instance fields
.field public final c:Lc/e/a/b/d/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/c<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/d/a/c<",
            "TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/b/d/a/a/q;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lc/e/a/b/d/a/a/y;->c:Lc/e/a/b/d/a/c;

    return-void
.end method
