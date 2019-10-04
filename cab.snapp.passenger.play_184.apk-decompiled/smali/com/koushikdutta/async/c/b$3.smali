.class final Lcom/koushikdutta/async/c/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/c/b;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/b/i;

.field final synthetic b:Lcom/koushikdutta/async/l;

.field final synthetic c:Lcom/koushikdutta/async/c/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/c/b$3;->c:Lcom/koushikdutta/async/c/b;

    iput-object p2, p0, Lcom/koushikdutta/async/c/b$3;->a:Lcom/koushikdutta/async/b/i;

    iput-object p3, p0, Lcom/koushikdutta/async/c/b$3;->b:Lcom/koushikdutta/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/c/b$3;->a:Lcom/koushikdutta/async/b/i;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;)Z

    return-void

    .line 43
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/c/b$3;->a:Lcom/koushikdutta/async/b/i;

    iget-object v0, p0, Lcom/koushikdutta/async/c/b$3;->b:Lcom/koushikdutta/async/l;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/c/b$3;->a:Lcom/koushikdutta/async/b/i;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;)Z

    return-void
.end method
