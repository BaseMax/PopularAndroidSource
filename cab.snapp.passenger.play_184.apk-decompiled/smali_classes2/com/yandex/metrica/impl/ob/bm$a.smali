.class Lcom/yandex/metrica/impl/ob/bm$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/bn;
    .locals 2

    .line 58
    new-instance v0, Lcom/yandex/metrica/impl/ob/bn;

    new-instance v1, Lcom/yandex/metrica/impl/ob/bq$b;

    .line 59
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/bq$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1, p3, p4}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Lcom/yandex/metrica/impl/ob/bq$b;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V

    return-object v0
.end method
