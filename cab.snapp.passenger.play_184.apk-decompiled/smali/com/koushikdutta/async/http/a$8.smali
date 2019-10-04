.class final Lcom/koushikdutta/async/http/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/f;

.field final synthetic b:Lcom/koushikdutta/async/http/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a;Lcom/koushikdutta/async/http/f;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/koushikdutta/async/http/a$8;->b:Lcom/koushikdutta/async/http/a;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a$8;->a:Lcom/koushikdutta/async/http/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/koushikdutta/async/http/a$8;->a:Lcom/koushikdutta/async/http/f;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/f;->report(Ljava/lang/Exception;)V

    return-void

    .line 466
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a$8;->a:Lcom/koushikdutta/async/http/f;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/f;->a()V

    return-void
.end method
