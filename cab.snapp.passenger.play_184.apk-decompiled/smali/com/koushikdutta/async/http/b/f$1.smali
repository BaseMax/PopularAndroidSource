.class final Lcom/koushikdutta/async/http/b/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/b/f;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/b/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/b/f;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/f$1;->a:Lcom/koushikdutta/async/http/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "no-cache"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/f$1;->a:Lcom/koushikdutta/async/http/b/f;

    .line 1036
    iput-boolean v1, p1, Lcom/koushikdutta/async/http/b/f;->a:Z

    return-void

    :cond_0
    const-string v0, "no-store"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/f$1;->a:Lcom/koushikdutta/async/http/b/f;

    .line 2036
    iput-boolean v1, p1, Lcom/koushikdutta/async/http/b/f;->b:Z

    return-void

    :cond_1
    const-string v0, "max-age"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/f$1;->a:Lcom/koushikdutta/async/http/b/f;

    invoke-static {p2}, Lcom/koushikdutta/async/http/b/a;->parseSeconds(Ljava/lang/String;)I

    move-result p2

    .line 3036
    iput p2, p1, Lcom/koushikdutta/async/http/b/f;->c:I

    return-void

    :cond_2
    const-string v0, "s-maxage"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/f$1;->a:Lcom/koushikdutta/async/http/b/f;

    invoke-static {p2}, Lcom/koushikdutta/async/http/b/a;->parseSeconds(Ljava/lang/String;)I

    move-result p2

    .line 4036
    iput p2, p1, Lcom/koushikdutta/async/http/b/f;->d:I

    return-void

    :cond_3
    const-string p2, "public"

    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 132
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/f$1;->a:Lcom/koushikdutta/async/http/b/f;

    .line 5036
    iput-boolean v1, p1, Lcom/koushikdutta/async/http/b/f;->e:Z

    return-void

    :cond_4
    const-string p2, "must-revalidate"

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 134
    iget-object p1, p0, Lcom/koushikdutta/async/http/b/f$1;->a:Lcom/koushikdutta/async/http/b/f;

    .line 6036
    iput-boolean v1, p1, Lcom/koushikdutta/async/http/b/f;->f:Z

    :cond_5
    return-void
.end method
