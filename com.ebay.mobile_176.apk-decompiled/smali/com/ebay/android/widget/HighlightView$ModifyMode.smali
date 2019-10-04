.class final enum Lcom/ebay/android/widget/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/android/widget/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/android/widget/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/android/widget/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/ebay/android/widget/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/ebay/android/widget/HighlightView$ModifyMode;

.field public static final enum None:Lcom/ebay/android/widget/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 337
    new-instance v0, Lcom/ebay/android/widget/HighlightView$ModifyMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/android/widget/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/android/widget/HighlightView$ModifyMode;->None:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    new-instance v0, Lcom/ebay/android/widget/HighlightView$ModifyMode;

    const-string v1, "Move"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/android/widget/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/android/widget/HighlightView$ModifyMode;->Move:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    new-instance v0, Lcom/ebay/android/widget/HighlightView$ModifyMode;

    const-string v1, "Grow"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/android/widget/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/android/widget/HighlightView$ModifyMode;->Grow:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    const/4 v0, 0x3

    .line 335
    new-array v0, v0, [Lcom/ebay/android/widget/HighlightView$ModifyMode;

    sget-object v1, Lcom/ebay/android/widget/HighlightView$ModifyMode;->None:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/android/widget/HighlightView$ModifyMode;->Move:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/android/widget/HighlightView$ModifyMode;->Grow:Lcom/ebay/android/widget/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ebay/android/widget/HighlightView$ModifyMode;->$VALUES:[Lcom/ebay/android/widget/HighlightView$ModifyMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/android/widget/HighlightView$ModifyMode;
    .locals 1

    .line 335
    const-class v0, Lcom/ebay/android/widget/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/android/widget/HighlightView$ModifyMode;

    return-object p0
.end method

.method public static values()[Lcom/ebay/android/widget/HighlightView$ModifyMode;
    .locals 1

    .line 335
    sget-object v0, Lcom/ebay/android/widget/HighlightView$ModifyMode;->$VALUES:[Lcom/ebay/android/widget/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/ebay/android/widget/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/android/widget/HighlightView$ModifyMode;

    return-object v0
.end method
