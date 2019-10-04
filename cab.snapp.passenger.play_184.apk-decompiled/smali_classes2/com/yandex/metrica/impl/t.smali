.class public final enum Lcom/yandex/metrica/impl/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/t;

.field public static final enum b:Lcom/yandex/metrica/impl/t;

.field public static final enum c:Lcom/yandex/metrica/impl/t;

.field private static final synthetic e:[Lcom/yandex/metrica/impl/t;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/t;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/yandex/metrica/impl/t;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/t;->a:Lcom/yandex/metrica/impl/t;

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/t;

    const/4 v2, 0x1

    const-string v3, "FIRST_OCCURRENCE"

    invoke-direct {v0, v3, v2, v2}, Lcom/yandex/metrica/impl/t;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/t;->b:Lcom/yandex/metrica/impl/t;

    .line 9
    new-instance v0, Lcom/yandex/metrica/impl/t;

    const/4 v3, 0x2

    const-string v4, "NON_FIRST_OCCURENCE"

    invoke-direct {v0, v4, v3, v3}, Lcom/yandex/metrica/impl/t;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/t;->c:Lcom/yandex/metrica/impl/t;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/metrica/impl/t;

    .line 6
    sget-object v4, Lcom/yandex/metrica/impl/t;->a:Lcom/yandex/metrica/impl/t;

    aput-object v4, v0, v1

    sget-object v1, Lcom/yandex/metrica/impl/t;->b:Lcom/yandex/metrica/impl/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/impl/t;->c:Lcom/yandex/metrica/impl/t;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yandex/metrica/impl/t;->e:[Lcom/yandex/metrica/impl/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/yandex/metrica/impl/t;->d:I

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/t;
    .locals 6

    if-eqz p0, :cond_1

    .line 21
    invoke-static {}, Lcom/yandex/metrica/impl/t;->values()[Lcom/yandex/metrica/impl/t;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 22
    iget v4, v3, Lcom/yandex/metrica/impl/t;->d:I

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    sget-object p0, Lcom/yandex/metrica/impl/t;->a:Lcom/yandex/metrica/impl/t;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/t;
    .locals 1

    .line 6
    const-class v0, Lcom/yandex/metrica/impl/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/t;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/t;
    .locals 1

    .line 6
    sget-object v0, Lcom/yandex/metrica/impl/t;->e:[Lcom/yandex/metrica/impl/t;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/t;

    return-object v0
.end method
