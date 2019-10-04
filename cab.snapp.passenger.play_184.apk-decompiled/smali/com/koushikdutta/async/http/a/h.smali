.class public final Lcom/koushikdutta/async/http/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/a/a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/binary"


# instance fields
.field a:Ljava/io/InputStream;

.field b:I

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/binary"

    .line 14
    iput-object v0, p0, Lcom/koushikdutta/async/http/a/h;->c:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/h;->a:Ljava/io/InputStream;

    .line 23
    iput p2, p0, Lcom/koushikdutta/async/http/a/h;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/io/InputStream;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/h;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/h;->get()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final length()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/koushikdutta/async/http/a/h;->b:I

    return v0
.end method

.method public final parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 33
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final readFullyOnRequest()Z
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final setContentType(Ljava/lang/String;)Lcom/koushikdutta/async/http/a/h;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/h;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 2

    .line 28
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/h;->a:Ljava/io/InputStream;

    iget v0, p0, Lcom/koushikdutta/async/http/a/h;->b:I

    if-gez v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    :goto_0
    invoke-static {p1, v0, v1, p2, p3}, Lcom/koushikdutta/async/af;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
