.class Lcom/yandex/metrica/impl/bc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/ac;)Lcom/yandex/metrica/impl/bc;
    .locals 1

    .line 599
    new-instance v0, Lcom/yandex/metrica/impl/bc;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/bc;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    return-object v0
.end method
