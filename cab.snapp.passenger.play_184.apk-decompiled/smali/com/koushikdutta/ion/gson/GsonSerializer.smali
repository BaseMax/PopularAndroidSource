.class public Lcom/koushikdutta/ion/gson/GsonSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/c/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field gson:Lcom/google/gson/e;

.field type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/google/gson/e;Lcom/google/gson/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/e;",
            "Lcom/google/gson/b/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->gson:Lcom/google/gson/e;

    .line 34
    invoke-virtual {p2}, Lcom/google/gson/b/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/e;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/e;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->gson:Lcom/google/gson/e;

    .line 30
    iput-object p2, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->type:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/n;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "TT;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/koushikdutta/async/c/b;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/c/b;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/gson/GsonSerializer$1;-><init>(Lcom/koushikdutta/ion/gson/GsonSerializer;)V

    .line 39
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/b/e;->then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/b/e;

    return-object p1
.end method

.method public write(Lcom/koushikdutta/async/q;Ljava/lang/Object;Lcom/koushikdutta/async/a/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/q;",
            "TT;",
            "Lcom/koushikdutta/async/a/a;",
            ")V"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 53
    iget-object v2, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->gson:Lcom/google/gson/e;

    iget-object v3, p0, Lcom/koushikdutta/ion/gson/GsonSerializer;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v2, p2, v3, v1}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 55
    :try_start_0
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    return-void

    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
