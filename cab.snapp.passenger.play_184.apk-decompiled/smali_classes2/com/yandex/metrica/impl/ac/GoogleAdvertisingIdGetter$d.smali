.class Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field static final a:Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

.field static final b:Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

    new-instance v1, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$f;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$f;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;-><init>(Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$e;B)V

    sput-object v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$d;->a:Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

    .line 98
    new-instance v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

    new-instance v1, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$a;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;-><init>(Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$e;B)V

    sput-object v0, Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter$d;->b:Lcom/yandex/metrica/impl/ac/GoogleAdvertisingIdGetter;

    return-void
.end method
