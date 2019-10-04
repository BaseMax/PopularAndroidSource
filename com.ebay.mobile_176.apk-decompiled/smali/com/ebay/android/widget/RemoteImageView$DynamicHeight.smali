.class public final enum Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;
.super Ljava/lang/Enum;
.source "RemoteImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/android/widget/RemoteImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DynamicHeight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

.field public static final enum ADJUST_WIDTH:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

.field public static final enum DISABLED:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

.field public static final enum FOUR_BY_THREE:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

.field public static final enum SQUARE:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 722
    new-instance v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->DISABLED:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    .line 723
    new-instance v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    const-string v1, "SQUARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->SQUARE:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    .line 724
    new-instance v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    const-string v1, "FOUR_BY_THREE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->FOUR_BY_THREE:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    .line 725
    new-instance v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    const-string v1, "ADJUST_WIDTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->ADJUST_WIDTH:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    const/4 v0, 0x4

    .line 720
    new-array v0, v0, [Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    sget-object v1, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->DISABLED:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->SQUARE:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->FOUR_BY_THREE:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->ADJUST_WIDTH:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->$VALUES:[Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 720
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;
    .locals 1

    .line 720
    const-class v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    return-object p0
.end method

.method public static values()[Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;
    .locals 1

    .line 720
    sget-object v0, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->$VALUES:[Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    invoke-virtual {v0}, [Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    return-object v0
.end method
