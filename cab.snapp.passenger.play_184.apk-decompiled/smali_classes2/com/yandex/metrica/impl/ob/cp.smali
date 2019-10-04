.class public Lcom/yandex/metrica/impl/ob/cp;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/dw;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 1

    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->H()Lcom/yandex/metrica/impl/ob/dw;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/cp;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/dw;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/dw;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    .line 34
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Lcom/yandex/metrica/impl/ob/dw;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 2

    .line 22
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cp;->a:Lcom/yandex/metrica/impl/ob/dw;

    .line 25
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/dw;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/t;

    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/i;->a(Lcom/yandex/metrica/impl/t;)Lcom/yandex/metrica/impl/i;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
