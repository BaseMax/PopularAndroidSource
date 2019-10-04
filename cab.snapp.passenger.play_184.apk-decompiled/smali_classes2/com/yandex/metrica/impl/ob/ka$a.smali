.class public final Lcom/yandex/metrica/impl/ob/ka$a;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile k:[Lcom/yandex/metrica/impl/ob/ka$a;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3214
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 3215
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$a;->e()Lcom/yandex/metrica/impl/ob/ka$a;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/impl/ob/ka$a;
    .locals 2

    .line 3176
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$a;->k:[Lcom/yandex/metrica/impl/ob/ka$a;

    if-nez v0, :cond_1

    .line 3177
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3179
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/ka$a;->k:[Lcom/yandex/metrica/impl/ob/ka$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/ka$a;

    .line 3180
    sput-object v1, Lcom/yandex/metrica/impl/ob/ka$a;->k:[Lcom/yandex/metrica/impl/ob/ka$a;

    .line 3182
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3184
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$a;->k:[Lcom/yandex/metrica/impl/ob/ka$a;

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

    .line 3163
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$a;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$a;

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

    .line 3235
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    .line 3236
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 3238
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->c:I

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 3239
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->c(II)V

    .line 3241
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->d:I

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    .line 3242
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 3244
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->e:I

    if-eq v0, v1, :cond_3

    const/4 v2, 0x4

    .line 3245
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 3247
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->f:I

    if-eq v0, v1, :cond_4

    const/4 v2, 0x5

    .line 3248
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 3250
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 3251
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 3253
    :cond_5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->h:Z

    if-eqz v0, :cond_6

    const/4 v2, 0x7

    .line 3254
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 3256
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->i:I

    if-eqz v0, :cond_7

    const/16 v2, 0x8

    .line 3257
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 3259
    :cond_7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->j:I

    if-eq v0, v1, :cond_8

    const/16 v1, 0x9

    .line 3260
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 3262
    :cond_8
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3312
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x18

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x32

    if-eq v0, v1, :cond_5

    const/16 v1, 0x38

    if-eq v0, v1, :cond_4

    const/16 v1, 0x40

    if-eq v0, v1, :cond_2

    const/16 v1, 0x48

    if-eq v0, v1, :cond_1

    .line 3317
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3364
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->j:I

    goto :goto_0

    .line 3351
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 3358
    :cond_3
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->i:I

    goto :goto_0

    .line 3347
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->h:Z

    goto :goto_0

    .line 3343
    :cond_5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->g:Ljava/lang/String;

    goto :goto_0

    .line 3339
    :cond_6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->f:I

    goto :goto_0

    .line 3335
    :cond_7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->e:I

    goto :goto_0

    .line 3331
    :cond_8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->d:I

    goto :goto_0

    .line 3327
    :cond_9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->l()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->c:I

    goto :goto_0

    .line 3323
    :cond_a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->b:I

    goto :goto_0

    :cond_b
    return-object p0
.end method

.method protected final c()I
    .locals 4

    .line 3267
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 3268
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    .line 3270
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3272
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->c:I

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 3274
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3276
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->d:I

    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    .line 3278
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3280
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->e:I

    if-eq v1, v2, :cond_3

    const/4 v3, 0x4

    .line 3282
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3284
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->f:I

    if-eq v1, v2, :cond_4

    const/4 v3, 0x5

    .line 3286
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3288
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    .line 3289
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$a;->g:Ljava/lang/String;

    .line 3290
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3292
    :cond_5
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->h:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 3294
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 3296
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->i:I

    if-eqz v1, :cond_7

    const/16 v3, 0x8

    .line 3298
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3300
    :cond_7
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->j:I

    if-eq v1, v2, :cond_8

    const/16 v2, 0x9

    .line 3302
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method public final e()Lcom/yandex/metrica/impl/ob/ka$a;
    .locals 3

    const/4 v0, -0x1

    .line 3219
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->b:I

    const/4 v1, 0x0

    .line 3220
    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->c:I

    .line 3221
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->d:I

    .line 3222
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->e:I

    .line 3223
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->f:I

    const-string v2, ""

    .line 3224
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$a;->g:Ljava/lang/String;

    .line 3225
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->h:Z

    .line 3226
    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$a;->i:I

    .line 3227
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->j:I

    .line 3228
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$a;->a:I

    return-object p0
.end method
