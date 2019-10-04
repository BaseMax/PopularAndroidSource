.class final Lcom/koushikdutta/async/http/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/f;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/koushikdutta/async/http/f$2;->a:Lcom/koushikdutta/async/http/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/http/f$2;->a:Lcom/koushikdutta/async/http/f;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/f;->k:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/f$2;->a:Lcom/koushikdutta/async/http/f;

    new-instance v1, Lcom/koushikdutta/async/http/l;

    const-string v2, "connection closed before response completed."

    invoke-direct {v1, v2, p1}, Lcom/koushikdutta/async/http/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/f;->report(Ljava/lang/Exception;)V

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/f$2;->a:Lcom/koushikdutta/async/http/f;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/f;->report(Ljava/lang/Exception;)V

    return-void
.end method
