.class public final enum Lcom/ebay/mobile/AddOnItem$AddOnType;
.super Ljava/lang/Enum;
.source "AddOnItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/AddOnItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddOnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/AddOnItem$AddOnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/AddOnItem$AddOnType;

.field public static final enum INSTALLATION:Lcom/ebay/mobile/AddOnItem$AddOnType;

.field public static final enum MANUAL:Lcom/ebay/mobile/AddOnItem$AddOnType;

.field public static final enum SUPPORT:Lcom/ebay/mobile/AddOnItem$AddOnType;

.field public static final enum WARRANTY:Lcom/ebay/mobile/AddOnItem$AddOnType;


# instance fields
.field public final destination:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lcom/ebay/mobile/AddOnItem$AddOnType;

    const-string v1, "INSTALLATION"

    const-class v2, Lcom/ebay/mobile/verticals/viewitem/ViewItemInstallationActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/mobile/AddOnItem$AddOnType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/ebay/mobile/AddOnItem$AddOnType;->INSTALLATION:Lcom/ebay/mobile/AddOnItem$AddOnType;

    .line 35
    new-instance v0, Lcom/ebay/mobile/AddOnItem$AddOnType;

    const-string v1, "WARRANTY"

    const-class v2, Lcom/ebay/mobile/verticals/viewitem/ViewItemChooseAddonActivity;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/ebay/mobile/AddOnItem$AddOnType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/ebay/mobile/AddOnItem$AddOnType;->WARRANTY:Lcom/ebay/mobile/AddOnItem$AddOnType;

    .line 36
    new-instance v0, Lcom/ebay/mobile/AddOnItem$AddOnType;

    const-string v1, "SUPPORT"

    const-class v2, Lcom/ebay/mobile/verticals/viewitem/ViewItemChooseAddonActivity;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/ebay/mobile/AddOnItem$AddOnType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/ebay/mobile/AddOnItem$AddOnType;->SUPPORT:Lcom/ebay/mobile/AddOnItem$AddOnType;

    .line 37
    new-instance v0, Lcom/ebay/mobile/AddOnItem$AddOnType;

    const-string v1, "MANUAL"

    const-class v2, Lcom/ebay/mobile/verticals/viewitem/ViewItemChooseAddonActivity;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/ebay/mobile/AddOnItem$AddOnType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/ebay/mobile/AddOnItem$AddOnType;->MANUAL:Lcom/ebay/mobile/AddOnItem$AddOnType;

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [Lcom/ebay/mobile/AddOnItem$AddOnType;

    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->INSTALLATION:Lcom/ebay/mobile/AddOnItem$AddOnType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->WARRANTY:Lcom/ebay/mobile/AddOnItem$AddOnType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->SUPPORT:Lcom/ebay/mobile/AddOnItem$AddOnType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->MANUAL:Lcom/ebay/mobile/AddOnItem$AddOnType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ebay/mobile/AddOnItem$AddOnType;->$VALUES:[Lcom/ebay/mobile/AddOnItem$AddOnType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/ebay/mobile/AddOnItem$AddOnType;->destination:Ljava/lang/Class;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/ebay/mobile/AddOnItem$AddOnType;
    .locals 5

    .line 50
    invoke-static {}, Lcom/ebay/mobile/AddOnItem$AddOnType;->values()[Lcom/ebay/mobile/AddOnItem$AddOnType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 52
    invoke-virtual {v3}, Lcom/ebay/mobile/AddOnItem$AddOnType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/AddOnItem$AddOnType;
    .locals 1

    .line 32
    const-class v0, Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/AddOnItem$AddOnType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/AddOnItem$AddOnType;
    .locals 1

    .line 32
    sget-object v0, Lcom/ebay/mobile/AddOnItem$AddOnType;->$VALUES:[Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {v0}, [Lcom/ebay/mobile/AddOnItem$AddOnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/AddOnItem$AddOnType;

    return-object v0
.end method
