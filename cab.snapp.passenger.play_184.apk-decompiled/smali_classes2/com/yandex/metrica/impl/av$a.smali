.class public final enum Lcom/yandex/metrica/impl/av$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/av$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/av$a;

.field public static final enum b:Lcom/yandex/metrica/impl/av$a;

.field public static final enum c:Lcom/yandex/metrica/impl/av$a;

.field public static final enum d:Lcom/yandex/metrica/impl/av$a;

.field private static final synthetic e:[Lcom/yandex/metrica/impl/av$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/av$a;

    const/4 v1, 0x0

    const-string v2, "WIFI"

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/av$a;->a:Lcom/yandex/metrica/impl/av$a;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/av$a;

    const/4 v2, 0x1

    const-string v3, "CELL"

    invoke-direct {v0, v3, v2}, Lcom/yandex/metrica/impl/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/av$a;->b:Lcom/yandex/metrica/impl/av$a;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/av$a;

    const/4 v3, 0x2

    const-string v4, "OFFLINE"

    invoke-direct {v0, v4, v3}, Lcom/yandex/metrica/impl/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/av$a;->c:Lcom/yandex/metrica/impl/av$a;

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/av$a;

    const/4 v4, 0x3

    const-string v5, "UNDEFINED"

    invoke-direct {v0, v5, v4}, Lcom/yandex/metrica/impl/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/av$a;->d:Lcom/yandex/metrica/impl/av$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yandex/metrica/impl/av$a;

    .line 38
    sget-object v5, Lcom/yandex/metrica/impl/av$a;->a:Lcom/yandex/metrica/impl/av$a;

    aput-object v5, v0, v1

    sget-object v1, Lcom/yandex/metrica/impl/av$a;->b:Lcom/yandex/metrica/impl/av$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/impl/av$a;->c:Lcom/yandex/metrica/impl/av$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/metrica/impl/av$a;->d:Lcom/yandex/metrica/impl/av$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/metrica/impl/av$a;->e:[Lcom/yandex/metrica/impl/av$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/av$a;
    .locals 1

    .line 38
    const-class v0, Lcom/yandex/metrica/impl/av$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/av$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/av$a;
    .locals 1

    .line 38
    sget-object v0, Lcom/yandex/metrica/impl/av$a;->e:[Lcom/yandex/metrica/impl/av$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/av$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/av$a;

    return-object v0
.end method
