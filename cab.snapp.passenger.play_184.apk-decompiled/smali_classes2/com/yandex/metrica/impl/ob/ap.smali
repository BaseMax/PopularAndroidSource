.class public Lcom/yandex/metrica/impl/ob/ap;
.super Lcom/yandex/metrica/impl/ob/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ml;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/z;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/ml;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ap;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
