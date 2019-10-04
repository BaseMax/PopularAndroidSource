.class public Lcom/yandex/metrica/impl/ob/kk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/yandex/metrica/impl/ob/km;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/kp;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/yandex/metrica/impl/ob/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/kn<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/kj;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/kp;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/kn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/kp;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/yandex/metrica/impl/ob/kn<",
            "TS;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kk;->a:Lcom/yandex/metrica/impl/ob/kp;

    .line 22
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kk;->b:Ljava/util/concurrent/Executor;

    .line 23
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/kk;->c:Lcom/yandex/metrica/impl/ob/kn;

    .line 24
    new-instance p1, Lcom/yandex/metrica/impl/ob/kj;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/kk;->a:Lcom/yandex/metrica/impl/ob/kp;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/kj;-><init>(Lcom/yandex/metrica/impl/ob/kp;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kk;->d:Lcom/yandex/metrica/impl/ob/kj;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/kn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/kn<",
            "TS;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->c:Lcom/yandex/metrica/impl/ob/kn;

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/kp;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->a:Lcom/yandex/metrica/impl/ob/kp;

    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/kj;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kk;->d:Lcom/yandex/metrica/impl/ob/kj;

    return-object v0
.end method
