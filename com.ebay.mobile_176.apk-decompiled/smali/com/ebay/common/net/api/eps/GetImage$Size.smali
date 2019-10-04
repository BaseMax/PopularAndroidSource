.class public final enum Lcom/ebay/common/net/api/eps/GetImage$Size;
.super Ljava/lang/Enum;
.source "GetImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/eps/GetImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/eps/GetImage$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/eps/GetImage$Size;

.field public static final enum D200x200:Lcom/ebay/common/net/api/eps/GetImage$Size;

.field public static final enum D300x300:Lcom/ebay/common/net/api/eps/GetImage$Size;

.field public static final enum D32x32:Lcom/ebay/common/net/api/eps/GetImage$Size;

.field public static final enum D400x400:Lcom/ebay/common/net/api/eps/GetImage$Size;

.field public static final enum D500x500:Lcom/ebay/common/net/api/eps/GetImage$Size;

.field public static final enum D64x64:Lcom/ebay/common/net/api/eps/GetImage$Size;

.field public static final enum D800x800:Lcom/ebay/common/net/api/eps/GetImage$Size;

.field public static final enum D96x96:Lcom/ebay/common/net/api/eps/GetImage$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Lcom/ebay/common/net/api/eps/GetImage$Size;

    const-string v1, "D32x32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/eps/GetImage$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/eps/GetImage$Size;->D32x32:Lcom/ebay/common/net/api/eps/GetImage$Size;

    new-instance v0, Lcom/ebay/common/net/api/eps/GetImage$Size;

    const-string v1, "D64x64"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/eps/GetImage$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/eps/GetImage$Size;->D64x64:Lcom/ebay/common/net/api/eps/GetImage$Size;

    new-instance v0, Lcom/ebay/common/net/api/eps/GetImage$Size;

    const-string v1, "D96x96"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/net/api/eps/GetImage$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/eps/GetImage$Size;->D96x96:Lcom/ebay/common/net/api/eps/GetImage$Size;

    new-instance v0, Lcom/ebay/common/net/api/eps/GetImage$Size;

    const-string v1, "D200x200"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/common/net/api/eps/GetImage$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/eps/GetImage$Size;->D200x200:Lcom/ebay/common/net/api/eps/GetImage$Size;

    new-instance v0, Lcom/ebay/common/net/api/eps/GetImage$Size;

    const-string v1, "D300x300"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ebay/common/net/api/eps/GetImage$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/eps/GetImage$Size;->D300x300:Lcom/ebay/common/net/api/eps/GetImage$Size;

    new-instance v0, Lcom/ebay/common/net/api/eps/GetImage$Size;

    const-string v1, "D400x400"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ebay/common/net/api/eps/GetImage$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/eps/GetImage$Size;->D400x400:Lcom/ebay/common/net/api/eps/GetImage$Size;

    new-instance v0, Lcom/ebay/common/net/api/eps/GetImage$Size;

    const-string v1, "D500x500"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ebay/common/net/api/eps/GetImage$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/eps/GetImage$Size;->D500x500:Lcom/ebay/common/net/api/eps/GetImage$Size;

    new-instance v0, Lcom/ebay/common/net/api/eps/GetImage$Size;

    const-string v1, "D800x800"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ebay/common/net/api/eps/GetImage$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/eps/GetImage$Size;->D800x800:Lcom/ebay/common/net/api/eps/GetImage$Size;

    const/16 v0, 0x8

    .line 15
    new-array v0, v0, [Lcom/ebay/common/net/api/eps/GetImage$Size;

    sget-object v1, Lcom/ebay/common/net/api/eps/GetImage$Size;->D32x32:Lcom/ebay/common/net/api/eps/GetImage$Size;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/eps/GetImage$Size;->D64x64:Lcom/ebay/common/net/api/eps/GetImage$Size;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/net/api/eps/GetImage$Size;->D96x96:Lcom/ebay/common/net/api/eps/GetImage$Size;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/net/api/eps/GetImage$Size;->D200x200:Lcom/ebay/common/net/api/eps/GetImage$Size;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/net/api/eps/GetImage$Size;->D300x300:Lcom/ebay/common/net/api/eps/GetImage$Size;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/net/api/eps/GetImage$Size;->D400x400:Lcom/ebay/common/net/api/eps/GetImage$Size;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/net/api/eps/GetImage$Size;->D500x500:Lcom/ebay/common/net/api/eps/GetImage$Size;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/common/net/api/eps/GetImage$Size;->D800x800:Lcom/ebay/common/net/api/eps/GetImage$Size;

    aput-object v1, v0, v9

    sput-object v0, Lcom/ebay/common/net/api/eps/GetImage$Size;->$VALUES:[Lcom/ebay/common/net/api/eps/GetImage$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/eps/GetImage$Size;
    .locals 1

    .line 15
    const-class v0, Lcom/ebay/common/net/api/eps/GetImage$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/eps/GetImage$Size;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/eps/GetImage$Size;
    .locals 1

    .line 15
    sget-object v0, Lcom/ebay/common/net/api/eps/GetImage$Size;->$VALUES:[Lcom/ebay/common/net/api/eps/GetImage$Size;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/eps/GetImage$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/eps/GetImage$Size;

    return-object v0
.end method
