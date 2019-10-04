.class Lcom/yandex/metrica/impl/ob/bn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/lb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/bn;-><init>(Lcom/yandex/metrica/impl/ob/bq$b;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/lb$a<",
        "Lcom/yandex/metrica/impl/ob/bq$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/bq$a;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/bq$a;
    .locals 5

    .line 1064
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p2

    if-nez p1, :cond_0

    .line 1066
    new-instance p1, Lcom/yandex/metrica/impl/ob/bq$a;

    .line 1067
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->e()Ljava/lang/String;

    move-result-object v0

    .line 1068
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->i()Ljava/lang/String;

    move-result-object v2

    .line 1070
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/yandex/metrica/impl/ob/bq$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 1073
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/bq$a;

    .line 1074
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/bq$a;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Ljava/lang/String;

    .line 1075
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/bq$a;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    check-cast v2, Ljava/lang/String;

    .line 1076
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/yandex/metrica/impl/ob/bq$a;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v3, v4

    :cond_3
    check-cast v3, Ljava/lang/String;

    .line 1077
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->f()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/bq$a;->a:Ljava/lang/String;

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, p2

    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/yandex/metrica/impl/ob/bq$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/t;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/yandex/metrica/impl/ob/bq$a;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bn$1;->a(Lcom/yandex/metrica/impl/ob/bq$a;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/bq$a;

    move-result-object p1

    return-object p1
.end method
