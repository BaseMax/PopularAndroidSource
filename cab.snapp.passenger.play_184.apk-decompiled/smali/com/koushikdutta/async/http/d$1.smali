.class final Lcom/koushikdutta/async/http/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/d;->getRequestLine()Lcom/koushikdutta/async/http/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/d;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/koushikdutta/async/http/d$1;->a:Lcom/koushikdutta/async/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/koushikdutta/async/http/d$1;->a:Lcom/koushikdutta/async/http/d;

    invoke-static {v0}, Lcom/koushikdutta/async/http/d;->a(Lcom/koushikdutta/async/http/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProtocolVersion()Lcom/koushikdutta/async/http/u;
    .locals 3

    .line 21
    new-instance v0, Lcom/koushikdutta/async/http/u;

    const/4 v1, 0x1

    const-string v2, "HTTP"

    invoke-direct {v0, v2, v1, v1}, Lcom/koushikdutta/async/http/u;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/http/d$1;->a:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/http/d$1;->a:Lcom/koushikdutta/async/http/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d;->c:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "%s %s HTTP/1.1"

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/koushikdutta/async/http/d$1;->a:Lcom/koushikdutta/async/http/d;

    invoke-static {v5}, Lcom/koushikdutta/async/http/d;->a(Lcom/koushikdutta/async/http/d;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/koushikdutta/async/http/d$1;->a:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/d$1;->a:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v0, "/"

    .line 36
    :cond_2
    iget-object v5, p0, Lcom/koushikdutta/async/http/d$1;->a:Lcom/koushikdutta/async/http/d;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/d;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 37
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_3
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/koushikdutta/async/http/d$1;->a:Lcom/koushikdutta/async/http/d;

    invoke-static {v6}, Lcom/koushikdutta/async/http/d;->a(Lcom/koushikdutta/async/http/d;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    aput-object v0, v3, v1

    invoke-static {v5, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
