.class public Lcom/yandex/metrica/impl/ob/av;
.super Lcom/yandex/metrica/impl/ob/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/ac<",
        "Lcom/yandex/metrica/impl/ob/bj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/bs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/bs;)V
    .locals 9

    .line 25
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ls;->a()Lcom/yandex/metrica/impl/ob/ls;

    move-result-object v2

    sget-object v6, Lcom/yandex/metrica/impl/ak;->b:Lcom/yandex/metrica/impl/ob/v;

    new-instance v7, Lcom/yandex/metrica/impl/ob/au;

    invoke-direct {v7, p5}, Lcom/yandex/metrica/impl/ob/au;-><init>(Lcom/yandex/metrica/impl/bs;)V

    new-instance v8, Lcom/yandex/metrica/impl/ob/me;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/me;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    .line 24
    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/ac;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/v;Lcom/yandex/metrica/impl/ob/at$a;Lcom/yandex/metrica/impl/ob/md;)V

    .line 29
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/z;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/av;->a:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/bs;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 2

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/ac;->a(Lcom/yandex/metrica/impl/ob/t;)V

    .line 36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/av;->b:Lcom/yandex/metrica/impl/bs;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/av;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->o()Ljava/lang/Boolean;

    move-result-object p1

    .line 37
    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/bs;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
