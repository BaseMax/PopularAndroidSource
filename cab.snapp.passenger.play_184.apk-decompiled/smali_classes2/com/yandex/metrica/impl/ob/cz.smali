.class public Lcom/yandex/metrica/impl/ob/cz;
.super Lcom/yandex/metrica/impl/ob/cm;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ns$a;)V
    .locals 0

    .line 57
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/ns;->a(Lcom/yandex/metrica/impl/ob/ns$a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    .line 58
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cz;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/ac;->d(Lcom/yandex/metrica/impl/i;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Z
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/cz;->b(Lcom/yandex/metrica/impl/i;)V

    const/4 p1, 0x1

    return p1
.end method

.method b(Lcom/yandex/metrica/impl/i;)V
    .locals 7

    .line 34
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->m()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ns;->a(Ljava/lang/String;)Lcom/yandex/metrica/d;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cz;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ac;->j()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ns;->a(Ljava/lang/String;)Lcom/yandex/metrica/d;

    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/d;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1062
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/i;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    .line 43
    sget-object v1, Lcom/yandex/metrica/impl/ob/ns$a;->b:Lcom/yandex/metrica/impl/ob/ns$a;

    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/cz;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ns$a;)V

    goto :goto_3

    .line 1070
    :cond_1
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 45
    sget-object v1, Lcom/yandex/metrica/impl/ob/ns$a;->a:Lcom/yandex/metrica/impl/ob/ns$a;

    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/cz;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ns$a;)V

    goto :goto_3

    .line 2066
    :cond_3
    invoke-virtual {v1}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    .line 47
    sget-object v1, Lcom/yandex/metrica/impl/ob/ns$a;->c:Lcom/yandex/metrica/impl/ob/ns$a;

    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/cz;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ns$a;)V

    goto :goto_3

    .line 49
    :cond_5
    sget-object v1, Lcom/yandex/metrica/impl/ob/ns$a;->d:Lcom/yandex/metrica/impl/ob/ns$a;

    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/cz;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ns$a;)V

    .line 52
    :goto_3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cz;->a()Lcom/yandex/metrica/impl/ob/ac;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/ac;->a(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
