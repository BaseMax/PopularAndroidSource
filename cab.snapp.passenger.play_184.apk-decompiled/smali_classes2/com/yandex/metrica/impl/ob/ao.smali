.class public Lcom/yandex/metrica/impl/ob/ao;
.super Lcom/yandex/metrica/impl/ob/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ao$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/ac<",
        "Lcom/yandex/metrica/impl/ob/bh;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/kv;

.field private final b:Lcom/yandex/metrica/impl/ob/ao$a;

.field private final c:Lcom/yandex/metrica/impl/bs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/v;Lcom/yandex/metrica/impl/ob/kv;Lcom/yandex/metrica/impl/bs;)V
    .locals 11

    move-object v9, p0

    move-object/from16 v10, p8

    .line 46
    new-instance v7, Lcom/yandex/metrica/impl/ob/am;

    invoke-direct {v7, v10}, Lcom/yandex/metrica/impl/ob/am;-><init>(Lcom/yandex/metrica/impl/bs;)V

    new-instance v8, Lcom/yandex/metrica/impl/ob/me;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/me;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/ac;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/v;Lcom/yandex/metrica/impl/ob/at$a;Lcom/yandex/metrica/impl/ob/md;)V

    move-object/from16 v0, p7

    .line 56
    iput-object v0, v9, Lcom/yandex/metrica/impl/ob/ao;->a:Lcom/yandex/metrica/impl/ob/kv;

    .line 57
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ao;->g()Lcom/yandex/metrica/impl/ob/bx;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/yandex/metrica/impl/s$a;->c:Lcom/yandex/metrica/impl/s$a;

    new-instance v2, Lcom/yandex/metrica/impl/ob/dm;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bx;->a()Lcom/yandex/metrica/impl/ob/do;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/dm;-><init>(Lcom/yandex/metrica/impl/ob/do;)V

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bx;->a(Lcom/yandex/metrica/impl/s$a;Lcom/yandex/metrica/impl/ob/dh;)V

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/ao$a;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/ao$a;-><init>(Lcom/yandex/metrica/impl/ob/ao;)V

    iput-object v0, v9, Lcom/yandex/metrica/impl/ob/ao;->b:Lcom/yandex/metrica/impl/ob/ao$a;

    .line 60
    iget-object v0, v9, Lcom/yandex/metrica/impl/ob/ao;->a:Lcom/yandex/metrica/impl/ob/kv;

    iget-object v1, v9, Lcom/yandex/metrica/impl/ob/ao;->b:Lcom/yandex/metrica/impl/ob/ao$a;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kv;->a(Lcom/yandex/metrica/impl/ob/kv$a;)V

    .line 61
    iput-object v10, v9, Lcom/yandex/metrica/impl/ob/ao;->c:Lcom/yandex/metrica/impl/bs;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/ac;->a(Lcom/yandex/metrica/impl/ob/t;)V

    .line 86
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ao;->c:Lcom/yandex/metrica/impl/bs;

    .line 87
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->o()Ljava/lang/Boolean;

    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bs;->a(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
