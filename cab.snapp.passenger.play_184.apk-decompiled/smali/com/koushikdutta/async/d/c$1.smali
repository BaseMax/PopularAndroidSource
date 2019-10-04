.class final Lcom/koushikdutta/async/d/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/d/c;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/koushikdutta/async/d/c;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/d/c;Ljava/lang/Exception;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/koushikdutta/async/d/c$1;->b:Lcom/koushikdutta/async/d/c;

    iput-object p2, p0, Lcom/koushikdutta/async/d/c$1;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/d/c$1;->a:Ljava/lang/Exception;

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/d/c$1;->b:Lcom/koushikdutta/async/d/c;

    iget-object v1, v1, Lcom/koushikdutta/async/d/c;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/d/c$1;->b:Lcom/koushikdutta/async/d/c;

    iget-object v1, v1, Lcom/koushikdutta/async/d/c;->h:Lcom/koushikdutta/async/a/a;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/koushikdutta/async/d/c$1;->b:Lcom/koushikdutta/async/d/c;

    iget-object v1, v1, Lcom/koushikdutta/async/d/c;->h:Lcom/koushikdutta/async/a/a;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
