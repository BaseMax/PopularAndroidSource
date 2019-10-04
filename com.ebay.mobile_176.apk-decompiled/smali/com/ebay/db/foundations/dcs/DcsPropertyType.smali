.class public final enum Lcom/ebay/db/foundations/dcs/DcsPropertyType;
.super Ljava/lang/Enum;
.source "DcsPropertyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/db/foundations/dcs/DcsPropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/db/foundations/dcs/DcsPropertyType;

.field public static final enum BOOLEAN:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

.field public static final enum INTEGER:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

.field public static final enum INTEGER_ARRAY:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

.field public static final enum NUMBER:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

.field public static final enum NUMBER_ARRAY:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

.field public static final enum OBJECT:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

.field public static final enum STRING:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

.field public static final enum STRING_ARRAY:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

.field public static final enum URL:Lcom/ebay/db/foundations/dcs/DcsPropertyType;


# instance fields
.field private final nativeForm:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 15
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    const-string v1, "BOOLEAN"

    const-string v2, "boolean"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->BOOLEAN:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    .line 20
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    const-string v1, "INTEGER"

    const-string v2, "integer"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->INTEGER:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    .line 25
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    const-string v1, "INTEGER_ARRAY"

    const-string v2, "integerArray"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->INTEGER_ARRAY:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    .line 30
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    const-string v1, "NUMBER"

    const-string v2, "number"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->NUMBER:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    .line 35
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    const-string v1, "NUMBER_ARRAY"

    const-string v2, "numberArray"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->NUMBER_ARRAY:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    .line 40
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    const-string v1, "STRING"

    const-string/jumbo v2, "string"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->STRING:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    .line 45
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    const-string v1, "STRING_ARRAY"

    const-string/jumbo v2, "stringArray"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->STRING_ARRAY:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    .line 50
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    const-string v1, "URL"

    const-string/jumbo v2, "url"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->URL:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    .line 55
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    const-string v1, "OBJECT"

    const-string v2, "object"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->OBJECT:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    const/16 v0, 0x9

    .line 10
    new-array v0, v0, [Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    sget-object v1, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->BOOLEAN:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->INTEGER:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->INTEGER_ARRAY:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->NUMBER:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->NUMBER_ARRAY:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->STRING:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->STRING_ARRAY:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->URL:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->OBJECT:Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->$VALUES:[Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->nativeForm:Ljava/lang/String;

    return-void
.end method

.method public static forStringValue(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsPropertyType;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 77
    invoke-static {}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->values()[Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 79
    iget-object v4, v3, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->nativeForm:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->valueOf(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/db/foundations/dcs/DcsPropertyType;
    .locals 1

    .line 10
    const-class v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/db/foundations/dcs/DcsPropertyType;
    .locals 1

    .line 10
    sget-object v0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->$VALUES:[Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    invoke-virtual {v0}, [Lcom/ebay/db/foundations/dcs/DcsPropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/db/foundations/dcs/DcsPropertyType;

    return-object v0
.end method


# virtual methods
.method public getJsonForm()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsPropertyType;->nativeForm:Ljava/lang/String;

    return-object v0
.end method
