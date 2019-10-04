.class public final enum Lcom/adyen/threeds2/internal/c/a/g/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/c/a/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/c/a/g/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/c/a/g/a$a;

.field public static final enum FLOAT:Lcom/adyen/threeds2/internal/c/a/g/a$a;

.field public static final enum INTEGER:Lcom/adyen/threeds2/internal/c/a/g/a$a;

.field public static final enum LONG:Lcom/adyen/threeds2/internal/c/a/g/a$a;

.field public static final enum STRING:Lcom/adyen/threeds2/internal/c/a/g/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 104
    new-instance v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;

    const/16 v1, 0x1c4

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adyen/threeds2/internal/c/a/g/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;->STRING:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    .line 105
    new-instance v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;

    const/16 v1, 0x1c5

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/adyen/threeds2/internal/c/a/g/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;->FLOAT:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    .line 106
    new-instance v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;

    const/16 v1, 0x1c6

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/adyen/threeds2/internal/c/a/g/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;->INTEGER:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    .line 107
    new-instance v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;

    const/16 v1, 0x1c7

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/adyen/threeds2/internal/c/a/g/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;->LONG:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    const/4 v0, 0x4

    .line 103
    new-array v0, v0, [Lcom/adyen/threeds2/internal/c/a/g/a$a;

    sget-object v1, Lcom/adyen/threeds2/internal/c/a/g/a$a;->STRING:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/c/a/g/a$a;->FLOAT:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adyen/threeds2/internal/c/a/g/a$a;->INTEGER:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adyen/threeds2/internal/c/a/g/a$a;->LONG:Lcom/adyen/threeds2/internal/c/a/g/a$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;->$VALUES:[Lcom/adyen/threeds2/internal/c/a/g/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/c/a/g/a$a;
    .locals 1

    .line 103
    const-class v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/c/a/g/a$a;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/c/a/g/a$a;
    .locals 1

    .line 103
    sget-object v0, Lcom/adyen/threeds2/internal/c/a/g/a$a;->$VALUES:[Lcom/adyen/threeds2/internal/c/a/g/a$a;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/c/a/g/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/c/a/g/a$a;

    return-object v0
.end method
