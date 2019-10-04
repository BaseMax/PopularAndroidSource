.class public final enum Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

.field public static final enum COLLAPSED:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

.field public static final enum EXPANDED:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 268
    new-instance v0, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    const/16 v1, 0x37b

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;->EXPANDED:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    new-instance v0, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    const/16 v1, 0x37c

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;->COLLAPSED:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    const/4 v0, 0x2

    .line 267
    new-array v0, v0, [Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    sget-object v1, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;->EXPANDED:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;->COLLAPSED:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;->$VALUES:[Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;
    .locals 1

    .line 267
    const-class v0, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;
    .locals 1

    .line 267
    sget-object v0, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;->$VALUES:[Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView$a;

    return-object v0
.end method
