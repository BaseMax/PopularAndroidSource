.class public Lcom/yandex/metrica/profile/NameAttribute;
.super Lcom/yandex/metrica/profile/StringAttribute;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 4

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/ob/oq;

    const/16 v1, 0x64

    const-string v2, "Name attribute"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/oq;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/yandex/metrica/impl/ob/ot;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ot;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/jv;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/jv;-><init>()V

    const-string v3, "appmetrica_name"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/yandex/metrica/profile/StringAttribute;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/os;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method
