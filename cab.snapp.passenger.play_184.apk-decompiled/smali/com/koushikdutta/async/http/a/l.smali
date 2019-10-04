.class public final Lcom/koushikdutta/async/http/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/a/a<",
        "Lcom/koushikdutta/async/http/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field a:Lcom/koushikdutta/async/http/s;

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/s;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/l;->a:Lcom/koushikdutta/async/http/s;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/t;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/koushikdutta/async/http/s;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/s;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/a/l;->a:Lcom/koushikdutta/async/http/s;

    return-void
.end method

.method private a()V
    .locals 6

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/a/l;->a:Lcom/koushikdutta/async/http/s;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/s;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "UTF-8"

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/http/t;

    .line 35
    invoke-interface {v3}, Lcom/koushikdutta/async/http/t;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    const/16 v2, 0x26

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x0

    .line 41
    invoke-interface {v3}, Lcom/koushikdutta/async/http/t;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    .line 42
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-interface {v3}, Lcom/koushikdutta/async/http/t;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/a/l;->b:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final get()Lcom/koushikdutta/async/http/s;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/l;->a:Lcom/koushikdutta/async/http/s;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/l;->get()Lcom/koushikdutta/async/http/s;

    move-result-object v0

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/x-www-form-urlencoded; charset=utf-8"

    return-object v0
.end method

.method public final length()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/l;->b:[B

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/koushikdutta/async/http/a/l;->a()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/l;->b:[B

    array-length v0, v0

    return v0
.end method

.method public final parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
    .locals 2

    .line 67
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    .line 68
    new-instance v1, Lcom/koushikdutta/async/http/a/l$1;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/http/a/l$1;-><init>(Lcom/koushikdutta/async/http/a/l;Lcom/koushikdutta/async/l;)V

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 74
    new-instance v1, Lcom/koushikdutta/async/http/a/l$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/koushikdutta/async/http/a/l$2;-><init>(Lcom/koushikdutta/async/http/a/l;Lcom/koushikdutta/async/a/a;Lcom/koushikdutta/async/l;)V

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/n;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public final readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/l;->b:[B

    if-nez p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/koushikdutta/async/http/a/l;->a()V

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/l;->b:[B

    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    return-void
.end method
