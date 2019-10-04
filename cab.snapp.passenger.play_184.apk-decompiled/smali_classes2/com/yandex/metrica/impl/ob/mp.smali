.class public Lcom/yandex/metrica/impl/ob/mp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/mx<",
        "Lcom/yandex/metrica/impl/ob/mn;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/mq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/mp$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mp$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/mp;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/mq;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    return-void
.end method

.method private e()Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->c()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private f()Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->c()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    const-string v0, "unknown"

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->c()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 146
    sget-object v2, Lcom/yandex/metrica/impl/ob/mp;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/mq;->c()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/mn;
    .locals 12

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/mq;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/yandex/metrica/impl/ob/mn;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mp;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mp;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mp;->c()Ljava/lang/Integer;

    move-result-object v4

    .line 72
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mp;->b()Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mp;->h()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mp;->g()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/yandex/metrica/impl/ob/mn;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Integer;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method b()Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/au;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    .line 110
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->c()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eq v2, v1, :cond_1

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method c()Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/au;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mp;->b:Lcom/yandex/metrica/impl/ob/mq;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mq;->c()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/mp;->a()Lcom/yandex/metrica/impl/ob/mn;

    move-result-object v0

    return-object v0
.end method
