.class public final Lcom/yandex/metrica/impl/ob/kg$a$a$a;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/kg$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile d:[Lcom/yandex/metrica/impl/ob/kg$a$a$a;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->e()Lcom/yandex/metrica/impl/ob/kg$a$a$a;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/impl/ob/kg$a$a$a;
    .locals 2

    .line 33
    sget-object v0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->d:[Lcom/yandex/metrica/impl/ob/kg$a$a$a;

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->d:[Lcom/yandex/metrica/impl/ob/kg$a$a$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/kg$a$a$a;

    .line 37
    sput-object v1, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->d:[Lcom/yandex/metrica/impl/ob/kg$a$a$a;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->d:[Lcom/yandex/metrica/impl/ob/kg$a$a$a;

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

    .line 27
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/kg$a$a$a;

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

    .line 64
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/kg$a$a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 89
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method protected final c()I
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 73
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->c:Ljava/lang/String;

    const/4 v2, 0x2

    .line 75
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()Lcom/yandex/metrica/impl/ob/kg$a$a$a;
    .locals 1

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->b:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/yandex/metrica/impl/ob/kg$a$a$a;->a:I

    return-object p0
.end method
