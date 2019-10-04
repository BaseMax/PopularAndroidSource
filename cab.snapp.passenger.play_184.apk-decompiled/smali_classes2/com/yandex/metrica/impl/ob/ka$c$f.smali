.class public final Lcom/yandex/metrica/impl/ob/ka$c$f;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field private static volatile g:[Lcom/yandex/metrica/impl/ob/ka$c$f;


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2196
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 2197
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$c$f;->e()Lcom/yandex/metrica/impl/ob/ka$c$f;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/impl/ob/ka$c$f;
    .locals 2

    .line 2170
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$c$f;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    if-nez v0, :cond_1

    .line 2171
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2173
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/ka$c$f;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/ka$c$f;

    .line 2174
    sput-object v1, Lcom/yandex/metrica/impl/ob/ka$c$f;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    .line 2176
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2178
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$c$f;->g:[Lcom/yandex/metrica/impl/ob/ka$c$f;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2164
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$c$f;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2213
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2214
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 2216
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 2217
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 2219
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 2220
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 2222
    :cond_2
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->e:Z

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    .line 2223
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 2225
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 2226
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 2228
    :cond_4
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 2267
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2289
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->f:Ljava/lang/String;

    goto :goto_0

    .line 2285
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->e:Z

    goto :goto_0

    .line 2281
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->d:Ljava/lang/String;

    goto :goto_0

    .line 2277
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->c:I

    goto :goto_0

    .line 2273
    :cond_5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->b:I

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method protected final c()I
    .locals 4

    .line 2233
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 2234
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->b:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2236
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2238
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->c:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 2240
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2242
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 2243
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->d:Ljava/lang/String;

    .line 2244
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2246
    :cond_2
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->e:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 2248
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2250
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    .line 2251
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->f:Ljava/lang/String;

    .line 2252
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public final e()Lcom/yandex/metrica/impl/ob/ka$c$f;
    .locals 2

    const/4 v0, 0x0

    .line 2201
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->b:I

    .line 2202
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->c:I

    const-string v1, ""

    .line 2203
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->d:Ljava/lang/String;

    .line 2204
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->e:Z

    .line 2205
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 2206
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$f;->a:I

    return-object p0
.end method
