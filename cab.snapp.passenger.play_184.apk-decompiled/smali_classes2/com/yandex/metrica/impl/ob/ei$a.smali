.class final Lcom/yandex/metrica/impl/ob/ei$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/en;

.field private b:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/en;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ei$a;->a:Lcom/yandex/metrica/impl/ob/en;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/en;B)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ei$a;-><init>(Lcom/yandex/metrica/impl/ob/en;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ei$a;)Lcom/yandex/metrica/impl/ob/en;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ei$a;->a:Lcom/yandex/metrica/impl/ob/en;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/ei$a;)Ljava/lang/Integer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ei$a;->b:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/yandex/metrica/impl/ob/ei$a;
    .locals 0

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ei$a;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a()Lcom/yandex/metrica/impl/ob/ei;
    .locals 2

    .line 51
    new-instance v0, Lcom/yandex/metrica/impl/ob/ei;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/ei;-><init>(Lcom/yandex/metrica/impl/ob/ei$a;B)V

    return-object v0
.end method
