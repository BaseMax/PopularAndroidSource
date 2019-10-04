.class public final Lcom/yandex/metrica/impl/ob/ei;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ei$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/en;

.field private final b:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/ei$a;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ei$a;->a(Lcom/yandex/metrica/impl/ob/ei$a;)Lcom/yandex/metrica/impl/ob/en;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->a:Lcom/yandex/metrica/impl/ob/en;

    .line 21
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ei$a;->b(Lcom/yandex/metrica/impl/ob/ei$a;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ei;->b:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/ei$a;B)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ei;-><init>(Lcom/yandex/metrica/impl/ob/ei$a;)V

    return-void
.end method

.method public static final a(Lcom/yandex/metrica/impl/ob/en;)Lcom/yandex/metrica/impl/ob/ei$a;
    .locals 2

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/ob/ei$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/ei$a;-><init>(Lcom/yandex/metrica/impl/ob/en;B)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/yandex/metrica/impl/ob/en;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->a:Lcom/yandex/metrica/impl/ob/en;

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ei;->b:Ljava/lang/Integer;

    return-object v0
.end method
