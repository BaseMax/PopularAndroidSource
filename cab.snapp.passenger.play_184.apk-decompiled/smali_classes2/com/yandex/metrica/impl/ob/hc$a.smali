.class final enum Lcom/yandex/metrica/impl/ob/hc$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/hc$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/hc$a;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/hc$a;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/hc$a;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/hc$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/hc$a;

    const/4 v1, 0x0

    const-string v2, "THIS"

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/hc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/hc$a;->a:Lcom/yandex/metrica/impl/ob/hc$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/hc$a;

    const/4 v2, 0x1

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v2}, Lcom/yandex/metrica/impl/ob/hc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/hc$a;->b:Lcom/yandex/metrica/impl/ob/hc$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/hc$a;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3}, Lcom/yandex/metrica/impl/ob/hc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/hc$a;->c:Lcom/yandex/metrica/impl/ob/hc$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/hc$a;

    .line 15
    sget-object v4, Lcom/yandex/metrica/impl/ob/hc$a;->a:Lcom/yandex/metrica/impl/ob/hc$a;

    aput-object v4, v0, v1

    sget-object v1, Lcom/yandex/metrica/impl/ob/hc$a;->b:Lcom/yandex/metrica/impl/ob/hc$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/impl/ob/hc$a;->c:Lcom/yandex/metrica/impl/ob/hc$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yandex/metrica/impl/ob/hc$a;->d:[Lcom/yandex/metrica/impl/ob/hc$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hc$a;
    .locals 1

    .line 15
    const-class v0, Lcom/yandex/metrica/impl/ob/hc$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/hc$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/hc$a;
    .locals 1

    .line 15
    sget-object v0, Lcom/yandex/metrica/impl/ob/hc$a;->d:[Lcom/yandex/metrica/impl/ob/hc$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/hc$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/hc$a;

    return-object v0
.end method
