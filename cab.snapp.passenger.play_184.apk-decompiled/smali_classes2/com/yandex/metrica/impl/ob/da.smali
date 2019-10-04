.class public Lcom/yandex/metrica/impl/ob/da;
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
    .locals 2

    .line 1032
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/da;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/da;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ac;->a(Ljava/lang/String;)V

    :cond_1
    return v1
.end method
