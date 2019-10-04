.class final Lcom/yandex/metrica/impl/bc$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ka$c$e;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lorg/a/c;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ka$c$e;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/a/c;",
            ")V"
        }
    .end annotation

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-object p1, p0, Lcom/yandex/metrica/impl/bc$c;->a:Ljava/util/List;

    .line 574
    iput-object p2, p0, Lcom/yandex/metrica/impl/bc$c;->b:Ljava/util/List;

    .line 575
    iput-object p3, p0, Lcom/yandex/metrica/impl/bc$c;->c:Lorg/a/c;

    return-void
.end method
