.class public abstract Lc/e/a/b/g/f/Da;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/g/f/Tb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lc/e/a/b/g/f/Ca<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lc/e/a/b/g/f/Da<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lc/e/a/b/g/f/Tb;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lc/e/a/b/g/f/Ca;)Lc/e/a/b/g/f/Da;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public final synthetic a(Lc/e/a/b/g/f/Sb;)Lc/e/a/b/g/f/Tb;
    .locals 1

    .line 1
    invoke-interface {p0}, Lc/e/a/b/g/f/Ub;->a()Lc/e/a/b/g/f/Sb;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc/e/a/b/g/f/Ca;

    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/Da;->a(Lc/e/a/b/g/f/Ca;)Lc/e/a/b/g/f/Da;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
