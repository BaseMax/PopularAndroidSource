.class public abstract Lcom/yandex/metrica/impl/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Boolean;

.field private c:Z

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected g:[B

.field protected h:I

.field protected i:[B

.field protected j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected k:I

.field private l:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 120
    iput v0, p0, Lcom/yandex/metrica/impl/aq;->e:I

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aq;->f:Ljava/util/Map;

    const/4 v0, -0x1

    .line 126
    iput v0, p0, Lcom/yandex/metrica/impl/aq;->k:I

    return-void
.end method


# virtual methods
.method public A()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->f:Ljava/util/Map;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 274
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/yandex/metrica/impl/aq;->h:I

    return-void
.end method

.method protected abstract a(Landroid/net/Uri$Builder;)V
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/yandex/metrica/impl/aq;->l:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/yandex/metrica/impl/aq;->d:Ljava/lang/String;

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/yandex/metrica/impl/aq;->a:Ljava/util/List;

    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/yandex/metrica/impl/aq;->j:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 286
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/aq;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public a([B)V
    .locals 1

    const/4 v0, 0x2

    .line 197
    iput v0, p0, Lcom/yandex/metrica/impl/aq;->e:I

    .line 198
    iput-object p1, p0, Lcom/yandex/metrica/impl/aq;->g:[B

    return-void
.end method

.method public b([B)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/yandex/metrica/impl/aq;->i:[B

    return-void
.end method

.method public abstract b()Z
.end method

.method protected b(I)Z
    .locals 1

    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract c()Z
.end method

.method public d()Lcom/yandex/metrica/impl/ob/im;
    .locals 2

    .line 151
    new-instance v0, Lcom/yandex/metrica/impl/ob/io;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/io;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/io;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/im;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aq;->v()V

    .line 159
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aq;->f()V

    return-void
.end method

.method protected f()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aq;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/aq;->a(Landroid/net/Uri$Builder;)V

    .line 165
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/aq;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/yandex/metrica/impl/aq;->e:I

    return v0
.end method

.method public k()[B
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->g:[B

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/yandex/metrica/impl/aq;->h:I

    return v0
.end method

.method public m()[B
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->i:[B

    return-object v0
.end method

.method n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->j:Ljava/util/Map;

    return-object v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected p()Z
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aq;->l()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public r()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/yandex/metrica/impl/aq;->k:I

    return v0
.end method

.method protected s()Ljava/lang/String;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aq;->r()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->a:Ljava/util/List;

    return-object v0
.end method

.method public u()Z
    .locals 3

    .line 264
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aq;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aq;->r()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/aq;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v()V
    .locals 1

    .line 269
    iget v0, p0, Lcom/yandex/metrica/impl/aq;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/impl/aq;->k:I

    return-void
.end method

.method public w()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/aq;->c:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z()Ljava/lang/Long;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/yandex/metrica/impl/aq;->l:Ljava/lang/Long;

    return-object v0
.end method
