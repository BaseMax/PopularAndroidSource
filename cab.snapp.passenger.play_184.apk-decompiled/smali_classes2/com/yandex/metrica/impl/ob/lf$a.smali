.class public Lcom/yandex/metrica/impl/ob/lf$a;
.super Lcom/yandex/metrica/impl/ob/kz$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/kz$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/lf$a;->a:Ljava/lang/String;

    .line 168
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/lf$a;->e:Ljava/util/Map;

    .line 169
    iput-boolean p6, p0, Lcom/yandex/metrica/impl/ob/lf$a;->f:Z

    .line 170
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/lf$a;->g:Ljava/util/List;

    return-void
.end method
