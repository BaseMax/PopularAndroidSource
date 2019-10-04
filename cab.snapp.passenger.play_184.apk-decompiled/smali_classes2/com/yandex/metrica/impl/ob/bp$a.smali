.class public Lcom/yandex/metrica/impl/ob/bp$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bq;Lcom/yandex/metrica/impl/ob/bs;)Lcom/yandex/metrica/impl/ob/bp;
    .locals 1

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/bp;

    invoke-direct {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/bp;-><init>(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bq;Lcom/yandex/metrica/impl/ob/bs;)V

    return-object v0
.end method
