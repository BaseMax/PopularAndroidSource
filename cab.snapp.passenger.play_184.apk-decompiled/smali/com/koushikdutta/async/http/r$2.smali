.class final Lcom/koushikdutta/async/http/r$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/r;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/r;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/koushikdutta/async/http/r$2;->a:Lcom/koushikdutta/async/http/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$2;->a:Lcom/koushikdutta/async/http/r;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->get()B

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/r;->b(Lcom/koushikdutta/async/http/r;B)V

    .line 162
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$2;->a:Lcom/koushikdutta/async/http/r;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/r;->a()V

    return-void
.end method
