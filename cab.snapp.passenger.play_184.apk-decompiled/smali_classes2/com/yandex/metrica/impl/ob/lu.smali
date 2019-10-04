.class public final enum Lcom/yandex/metrica/impl/ob/lu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/lu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/lu;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/lu;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/lu;

.field private static final synthetic e:[Lcom/yandex/metrica/impl/ob/lu;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/lu;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/yandex/metrica/impl/ob/lu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/lu;->a:Lcom/yandex/metrica/impl/ob/lu;

    new-instance v0, Lcom/yandex/metrica/impl/ob/lu;

    const/4 v2, 0x1

    const-string v3, "NETWORK"

    invoke-direct {v0, v3, v2, v2}, Lcom/yandex/metrica/impl/ob/lu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/lu;->b:Lcom/yandex/metrica/impl/ob/lu;

    new-instance v0, Lcom/yandex/metrica/impl/ob/lu;

    const/4 v3, 0x2

    const-string v4, "PARSE"

    invoke-direct {v0, v4, v3, v3}, Lcom/yandex/metrica/impl/ob/lu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/lu;->c:Lcom/yandex/metrica/impl/ob/lu;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/lu;

    .line 13
    sget-object v4, Lcom/yandex/metrica/impl/ob/lu;->a:Lcom/yandex/metrica/impl/ob/lu;

    aput-object v4, v0, v1

    sget-object v1, Lcom/yandex/metrica/impl/ob/lu;->b:Lcom/yandex/metrica/impl/ob/lu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/impl/ob/lu;->c:Lcom/yandex/metrica/impl/ob/lu;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yandex/metrica/impl/ob/lu;->e:[Lcom/yandex/metrica/impl/ob/lu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/yandex/metrica/impl/ob/lu;->d:I

    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/lu;
    .locals 2

    const-string v0, "startup_error_key_code"

    .line 35
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 1040
    sget-object v0, Lcom/yandex/metrica/impl/ob/lu;->a:Lcom/yandex/metrica/impl/ob/lu;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/lu;->c:Lcom/yandex/metrica/impl/ob/lu;

    goto :goto_0

    .line 1043
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/lu;->b:Lcom/yandex/metrica/impl/ob/lu;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/lu;
    .locals 1

    .line 13
    const-class v0, Lcom/yandex/metrica/impl/ob/lu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/lu;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/lu;
    .locals 1

    .line 13
    sget-object v0, Lcom/yandex/metrica/impl/ob/lu;->e:[Lcom/yandex/metrica/impl/ob/lu;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/lu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/lu;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/yandex/metrica/impl/ob/lu;->d:I

    return v0
.end method

.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/lu;->a()I

    move-result v0

    const-string v1, "startup_error_key_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method
