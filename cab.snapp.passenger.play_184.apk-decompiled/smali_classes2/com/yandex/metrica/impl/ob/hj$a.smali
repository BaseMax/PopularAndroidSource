.class public Lcom/yandex/metrica/impl/ob/hj$a;
.super Lcom/yandex/metrica/impl/ob/hj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/hk;
    .locals 3

    .line 57
    new-instance v0, Lcom/yandex/metrica/impl/ob/hk;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/hj$a;->c(Landroid/content/pm/FeatureInfo;)Z

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/hk;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method
