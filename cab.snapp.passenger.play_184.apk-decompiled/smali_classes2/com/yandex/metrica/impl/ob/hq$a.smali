.class public final enum Lcom/yandex/metrica/impl/ob/hq$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/hq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/ob/hq$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/hq$a;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/hq$a;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/hq$a;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/hq$a;

    const/4 v1, 0x0

    const-string v2, "FOREGROUND"

    const-string v3, "fg"

    invoke-direct {v0, v2, v1, v3}, Lcom/yandex/metrica/impl/ob/hq$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/hq$a;->a:Lcom/yandex/metrica/impl/ob/hq$a;

    new-instance v0, Lcom/yandex/metrica/impl/ob/hq$a;

    const/4 v2, 0x1

    const-string v3, "BACKGROUND"

    const-string v4, "bg"

    invoke-direct {v0, v3, v2, v4}, Lcom/yandex/metrica/impl/ob/hq$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/hq$a;->b:Lcom/yandex/metrica/impl/ob/hq$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/hq$a;

    .line 16
    sget-object v3, Lcom/yandex/metrica/impl/ob/hq$a;->a:Lcom/yandex/metrica/impl/ob/hq$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/yandex/metrica/impl/ob/hq$a;->b:Lcom/yandex/metrica/impl/ob/hq$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/yandex/metrica/impl/ob/hq$a;->d:[Lcom/yandex/metrica/impl/ob/hq$a;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/hq$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hq$a;
    .locals 6

    .line 34
    sget-object v0, Lcom/yandex/metrica/impl/ob/hq$a;->a:Lcom/yandex/metrica/impl/ob/hq$a;

    .line 35
    invoke-static {}, Lcom/yandex/metrica/impl/ob/hq$a;->values()[Lcom/yandex/metrica/impl/ob/hq$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 36
    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/hq$a;->c:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/hq$a;
    .locals 1

    .line 16
    const-class v0, Lcom/yandex/metrica/impl/ob/hq$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/hq$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/hq$a;
    .locals 1

    .line 16
    sget-object v0, Lcom/yandex/metrica/impl/ob/hq$a;->d:[Lcom/yandex/metrica/impl/ob/hq$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/hq$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/hq$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hq$a;->c:Ljava/lang/String;

    return-object v0
.end method
