.class public final enum Lcom/adyen/threeds2/internal/a/a/b/a/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/a/a/b/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/b;

.field public static final enum HTML_UI:Lcom/adyen/threeds2/internal/a/a/b/a/b;

.field public static final MESSAGE_FORMAT_INVALID_ID:Ljava/lang/String;

.field public static final enum MULTI_SELECT:Lcom/adyen/threeds2/internal/a/a/b/a/b;

.field public static final enum OUT_OF_BAND:Lcom/adyen/threeds2/internal/a/a/b/a/b;

.field public static final enum SINGLE_SELECT:Lcom/adyen/threeds2/internal/a/a/b/a/b;

.field public static final enum SINGLE_TEXT_INPUT:Lcom/adyen/threeds2/internal/a/a/b/a/b;


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xaa

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;->MESSAGE_FORMAT_INVALID_ID:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;

    const/16 v1, 0xab

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/adyen/threeds2/internal/a/a/b/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;->SINGLE_TEXT_INPUT:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    .line 31
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;

    const/16 v1, 0xac

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/adyen/threeds2/internal/a/a/b/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;->SINGLE_SELECT:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    .line 32
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;

    const/16 v1, 0xad

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/adyen/threeds2/internal/a/a/b/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;->MULTI_SELECT:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    .line 33
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;

    const/16 v1, 0xae

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/adyen/threeds2/internal/a/a/b/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;->OUT_OF_BAND:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    .line 34
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;

    const/16 v1, 0xaf

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/adyen/threeds2/internal/a/a/b/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;->HTML_UI:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    .line 28
    new-array v0, v7, [Lcom/adyen/threeds2/internal/a/a/b/a/b;

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/b;->SINGLE_TEXT_INPUT:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/b;->SINGLE_SELECT:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/b;->MULTI_SELECT:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/b;->OUT_OF_BAND:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/b;->HTML_UI:Lcom/adyen/threeds2/internal/a/a/b/a/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;->$VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/adyen/threeds2/internal/a/a/b/a/b;->mId:I

    return-void
.end method

.method public static a(I)Lcom/adyen/threeds2/internal/a/a/b/a/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->values()[Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 57
    iget v5, v4, Lcom/adyen/threeds2/internal/a/a/b/a/b;->mId:I

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v1, 0xa9

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 63
    new-instance v0, Lcom/adyen/threeds2/internal/g/a;

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v0, p0, v1}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    invoke-static {v0}, Lcom/adyen/threeds2/internal/a/a/b/a/b;->a(I)Lcom/adyen/threeds2/internal/a/a/b/a/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 50
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v2, 0xa8

    invoke-static {v2}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 51
    new-instance v1, Lcom/adyen/threeds2/internal/g/a;

    sget-object v2, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-direct {v1, p0, v0, v2}, Lcom/adyen/threeds2/internal/g/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/adyen/threeds2/internal/a/a/b/a/c;)V

    throw v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/b;
    .locals 1

    .line 28
    const-class v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/a/a/b/a/b;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/a/a/b/a/b;
    .locals 1

    .line 28
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/b;->$VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/b;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/a/a/b/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/a/a/b/a/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a/b;->mId:I

    return v0
.end method
