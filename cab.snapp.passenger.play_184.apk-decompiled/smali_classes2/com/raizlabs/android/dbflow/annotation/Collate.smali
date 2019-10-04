.class public final enum Lcom/raizlabs/android/dbflow/annotation/Collate;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/annotation/Collate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum BINARY:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum LOCALIZED:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum NOCASE:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum NONE:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum RTRIM:Lcom/raizlabs/android/dbflow/annotation/Collate;

.field public static final enum UNICODE:Lcom/raizlabs/android/dbflow/annotation/Collate;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 11
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->NONE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 16
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const/4 v2, 0x1

    const-string v3, "BINARY"

    invoke-direct {v0, v3, v2}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->BINARY:Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 22
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const/4 v3, 0x2

    const-string v4, "NOCASE"

    invoke-direct {v0, v4, v3}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->NOCASE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 27
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const/4 v4, 0x3

    const-string v5, "RTRIM"

    invoke-direct {v0, v5, v4}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->RTRIM:Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 32
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const/4 v5, 0x4

    const-string v6, "LOCALIZED"

    invoke-direct {v0, v6, v5}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->LOCALIZED:Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 37
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    const/4 v6, 0x5

    const-string v7, "UNICODE"

    invoke-direct {v0, v7, v6}, Lcom/raizlabs/android/dbflow/annotation/Collate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->UNICODE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/annotation/Collate;

    .line 6
    sget-object v7, Lcom/raizlabs/android/dbflow/annotation/Collate;->NONE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    aput-object v7, v0, v1

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/Collate;->BINARY:Lcom/raizlabs/android/dbflow/annotation/Collate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/Collate;->NOCASE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/Collate;->RTRIM:Lcom/raizlabs/android/dbflow/annotation/Collate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/Collate;->LOCALIZED:Lcom/raizlabs/android/dbflow/annotation/Collate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/Collate;->UNICODE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    aput-object v1, v0, v6

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/Collate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/annotation/Collate;
    .locals 1

    .line 6
    const-class v0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/annotation/Collate;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/annotation/Collate;
    .locals 1

    .line 6
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/Collate;

    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/annotation/Collate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/annotation/Collate;

    return-object v0
.end method
