.class final Lcom/koushikdutta/async/http/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a;->execute(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/http/c/b;)Lcom/koushikdutta/async/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/c/b;

.field final synthetic b:Lcom/koushikdutta/async/b/i;

.field final synthetic c:Lcom/koushikdutta/async/c/a;

.field final synthetic d:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/c/a;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$2;->d:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$2;->a:Lcom/koushikdutta/async/http/c/b;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a$2;->b:Lcom/koushikdutta/async/b/i;

    iput-object p4, p0, Lcom/koushikdutta/async/http/a$2;->c:Lcom/koushikdutta/async/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/e;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$2;->d:Lcom/koushikdutta/async/http/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a$2;->a:Lcom/koushikdutta/async/http/c/b;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a$2;->b:Lcom/koushikdutta/async/b/i;

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/e;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    .line 641
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$2;->a:Lcom/koushikdutta/async/http/c/b;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/http/e;)V

    .line 643
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$2;->c:Lcom/koushikdutta/async/c/a;

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/c/a;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/http/a$2$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/a$2$1;-><init>(Lcom/koushikdutta/async/http/a$2;Lcom/koushikdutta/async/http/e;)V

    .line 644
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/b/e;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    .line 652
    iget-object p2, p0, Lcom/koushikdutta/async/http/a$2;->b:Lcom/koushikdutta/async/b/i;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/b/i;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/i;

    return-void
.end method
