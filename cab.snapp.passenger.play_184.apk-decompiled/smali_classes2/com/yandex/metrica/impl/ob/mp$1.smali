.class final Lcom/yandex/metrica/impl/ob/mp$1;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/mp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 9

    .line 30
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x7

    const-string v1, "1xRTT"

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    const-string v1, "CDMA"

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    const-string v1, "EDGE"

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const-string v0, "eHRPD"

    const/16 v1, 0xe

    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/4 v2, 0x5

    const-string v3, "EVDO rev.0"

    .line 37
    invoke-virtual {p0, v2, v3}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/4 v2, 0x6

    const-string v3, "EVDO rev.A"

    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const-string v2, "EVDO rev.B"

    const/16 v3, 0xc

    .line 39
    invoke-virtual {p0, v3, v2}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/4 v4, 0x1

    const-string v5, "GPRS"

    .line 40
    invoke-virtual {p0, v4, v5}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/16 v4, 0x8

    const-string v5, "HSDPA"

    .line 41
    invoke-virtual {p0, v4, v5}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/16 v4, 0xa

    const-string v5, "HSPA"

    .line 42
    invoke-virtual {p0, v4, v5}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const-string v4, "HSPA+"

    const/16 v5, 0xf

    .line 43
    invoke-virtual {p0, v5, v4}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/16 v6, 0x9

    const-string v7, "HSUPA"

    .line 44
    invoke-virtual {p0, v6, v7}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/16 v6, 0xb

    const-string v7, "iDen"

    .line 45
    invoke-virtual {p0, v6, v7}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/4 v7, 0x3

    const-string v8, "UMTS"

    .line 46
    invoke-virtual {p0, v7, v8}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    .line 48
    invoke-virtual {p0, v3, v2}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    .line 49
    invoke-static {v6}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0xd

    const-string v1, "LTE"

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    .line 52
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, v5, v4}, Lcom/yandex/metrica/impl/ob/mp$1;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
