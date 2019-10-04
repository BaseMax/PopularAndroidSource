.class Lcom/yandex/metrica/impl/ob/hw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/hw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;)Lcom/yandex/metrica/impl/ob/ie;
    .locals 8

    .line 43
    new-instance v7, Lcom/yandex/metrica/impl/ob/ie;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/ie;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ma;Landroid/os/Looper;Lcom/yandex/metrica/impl/ob/hq;Lcom/yandex/metrica/impl/ob/ft;Lcom/yandex/metrica/impl/ob/fs;)V

    return-object v7
.end method
