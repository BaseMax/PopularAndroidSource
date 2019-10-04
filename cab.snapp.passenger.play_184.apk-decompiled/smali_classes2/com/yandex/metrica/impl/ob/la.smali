.class public abstract Lcom/yandex/metrica/impl/ob/la;
.super Lcom/yandex/metrica/impl/ob/lb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/metrica/impl/ob/lc;",
        "A:",
        "Lcom/yandex/metrica/impl/ob/kz$a;",
        "L:Lcom/yandex/metrica/impl/ob/kz$b<",
        "TT;TA;>;>",
        "Lcom/yandex/metrica/impl/ob/lb<",
        "TT;TA;T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/t;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/kz$b;Lcom/yandex/metrica/impl/ob/lb$a;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Lcom/yandex/metrica/impl/ob/lb$a<",
            "TA;>;",
            "Lcom/yandex/metrica/impl/ob/ma;",
            "Lcom/yandex/metrica/impl/ob/t;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/metrica/impl/ob/lb;-><init>(Lcom/yandex/metrica/impl/ob/kz$d;Lcom/yandex/metrica/impl/ob/lb$a;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V

    .line 30
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/la;->a:Lcom/yandex/metrica/impl/ob/t;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/t;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/la;->a:Lcom/yandex/metrica/impl/ob/t;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 0

    monitor-enter p0

    .line 34
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/la;->a:Lcom/yandex/metrica/impl/ob/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
