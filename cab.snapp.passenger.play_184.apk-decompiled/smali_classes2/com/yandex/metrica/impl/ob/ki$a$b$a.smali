.class public final enum Lcom/yandex/metrica/impl/ob/ki$a$b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ki$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/ki$a$b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

.field private static final synthetic e:[Lcom/yandex/metrica/impl/ob/ki$a$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 101
    new-instance v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    const/4 v1, 0x0

    const-string v2, "OFFLINE"

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/ki$a$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;->a:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    .line 102
    new-instance v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    const/4 v2, 0x1

    const-string v3, "INCOMPATIBLE_NETWORK_TYPE"

    invoke-direct {v0, v3, v2}, Lcom/yandex/metrica/impl/ob/ki$a$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;->b:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    .line 103
    new-instance v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    const/4 v3, 0x2

    const-string v4, "COMPLETE"

    invoke-direct {v0, v4, v3}, Lcom/yandex/metrica/impl/ob/ki$a$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;->c:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    .line 104
    new-instance v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lcom/yandex/metrica/impl/ob/ki$a$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;->d:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    .line 100
    sget-object v5, Lcom/yandex/metrica/impl/ob/ki$a$b$a;->a:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    aput-object v5, v0, v1

    sget-object v1, Lcom/yandex/metrica/impl/ob/ki$a$b$a;->b:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/impl/ob/ki$a$b$a;->c:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/metrica/impl/ob/ki$a$b$a;->d:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;->e:[Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ki$a$b$a;
    .locals 1

    .line 100
    const-class v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/ki$a$b$a;
    .locals 1

    .line 100
    sget-object v0, Lcom/yandex/metrica/impl/ob/ki$a$b$a;->e:[Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/ki$a$b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    return-object v0
.end method
