.class public Lcom/yandex/metrica/impl/ob/cu;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cu;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->i()V

    const/4 p1, 0x0

    return p1
.end method
