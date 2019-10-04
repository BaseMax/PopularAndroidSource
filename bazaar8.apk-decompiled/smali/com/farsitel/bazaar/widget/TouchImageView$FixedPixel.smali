.class public final enum Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;
.super Ljava/lang/Enum;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FixedPixel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_RIGHT:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

.field public static final enum CENTER:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

.field public static final enum TOP_LEFT:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

.field public static final synthetic a:[Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    const/4 v1, 0x0

    const-string v2, "CENTER"

    invoke-direct {v0, v2, v1}, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->CENTER:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    const/4 v2, 0x1

    const-string v3, "TOP_LEFT"

    invoke-direct {v0, v3, v2}, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->TOP_LEFT:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    const/4 v3, 0x2

    const-string v4, "BOTTOM_RIGHT"

    invoke-direct {v0, v4, v3}, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->BOTTOM_RIGHT:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    sget-object v4, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->CENTER:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    aput-object v4, v0, v1

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->TOP_LEFT:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->BOTTOM_RIGHT:Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->a:[Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;
    .locals 1

    .line 1
    const-class v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;
    .locals 1

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->a:[Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/widget/TouchImageView$FixedPixel;

    return-object v0
.end method
