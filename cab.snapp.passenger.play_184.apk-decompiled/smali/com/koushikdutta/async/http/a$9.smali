.class final Lcom/koushikdutta/async/http/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/c/b;

.field final synthetic b:Lcom/koushikdutta/async/b/i;

.field final synthetic c:Lcom/koushikdutta/async/http/e;

.field final synthetic d:Ljava/lang/Exception;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/e;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$9;->f:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$9;->a:Lcom/koushikdutta/async/http/c/b;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a$9;->b:Lcom/koushikdutta/async/b/i;

    iput-object p4, p0, Lcom/koushikdutta/async/http/a$9;->c:Lcom/koushikdutta/async/http/e;

    iput-object p5, p0, Lcom/koushikdutta/async/http/a$9;->d:Ljava/lang/Exception;

    iput-object p6, p0, Lcom/koushikdutta/async/http/a$9;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 534
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$9;->a:Lcom/koushikdutta/async/http/c/b;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a$9;->b:Lcom/koushikdutta/async/b/i;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a$9;->c:Lcom/koushikdutta/async/http/e;

    iget-object v3, p0, Lcom/koushikdutta/async/http/a$9;->d:Ljava/lang/Exception;

    iget-object v4, p0, Lcom/koushikdutta/async/http/a$9;->e:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/http/e;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
