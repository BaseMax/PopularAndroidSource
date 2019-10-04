.class final Lcom/koushikdutta/async/http/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a$2;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/b/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e;

.field final synthetic b:Lcom/koushikdutta/async/http/a$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a$2;Lcom/koushikdutta/async/http/e;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$2$1;->b:Lcom/koushikdutta/async/http/a$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$2$1;->a:Lcom/koushikdutta/async/http/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$2$1;->b:Lcom/koushikdutta/async/http/a$2;

    iget-object v1, v0, Lcom/koushikdutta/async/http/a$2;->d:Lcom/koushikdutta/async/http/a;

    iget-object v0, p0, Lcom/koushikdutta/async/http/a$2$1;->b:Lcom/koushikdutta/async/http/a$2;

    iget-object v2, v0, Lcom/koushikdutta/async/http/a$2;->a:Lcom/koushikdutta/async/http/c/b;

    iget-object v0, p0, Lcom/koushikdutta/async/http/a$2$1;->b:Lcom/koushikdutta/async/http/a$2;

    iget-object v3, v0, Lcom/koushikdutta/async/http/a$2;->b:Lcom/koushikdutta/async/b/i;

    iget-object v4, p0, Lcom/koushikdutta/async/http/a$2$1;->a:Lcom/koushikdutta/async/http/e;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/e;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
