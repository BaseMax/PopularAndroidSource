.class public Lcom/yandex/metrica/impl/ob/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/u;

.field private final b:Lcom/yandex/metrica/CounterConfiguration;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/u;->a(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/u;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->a:Lcom/yandex/metrica/impl/ob/u;

    .line 24
    invoke-static {p1}, Lcom/yandex/metrica/CounterConfiguration;->c(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/t;->b:Lcom/yandex/metrica/CounterConfiguration;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/u;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->a:Lcom/yandex/metrica/impl/ob/u;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/CounterConfiguration;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/t;->b:Lcom/yandex/metrica/CounterConfiguration;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientConfiguration{mProcessConfiguration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->a:Lcom/yandex/metrica/impl/ob/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCounterConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/t;->b:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
