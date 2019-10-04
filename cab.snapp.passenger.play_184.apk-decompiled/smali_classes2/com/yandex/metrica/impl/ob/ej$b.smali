.class public final enum Lcom/yandex/metrica/impl/ob/ej$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/ej$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/ej$b;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/ej$b;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/ej$b;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/ej$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/ej$b;

    const/4 v1, 0x0

    const-string v2, "EMPTY"

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/ej$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ej$b;->a:Lcom/yandex/metrica/impl/ob/ej$b;

    new-instance v0, Lcom/yandex/metrica/impl/ob/ej$b;

    const/4 v2, 0x1

    const-string v3, "BACKGROUND"

    invoke-direct {v0, v3, v2}, Lcom/yandex/metrica/impl/ob/ej$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ej$b;->b:Lcom/yandex/metrica/impl/ob/ej$b;

    new-instance v0, Lcom/yandex/metrica/impl/ob/ej$b;

    const/4 v3, 0x2

    const-string v4, "FOREGROUND"

    invoke-direct {v0, v4, v3}, Lcom/yandex/metrica/impl/ob/ej$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ej$b;->c:Lcom/yandex/metrica/impl/ob/ej$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ej$b;

    .line 31
    sget-object v4, Lcom/yandex/metrica/impl/ob/ej$b;->a:Lcom/yandex/metrica/impl/ob/ej$b;

    aput-object v4, v0, v1

    sget-object v1, Lcom/yandex/metrica/impl/ob/ej$b;->b:Lcom/yandex/metrica/impl/ob/ej$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/impl/ob/ej$b;->c:Lcom/yandex/metrica/impl/ob/ej$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yandex/metrica/impl/ob/ej$b;->d:[Lcom/yandex/metrica/impl/ob/ej$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ej$b;
    .locals 1

    .line 31
    const-class v0, Lcom/yandex/metrica/impl/ob/ej$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/ej$b;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/ej$b;
    .locals 1

    .line 31
    sget-object v0, Lcom/yandex/metrica/impl/ob/ej$b;->d:[Lcom/yandex/metrica/impl/ob/ej$b;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/ej$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/ej$b;

    return-object v0
.end method
