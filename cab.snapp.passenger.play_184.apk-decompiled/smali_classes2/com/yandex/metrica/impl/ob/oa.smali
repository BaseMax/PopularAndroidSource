.class public Lcom/yandex/metrica/impl/ob/oa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/oc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ob;
    .locals 2

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/ob;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/oa;->a()Lcom/yandex/metrica/impl/ob/oe;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/ob;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/oe;)V

    return-object v0
.end method

.method public a()Lcom/yandex/metrica/impl/ob/oe;
    .locals 1

    .line 24
    sget-object v0, Lcom/yandex/metrica/impl/ob/oe;->a:Lcom/yandex/metrica/impl/ob/oe;

    return-object v0
.end method

.method public a([B)[B
    .locals 0

    return-object p1
.end method
