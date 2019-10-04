.class Lcom/yandex/metrica/impl/ob/ko$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/yandex/metrica/impl/ob/hs;
    .locals 1

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/hs;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/hs;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    return-object v0
.end method
