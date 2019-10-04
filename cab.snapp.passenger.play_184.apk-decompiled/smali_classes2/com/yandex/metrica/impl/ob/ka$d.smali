.class public final Lcom/yandex/metrica/impl/ob/ka$d;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static volatile f:[Lcom/yandex/metrica/impl/ob/ka$d;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3412
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 3413
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$d;->e()Lcom/yandex/metrica/impl/ob/ka$d;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/impl/ob/ka$d;
    .locals 2

    .line 3389
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$d;->f:[Lcom/yandex/metrica/impl/ob/ka$d;

    if-nez v0, :cond_1

    .line 3390
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3392
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/ka$d;->f:[Lcom/yandex/metrica/impl/ob/ka$d;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/ka$d;

    .line 3393
    sput-object v1, Lcom/yandex/metrica/impl/ob/ka$d;->f:[Lcom/yandex/metrica/impl/ob/ka$d;

    .line 3395
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3397
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$d;->f:[Lcom/yandex/metrica/impl/ob/ka$d;

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

    .line 3383
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$d;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3428
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 3429
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->c:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3430
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->c(II)V

    .line 3432
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 3433
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 3435
    :cond_1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->e:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 3436
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 3438
    :cond_2
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3466
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 3471
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3489
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->e:Z

    goto :goto_0

    .line 3485
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->d:Ljava/lang/String;

    goto :goto_0

    .line 3481
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->l()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->c:I

    goto :goto_0

    .line 3477
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method protected final c()I
    .locals 3

    .line 3443
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 3444
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$d;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 3445
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3446
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$d;->c:I

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 3448
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3450
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$d;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 3451
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$d;->d:Ljava/lang/String;

    .line 3452
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3454
    :cond_1
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ka$d;->e:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 3456
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final e()Lcom/yandex/metrica/impl/ob/ka$d;
    .locals 2

    const-string v0, ""

    .line 3417
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3418
    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$d;->c:I

    .line 3419
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->d:Ljava/lang/String;

    .line 3420
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ka$d;->e:Z

    const/4 v0, -0x1

    .line 3421
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$d;->a:I

    return-object p0
.end method
