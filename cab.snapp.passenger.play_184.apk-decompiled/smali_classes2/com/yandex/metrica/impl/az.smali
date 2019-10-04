.class public Lcom/yandex/metrica/impl/az;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/yandex/metrica/impl/bl;->a(I)Lcom/yandex/metrica/impl/bl$a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 18
    iget-object p0, p0, Lcom/yandex/metrica/impl/bl$a;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Lcom/yandex/metrica/impl/bl;->a:Lcom/yandex/metrica/impl/bl$a;

    iget-object p0, p0, Lcom/yandex/metrica/impl/bl$a;->a:Ljava/lang/String;

    return-object p0
.end method
