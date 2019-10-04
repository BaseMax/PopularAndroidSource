.class public final Lcom/koushikdutta/async/http/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/a/a<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/binary"


# instance fields
.field a:Ljava/io/File;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/binary"

    .line 18
    iput-object v0, p0, Lcom/koushikdutta/async/http/a/c;->b:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/c;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/binary"

    .line 18
    iput-object v0, p0, Lcom/koushikdutta/async/http/a/c;->b:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/c;->a:Ljava/io/File;

    .line 26
    iput-object p2, p0, Lcom/koushikdutta/async/http/a/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/io/File;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/c;->a:Ljava/io/File;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/c;->get()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final length()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 36
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final readFullyOnRequest()Z
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public final write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/c;->a:Ljava/io/File;

    invoke-static {p1, p2, p3}, Lcom/koushikdutta/async/af;->pump(Ljava/io/File;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
