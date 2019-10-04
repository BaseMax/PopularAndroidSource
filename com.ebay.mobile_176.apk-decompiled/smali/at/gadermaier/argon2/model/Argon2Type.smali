.class public final enum Lat/gadermaier/argon2/model/Argon2Type;
.super Ljava/lang/Enum;
.source "Argon2Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lat/gadermaier/argon2/model/Argon2Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lat/gadermaier/argon2/model/Argon2Type;

.field public static final enum Argon2d:Lat/gadermaier/argon2/model/Argon2Type;

.field public static final enum Argon2i:Lat/gadermaier/argon2/model/Argon2Type;

.field public static final enum Argon2id:Lat/gadermaier/argon2/model/Argon2Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lat/gadermaier/argon2/model/Argon2Type;

    const-string v1, "Argon2d"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lat/gadermaier/argon2/model/Argon2Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/gadermaier/argon2/model/Argon2Type;->Argon2d:Lat/gadermaier/argon2/model/Argon2Type;

    new-instance v0, Lat/gadermaier/argon2/model/Argon2Type;

    const-string v1, "Argon2i"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lat/gadermaier/argon2/model/Argon2Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/gadermaier/argon2/model/Argon2Type;->Argon2i:Lat/gadermaier/argon2/model/Argon2Type;

    new-instance v0, Lat/gadermaier/argon2/model/Argon2Type;

    const-string v1, "Argon2id"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lat/gadermaier/argon2/model/Argon2Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lat/gadermaier/argon2/model/Argon2Type;->Argon2id:Lat/gadermaier/argon2/model/Argon2Type;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lat/gadermaier/argon2/model/Argon2Type;

    sget-object v1, Lat/gadermaier/argon2/model/Argon2Type;->Argon2d:Lat/gadermaier/argon2/model/Argon2Type;

    aput-object v1, v0, v2

    sget-object v1, Lat/gadermaier/argon2/model/Argon2Type;->Argon2i:Lat/gadermaier/argon2/model/Argon2Type;

    aput-object v1, v0, v3

    sget-object v1, Lat/gadermaier/argon2/model/Argon2Type;->Argon2id:Lat/gadermaier/argon2/model/Argon2Type;

    aput-object v1, v0, v4

    sput-object v0, Lat/gadermaier/argon2/model/Argon2Type;->$VALUES:[Lat/gadermaier/argon2/model/Argon2Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lat/gadermaier/argon2/model/Argon2Type;
    .locals 1

    .line 3
    const-class v0, Lat/gadermaier/argon2/model/Argon2Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lat/gadermaier/argon2/model/Argon2Type;

    return-object p0
.end method

.method public static values()[Lat/gadermaier/argon2/model/Argon2Type;
    .locals 1

    .line 3
    sget-object v0, Lat/gadermaier/argon2/model/Argon2Type;->$VALUES:[Lat/gadermaier/argon2/model/Argon2Type;

    invoke-virtual {v0}, [Lat/gadermaier/argon2/model/Argon2Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lat/gadermaier/argon2/model/Argon2Type;

    return-object v0
.end method
