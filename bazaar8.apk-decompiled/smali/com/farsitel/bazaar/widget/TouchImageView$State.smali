.class public final enum Lcom/farsitel/bazaar/widget/TouchImageView$State;
.super Ljava/lang/Enum;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/widget/TouchImageView$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANIMATE_ZOOM:Lcom/farsitel/bazaar/widget/TouchImageView$State;

.field public static final enum DRAG:Lcom/farsitel/bazaar/widget/TouchImageView$State;

.field public static final enum FLING:Lcom/farsitel/bazaar/widget/TouchImageView$State;

.field public static final enum NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

.field public static final enum ZOOM:Lcom/farsitel/bazaar/widget/TouchImageView$State;

.field public static final synthetic a:[Lcom/farsitel/bazaar/widget/TouchImageView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/farsitel/bazaar/widget/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;

    const/4 v2, 0x1

    const-string v3, "DRAG"

    invoke-direct {v0, v3, v2}, Lcom/farsitel/bazaar/widget/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->DRAG:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;

    const/4 v3, 0x2

    const-string v4, "ZOOM"

    invoke-direct {v0, v4, v3}, Lcom/farsitel/bazaar/widget/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->ZOOM:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;

    const/4 v4, 0x3

    const-string v5, "FLING"

    invoke-direct {v0, v5, v4}, Lcom/farsitel/bazaar/widget/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->FLING:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    new-instance v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;

    const/4 v5, 0x4

    const-string v6, "ANIMATE_ZOOM"

    invoke-direct {v0, v6, v5}, Lcom/farsitel/bazaar/widget/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->ANIMATE_ZOOM:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/farsitel/bazaar/widget/TouchImageView$State;

    sget-object v6, Lcom/farsitel/bazaar/widget/TouchImageView$State;->NONE:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    aput-object v6, v0, v1

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$State;->DRAG:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$State;->ZOOM:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$State;->FLING:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/farsitel/bazaar/widget/TouchImageView$State;->ANIMATE_ZOOM:Lcom/farsitel/bazaar/widget/TouchImageView$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->a:[Lcom/farsitel/bazaar/widget/TouchImageView$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/widget/TouchImageView$State;
    .locals 1

    .line 1
    const-class v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/widget/TouchImageView$State;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/widget/TouchImageView$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/widget/TouchImageView$State;->a:[Lcom/farsitel/bazaar/widget/TouchImageView$State;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/widget/TouchImageView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/widget/TouchImageView$State;

    return-object v0
.end method
