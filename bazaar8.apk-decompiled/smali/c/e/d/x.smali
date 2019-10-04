.class public abstract Lc/e/d/x;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
.method public final a(Ljava/lang/Object;)Lc/e/d/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc/e/d/p;"
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lc/e/d/b/a/f;

    invoke-direct {v0}, Lc/e/d/b/a/f;-><init>()V

    .line 3
    invoke-virtual {p0, v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lc/e/d/b/a/f;->F()Lc/e/d/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a()Lc/e/d/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/d/w;

    invoke-direct {v0, p0}, Lc/e/d/w;-><init>(Lc/e/d/x;)V

    return-object v0
.end method

.method public abstract a(Lc/e/d/d/b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/b;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a(Lc/e/d/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/p;",
            ")TT;"
        }
    .end annotation

    .line 6
    :try_start_0
    new-instance v0, Lc/e/d/b/a/d;

    invoke-direct {v0, p1}, Lc/e/d/b/a/d;-><init>(Lc/e/d/p;)V

    .line 7
    invoke-virtual {p0, v0}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/c;",
            "TT;)V"
        }
    .end annotation
.end method
