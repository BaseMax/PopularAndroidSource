.class Lcom/yandex/metrica/impl/ob/hg$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/hg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/hg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/ob/hg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/hg;-><init>(B)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/hg$b;->a:Lcom/yandex/metrica/impl/ob/hg;

    return-void
.end method

.method static synthetic a()Lcom/yandex/metrica/impl/ob/hg;
    .locals 1

    .line 60
    sget-object v0, Lcom/yandex/metrica/impl/ob/hg$b;->a:Lcom/yandex/metrica/impl/ob/hg;

    return-object v0
.end method
