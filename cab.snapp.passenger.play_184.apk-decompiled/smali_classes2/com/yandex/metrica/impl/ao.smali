.class public Lcom/yandex/metrica/impl/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    sget-object v0, Lcom/yandex/metrica/impl/ak;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ao;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yandex/metrica/impl/ao;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/z;)Lcom/yandex/metrica/impl/an;
    .locals 3

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/an;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ao;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/an;-><init>(Lcom/yandex/metrica/impl/ob/z;Ljava/util/concurrent/Executor;)V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "YMM-NC["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ni;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/an;->setName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/an;->start()V

    return-object v0
.end method
