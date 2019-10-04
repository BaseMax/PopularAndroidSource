.class final Lcom/koushikdutta/async/http/a/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a/l;->parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a/a;

.field final synthetic b:Lcom/koushikdutta/async/l;

.field final synthetic c:Lcom/koushikdutta/async/http/a/l;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/l;Lcom/koushikdutta/async/a/a;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/l$2;->c:Lcom/koushikdutta/async/http/a/l;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/l$2;->a:Lcom/koushikdutta/async/a/a;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a/l$2;->b:Lcom/koushikdutta/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/l$2;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void

    .line 82
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/l$2;->c:Lcom/koushikdutta/async/http/a/l;

    iget-object v0, p0, Lcom/koushikdutta/async/http/a/l$2;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/s;->parseUrlEncoded(Ljava/lang/String;)Lcom/koushikdutta/async/http/s;

    move-result-object v0

    .line 1018
    iput-object v0, p1, Lcom/koushikdutta/async/http/a/l;->a:Lcom/koushikdutta/async/http/s;

    .line 83
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/l$2;->a:Lcom/koushikdutta/async/a/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/l$2;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
