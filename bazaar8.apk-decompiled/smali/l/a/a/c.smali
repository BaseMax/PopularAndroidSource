.class public final Ll/a/a/c;
.super Ljava/lang/Object;
.source "GsonResponseBodyConverter.java"

# interfaces
.implements Ll/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/j<",
        "Lj/S;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/d/j;

.field public final b:Lc/e/d/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/d/j;Lc/e/d/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/j;",
            "Lc/e/d/x<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/a/a/c;->a:Lc/e/d/j;

    .line 3
    iput-object p2, p0, Ll/a/a/c;->b:Lc/e/d/x;

    return-void
.end method


# virtual methods
.method public a(Lj/S;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/S;",
            ")TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ll/a/a/c;->a:Lc/e/d/j;

    invoke-virtual {p1}, Lj/S;->s()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/d/j;->a(Ljava/io/Reader;)Lc/e/d/d/b;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ll/a/a/c;->b:Lc/e/d/x;

    invoke-virtual {v1, v0}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lc/e/d/d/b;->K()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lj/S;->close()V

    return-object v1

    .line 6
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {p1}, Lj/S;->close()V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lj/S;

    invoke-virtual {p0, p1}, Ll/a/a/c;->a(Lj/S;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
