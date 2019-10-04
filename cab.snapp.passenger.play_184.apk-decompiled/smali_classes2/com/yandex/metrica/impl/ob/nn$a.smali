.class Lcom/yandex/metrica/impl/ob/nn$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/nn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcom/yandex/metrica/impl/ob/nn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/nn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/nn;-><init>(B)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/nn$a;->a:Lcom/yandex/metrica/impl/ob/nn;

    return-void
.end method
