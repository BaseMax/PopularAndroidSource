.class final Lcom/koushikdutta/async/http/e/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/a;->websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/e/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/http/e/a$b;

.field final synthetic c:Lcom/koushikdutta/async/http/e/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/a;Ljava/lang/String;Lcom/koushikdutta/async/http/e/a$b;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$3;->c:Lcom/koushikdutta/async/http/e/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/e/a$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/e/a$3;->b:Lcom/koushikdutta/async/http/e/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequest(Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V
    .locals 6

    .line 330
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/b;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, ","

    .line 332
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 333
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 334
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/b;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x194

    if-eqz v0, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 345
    :cond_2
    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/b;->getHeaders()Lcom/koushikdutta/async/http/n;

    move-result-object v0

    const-string v2, "Sec-WebSocket-Protocol"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/n;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v2, p0, Lcom/koushikdutta/async/http/e/a$3;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 347
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/e/d;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 348
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->end()V

    return-void

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/e/a$3;->b:Lcom/koushikdutta/async/http/e/a$b;

    new-instance v1, Lcom/koushikdutta/async/http/ab;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/http/ab;-><init>(Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V

    invoke-interface {v0, v1, p1}, Lcom/koushikdutta/async/http/e/a$b;->onConnected(Lcom/koushikdutta/async/http/z;Lcom/koushikdutta/async/http/e/b;)V

    return-void

    .line 341
    :cond_4
    :goto_2
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/e/d;->code(I)Lcom/koushikdutta/async/http/e/d;

    .line 342
    invoke-interface {p2}, Lcom/koushikdutta/async/http/e/d;->end()V

    return-void
.end method
