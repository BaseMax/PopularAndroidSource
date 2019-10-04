.class public final enum Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/annotation/ConflictAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field public static final enum ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 20
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const/4 v2, 0x1

    const-string v3, "ROLLBACK"

    invoke-direct {v0, v3, v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 28
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const/4 v3, 0x2

    const-string v4, "ABORT"

    invoke-direct {v0, v4, v3}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 37
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const/4 v4, 0x3

    const-string v5, "FAIL"

    invoke-direct {v0, v5, v4}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 46
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const/4 v5, 0x4

    const-string v6, "IGNORE"

    invoke-direct {v0, v6, v5}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 61
    new-instance v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const/4 v6, 0x5

    const-string v7, "REPLACE"

    invoke-direct {v0, v7, v6}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 7
    sget-object v7, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v7, v0, v1

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getSQLiteDatabaseAlgorithmInt(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)I
    .locals 1

    .line 64
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction$1;->a:[I

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    .line 7
    const-class v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
    .locals 1

    .line 7
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->$VALUES:[Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object v0
.end method
