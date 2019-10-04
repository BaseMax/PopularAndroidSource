.class public Lcom/yandex/metrica/impl/ob/dc;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dc;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->G()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->t()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dc;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/ac;->b(Ljava/lang/String;)V

    .line 29
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dc;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object p1

    invoke-static {}, Lcom/yandex/metrica/impl/e;->a()Lcom/yandex/metrica/impl/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/ac;->a(Lcom/yandex/metrica/impl/i;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
