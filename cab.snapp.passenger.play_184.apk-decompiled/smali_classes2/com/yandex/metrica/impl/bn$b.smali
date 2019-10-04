.class Lcom/yandex/metrica/impl/bn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/am$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bn$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .line 99
    new-instance v0, Lcom/yandex/metrica/impl/ob/jc;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/jc;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/jc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-static {}, Lcom/yandex/metrica/impl/ob/hg;->a()Lcom/yandex/metrica/impl/ob/hg;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/hb;

    invoke-direct {v3, v0, v1}, Lcom/yandex/metrica/impl/ob/hb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/yandex/metrica/impl/ob/hg;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/hb;

    move-result-object v0

    .line 106
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/hb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/jc;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
