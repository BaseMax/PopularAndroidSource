.class public final enum Lcom/yandex/metrica/impl/ob/ns$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/ns$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/ns$a;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/ns$a;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/ns$a;

.field public static final enum d:Lcom/yandex/metrica/impl/ob/ns$a;

.field private static final synthetic f:[Lcom/yandex/metrica/impl/ob/ns$a;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/ns$a;

    const/4 v1, 0x0

    const-string v2, "LOGIN"

    const-string v3, "login"

    invoke-direct {v0, v2, v1, v3}, Lcom/yandex/metrica/impl/ob/ns$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ns$a;->a:Lcom/yandex/metrica/impl/ob/ns$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/ns$a;

    const/4 v2, 0x1

    const-string v3, "LOGOUT"

    const-string v4, "logout"

    invoke-direct {v0, v3, v2, v4}, Lcom/yandex/metrica/impl/ob/ns$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ns$a;->b:Lcom/yandex/metrica/impl/ob/ns$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/ns$a;

    const/4 v3, 0x2

    const-string v4, "SWITCH"

    const-string v5, "switch"

    invoke-direct {v0, v4, v3, v5}, Lcom/yandex/metrica/impl/ob/ns$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ns$a;->c:Lcom/yandex/metrica/impl/ob/ns$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/ns$a;

    const/4 v4, 0x3

    const-string v5, "UPDATE"

    const-string v6, "update"

    invoke-direct {v0, v5, v4, v6}, Lcom/yandex/metrica/impl/ob/ns$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ns$a;->d:Lcom/yandex/metrica/impl/ob/ns$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ns$a;

    .line 23
    sget-object v5, Lcom/yandex/metrica/impl/ob/ns$a;->a:Lcom/yandex/metrica/impl/ob/ns$a;

    aput-object v5, v0, v1

    sget-object v1, Lcom/yandex/metrica/impl/ob/ns$a;->b:Lcom/yandex/metrica/impl/ob/ns$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/impl/ob/ns$a;->c:Lcom/yandex/metrica/impl/ob/ns$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/metrica/impl/ob/ns$a;->d:Lcom/yandex/metrica/impl/ob/ns$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/metrica/impl/ob/ns$a;->f:[Lcom/yandex/metrica/impl/ob/ns$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ns$a;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ns$a;
    .locals 1

    .line 23
    const-class v0, Lcom/yandex/metrica/impl/ob/ns$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/ns$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/ns$a;
    .locals 1

    .line 23
    sget-object v0, Lcom/yandex/metrica/impl/ob/ns$a;->f:[Lcom/yandex/metrica/impl/ob/ns$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/ns$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/ns$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ns$a;->e:Ljava/lang/String;

    return-object v0
.end method
