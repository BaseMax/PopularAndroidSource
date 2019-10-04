.class final Lcom/koushikdutta/async/http/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/b/d;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/b/d;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/b/d;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/d$1;->a:Lcom/koushikdutta/async/http/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "no-cache"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 74
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/d$1;->a:Lcom/koushikdutta/async/http/b/d;

    .line 1030
    iput-boolean v1, p1, Lcom/koushikdutta/async/http/b/d;->a:Z

    return-void

    :cond_0
    const-string v0, "max-age"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/d$1;->a:Lcom/koushikdutta/async/http/b/d;

    invoke-static {p2}, Lcom/koushikdutta/async/http/b/a;->parseSeconds(Ljava/lang/String;)I

    move-result p2

    .line 2030
    iput p2, p1, Lcom/koushikdutta/async/http/b/d;->b:I

    return-void

    :cond_1
    const-string v0, "max-stale"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/d$1;->a:Lcom/koushikdutta/async/http/b/d;

    invoke-static {p2}, Lcom/koushikdutta/async/http/b/a;->parseSeconds(Ljava/lang/String;)I

    move-result p2

    .line 3030
    iput p2, p1, Lcom/koushikdutta/async/http/b/d;->c:I

    return-void

    :cond_2
    const-string v0, "min-fresh"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/d$1;->a:Lcom/koushikdutta/async/http/b/d;

    invoke-static {p2}, Lcom/koushikdutta/async/http/b/a;->parseSeconds(Ljava/lang/String;)I

    move-result p2

    .line 4030
    iput p2, p1, Lcom/koushikdutta/async/http/b/d;->d:I

    return-void

    :cond_3
    const-string p2, "only-if-cached"

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 82
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/d$1;->a:Lcom/koushikdutta/async/http/b/d;

    .line 5030
    iput-boolean v1, p1, Lcom/koushikdutta/async/http/b/d;->e:Z

    :cond_4
    return-void
.end method
