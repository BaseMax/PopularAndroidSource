.class final Lcom/koushikdutta/async/http/e/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/a;->directory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/koushikdutta/async/http/e/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$4;->c:Lcom/koushikdutta/async/http/e/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/e/a$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/koushikdutta/async/http/e/a$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequest(Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V
    .locals 4

    .line 411
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/b;->getMatcher()Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$4;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/async/http/e/a$4;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/e/a;->getAssetStream(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    .line 419
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3, v0}, Lcom/koushikdutta/async/http/n;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    const/16 v0, 0xc8

    .line 420
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/e/d;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 421
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/e/a$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/koushikdutta/async/http/e/a;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2, p1}, Lcom/koushikdutta/async/http/n;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/n;

    .line 422
    new-instance p1, Lcom/koushikdutta/async/http/e/a$4$1;

    invoke-direct {p1, p0, p2, v1}, Lcom/koushikdutta/async/http/e/a$4$1;-><init>(Lcom/koushikdutta/async/http/e/a$4;Lcom/koushikdutta/async/http/e/d;Ljava/io/InputStream;)V

    invoke-static {v1, p2, p1}, Lcom/koushikdutta/async/af;->pump(Ljava/io/InputStream;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void

    :cond_1
    :goto_0
    const/16 p1, 0x194

    .line 414
    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/e/d;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 415
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->end()V

    return-void
.end method
