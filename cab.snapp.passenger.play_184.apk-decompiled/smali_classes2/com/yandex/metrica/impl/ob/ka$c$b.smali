.class public final Lcom/yandex/metrica/impl/ob/ka$c$b;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:D

.field public c:D

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 193
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$c$b;->d()Lcom/yandex/metrica/impl/ob/ka$c$b;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$c$b;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->b:D

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ID)V

    .line 213
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->c:D

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ID)V

    .line 214
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    .line 215
    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 217
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->e:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 218
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 220
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->f:I

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 221
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 223
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->g:I

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    .line 224
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 226
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->h:I

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    .line 227
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 229
    :cond_4
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->i:I

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    .line 230
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 232
    :cond_5
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_8

    const/16 v1, 0x18

    if-eq v0, v1, :cond_7

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/16 v1, 0x38

    if-eq v0, v1, :cond_3

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    .line 279
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 313
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 318
    :cond_2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->i:I

    goto :goto_0

    .line 309
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->h:I

    goto :goto_0

    .line 305
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->g:I

    goto :goto_0

    .line 301
    :cond_5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->f:I

    goto :goto_0

    .line 297
    :cond_6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->e:I

    goto :goto_0

    .line 293
    :cond_7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->d:J

    goto :goto_0

    .line 289
    :cond_8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->c:D

    goto :goto_0

    .line 285
    :cond_9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->b:D

    goto :goto_0

    :cond_a
    return-object p0
.end method

.method protected final c()I
    .locals 6

    .line 237
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    const/4 v1, 0x1

    .line 239
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    .line 241
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    .line 244
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->e:I

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 248
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->f:I

    if-eqz v1, :cond_2

    const/4 v2, 0x5

    .line 252
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->g:I

    if-eqz v1, :cond_3

    const/4 v2, 0x6

    .line 256
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->h:I

    if-eqz v1, :cond_4

    const/4 v2, 0x7

    .line 260
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_4
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->i:I

    if-eqz v1, :cond_5

    const/16 v2, 0x8

    .line 264
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final d()Lcom/yandex/metrica/impl/ob/ka$c$b;
    .locals 2

    const-wide/16 v0, 0x0

    .line 197
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->b:D

    .line 198
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->c:D

    const-wide/16 v0, 0x0

    .line 199
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->d:J

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->e:I

    .line 201
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->f:I

    .line 202
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->g:I

    .line 203
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->h:I

    .line 204
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->i:I

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$b;->a:I

    return-object p0
.end method
