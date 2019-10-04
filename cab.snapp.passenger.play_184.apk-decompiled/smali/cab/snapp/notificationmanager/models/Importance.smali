.class public final enum Lcab/snapp/notificationmanager/models/Importance;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcab/snapp/notificationmanager/models/Importance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcab/snapp/notificationmanager/models/Importance;

.field public static final enum DEFAULT:Lcab/snapp/notificationmanager/models/Importance;

.field public static final enum HIGH:Lcab/snapp/notificationmanager/models/Importance;

.field public static final enum LOW:Lcab/snapp/notificationmanager/models/Importance;

.field public static final enum MAX:Lcab/snapp/notificationmanager/models/Importance;

.field public static final enum MIN:Lcab/snapp/notificationmanager/models/Importance;

.field public static final enum NONE:Lcab/snapp/notificationmanager/models/Importance;

.field public static final enum UNSPECIFIED:Lcab/snapp/notificationmanager/models/Importance;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lcab/snapp/notificationmanager/models/Importance;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v2, v1}, Lcab/snapp/notificationmanager/models/Importance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcab/snapp/notificationmanager/models/Importance;->DEFAULT:Lcab/snapp/notificationmanager/models/Importance;

    .line 15
    new-instance v0, Lcab/snapp/notificationmanager/models/Importance;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, "HIGH"

    invoke-direct {v0, v5, v4, v3}, Lcab/snapp/notificationmanager/models/Importance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcab/snapp/notificationmanager/models/Importance;->HIGH:Lcab/snapp/notificationmanager/models/Importance;

    .line 16
    new-instance v0, Lcab/snapp/notificationmanager/models/Importance;

    const/4 v5, 0x2

    const-string v6, "LOW"

    invoke-direct {v0, v6, v5, v5}, Lcab/snapp/notificationmanager/models/Importance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcab/snapp/notificationmanager/models/Importance;->LOW:Lcab/snapp/notificationmanager/models/Importance;

    .line 17
    new-instance v0, Lcab/snapp/notificationmanager/models/Importance;

    const/4 v6, 0x5

    const-string v7, "MAX"

    invoke-direct {v0, v7, v1, v6}, Lcab/snapp/notificationmanager/models/Importance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcab/snapp/notificationmanager/models/Importance;->MAX:Lcab/snapp/notificationmanager/models/Importance;

    .line 18
    new-instance v0, Lcab/snapp/notificationmanager/models/Importance;

    const-string v7, "MIN"

    invoke-direct {v0, v7, v3, v4}, Lcab/snapp/notificationmanager/models/Importance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcab/snapp/notificationmanager/models/Importance;->MIN:Lcab/snapp/notificationmanager/models/Importance;

    .line 19
    new-instance v0, Lcab/snapp/notificationmanager/models/Importance;

    const-string v7, "NONE"

    invoke-direct {v0, v7, v6, v2}, Lcab/snapp/notificationmanager/models/Importance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcab/snapp/notificationmanager/models/Importance;->NONE:Lcab/snapp/notificationmanager/models/Importance;

    .line 20
    new-instance v0, Lcab/snapp/notificationmanager/models/Importance;

    const/4 v7, 0x6

    const-string v8, "UNSPECIFIED"

    const/16 v9, -0x3e8

    invoke-direct {v0, v8, v7, v9}, Lcab/snapp/notificationmanager/models/Importance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcab/snapp/notificationmanager/models/Importance;->UNSPECIFIED:Lcab/snapp/notificationmanager/models/Importance;

    const/4 v0, 0x7

    new-array v0, v0, [Lcab/snapp/notificationmanager/models/Importance;

    .line 12
    sget-object v8, Lcab/snapp/notificationmanager/models/Importance;->DEFAULT:Lcab/snapp/notificationmanager/models/Importance;

    aput-object v8, v0, v2

    sget-object v2, Lcab/snapp/notificationmanager/models/Importance;->HIGH:Lcab/snapp/notificationmanager/models/Importance;

    aput-object v2, v0, v4

    sget-object v2, Lcab/snapp/notificationmanager/models/Importance;->LOW:Lcab/snapp/notificationmanager/models/Importance;

    aput-object v2, v0, v5

    sget-object v2, Lcab/snapp/notificationmanager/models/Importance;->MAX:Lcab/snapp/notificationmanager/models/Importance;

    aput-object v2, v0, v1

    sget-object v1, Lcab/snapp/notificationmanager/models/Importance;->MIN:Lcab/snapp/notificationmanager/models/Importance;

    aput-object v1, v0, v3

    sget-object v1, Lcab/snapp/notificationmanager/models/Importance;->NONE:Lcab/snapp/notificationmanager/models/Importance;

    aput-object v1, v0, v6

    sget-object v1, Lcab/snapp/notificationmanager/models/Importance;->UNSPECIFIED:Lcab/snapp/notificationmanager/models/Importance;

    aput-object v1, v0, v7

    sput-object v0, Lcab/snapp/notificationmanager/models/Importance;->$VALUES:[Lcab/snapp/notificationmanager/models/Importance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcab/snapp/notificationmanager/models/Importance;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcab/snapp/notificationmanager/models/Importance;
    .locals 1

    .line 12
    const-class v0, Lcab/snapp/notificationmanager/models/Importance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcab/snapp/notificationmanager/models/Importance;

    return-object p0
.end method

.method public static values()[Lcab/snapp/notificationmanager/models/Importance;
    .locals 1

    .line 12
    sget-object v0, Lcab/snapp/notificationmanager/models/Importance;->$VALUES:[Lcab/snapp/notificationmanager/models/Importance;

    invoke-virtual {v0}, [Lcab/snapp/notificationmanager/models/Importance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcab/snapp/notificationmanager/models/Importance;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 30
    iget v0, p0, Lcab/snapp/notificationmanager/models/Importance;->a:I

    return v0
.end method
