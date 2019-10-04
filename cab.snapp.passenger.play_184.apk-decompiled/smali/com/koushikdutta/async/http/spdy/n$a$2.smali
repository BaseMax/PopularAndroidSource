.class final Lcom/koushikdutta/async/http/spdy/n$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/n$a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/n$a;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 5

    .line 164
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/l;

    .line 165
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result v1

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/n$a;->e:I

    .line 166
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getInt()I

    move-result p2

    iput p2, v0, Lcom/koushikdutta/async/http/spdy/n$a;->f:I

    .line 168
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget p2, p2, Lcom/koushikdutta/async/http/spdy/n$a;->e:I

    const/high16 v0, -0x80000000

    and-int/2addr p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v3, v2, Lcom/koushikdutta/async/http/spdy/n$a;->f:I

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    ushr-int/lit8 v3, v3, 0x18

    iput v3, v2, Lcom/koushikdutta/async/http/spdy/n$a;->g:I

    .line 170
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v3, v2, Lcom/koushikdutta/async/http/spdy/n$a;->f:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    iput v3, v2, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    if-nez p2, :cond_2

    .line 173
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v2, p2, Lcom/koushikdutta/async/http/spdy/n$a;->e:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p2, Lcom/koushikdutta/async/http/spdy/n$a;->i:I

    .line 174
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget v2, p2, Lcom/koushikdutta/async/http/spdy/n$a;->g:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p2, Lcom/koushikdutta/async/http/spdy/n$a;->j:Z

    .line 175
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    .line 1126
    iget-object p2, p2, Lcom/koushikdutta/async/http/spdy/n$a;->m:Lcom/koushikdutta/async/a/d;

    .line 175
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 177
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget p2, p2, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    if-nez p2, :cond_3

    .line 180
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    .line 2126
    iget-object p2, p2, Lcom/koushikdutta/async/http/spdy/n$a;->m:Lcom/koushikdutta/async/a/d;

    .line 180
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    .line 3126
    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/n$a;->k:Lcom/koushikdutta/async/l;

    .line 180
    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/a/d;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    return-void

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    .line 4126
    iget-object p1, p1, Lcom/koushikdutta/async/http/spdy/n$a;->d:Lcom/koushikdutta/async/p;

    .line 184
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    iget p2, p2, Lcom/koushikdutta/async/http/spdy/n$a;->h:I

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/n$a$2;->a:Lcom/koushikdutta/async/http/spdy/n$a;

    .line 5126
    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/n$a;->n:Lcom/koushikdutta/async/a/d;

    .line 184
    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/p;->read(ILcom/koushikdutta/async/a/d;)V

    :cond_3
    return-void
.end method
