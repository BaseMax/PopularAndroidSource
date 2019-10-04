.class Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ma;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/lp;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
